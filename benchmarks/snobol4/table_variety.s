                        .intel_syntax    noprefix
                        .text
                        .file            1 "table_variety.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 10
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
.Lgvan0:                .string          "TABLE_VARIETY"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZI"
.Lgvan3:                .string          "ZS"
.Lgvan4:                .string          "tab"
.Lgvan5:                .string          "ix"
.Lgvan6:                .string          "sx"
.Lgvan7:                .string          "rx"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "TABLE_VARIETY"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "INTFILL"
.Llbln3:                .string          "STRFILL"
.Llbln4:                .string          "REALFIL"
.Llbln5:                .string          "INTREAD"
.Llbln6:                .string          "STRREAD"
.Llbln7:                .string          "REALRD"
.Llbln8:                .string          "TABLE_VARIETY_END"
.Llbln9:                .string          "END"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 3512], rax
                        mov              dword ptr [rsp + 3504], 160
                        mov              dword ptr [rsp + 3508], 3520
                        mov              eax, 0
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_371_0:  .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_372_0:  .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_373_0:   .quad            .Llit_string_α_373_0_s
.Llit_string_α_373_0_s: .string          "table_variety.sno"
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
.Lcall_α_rkfnzd375:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd375]
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
                        cmp              al, 104;                             jne   .Lcall_α_374_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_374_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              qword ptr [rax + 0], 13
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_380_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_kw_assign_snobol4_α
.Llit_integer_α_380_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_kw_assign_snobol4_bx, @function
n7_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_381_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_381_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lkw_assign_snobol4_α_381_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:29
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n8_statement_end_α
.Lkw_assign_snobol4_α_381_0:
                        .quad            1
                        .size            n7_kw_assign_snobol4_bx, .-n7_kw_assign_snobol4_bx
                        .type            n8_statement_end_bx, @function
n8_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        add              rsp, 32;                             jmp   n9_stmt_mark_α
                        .size            n8_statement_end_bx, .-n8_statement_end_bx
                        .type            n9_stmt_mark_bx, @function
n9_stmt_mark_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n9_stmt_mark_α:         mov              r11, 10
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n10_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_kw_assign_snobol4_α
.Llit_integer_α_388_0:  .quad            0
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_kw_assign_snobol4_bx, @function
n12_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_389_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_389_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lkw_assign_snobol4_α_389_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:29
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n13_statement_end_α
.Lkw_assign_snobol4_α_389_0:
                        .quad            0
                        .size            n12_kw_assign_snobol4_bx, .-n12_kw_assign_snobol4_bx
                        .type            n13_statement_end_bx, @function
n13_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        add              rsp, 32;                             jmp   n14_stmt_mark_α
                        .size            n13_statement_end_bx, .-n13_statement_end_bx
                        .type            n14_stmt_mark_bx, @function
n14_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('TABLE_VARIETY(N)')                      :(TABLE_VARIETY_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n14_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n15_statement_begin_α
                        .size            n14_stmt_mark_bx, .-n14_stmt_mark_bx
                        .type            n15_statement_begin_bx, @function
n15_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16;                             jmp   n16_define_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n18_stmt_mark_α
                        .size            n15_statement_begin_bx, .-n15_statement_begin_bx
                        .type            n16_define_bx, @function
n16_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_define_α:           mov              r11, 17
                        mov              rdi, qword ptr [rip + .Ldefine_α_397_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_397_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__TABLE_VARIETY]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_define.cpp:429
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_397_0]
                        lea              rsi, [rip + TABLE_VARIETY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .data
                        .align           8
entry_cell$TABLE_VARIETY:
                        .quad            LBL__TABLE_VARIETY
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__TABLE_VARIETY]
                        mov              rcx, qword ptr [rip + entry_cell$TABLE_VARIETY@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n17_statement_end_α
n16_define_β:           mov              r11, 17;                             jmp   n15_statement_begin_β
.Ldefine_α_397_0:       .quad            .Ldefine_α_397_0_s
.Ldefine_α_397_0_s:     .string          "TABLE_VARIETY"
.Ldefine_α_397_1:       .quad            .Ldefine_α_397_1_s
.Ldefine_α_397_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_398_245
#-----------------------------------------------------------------------------------------------------------------------
TABLE_VARIETY_α:        sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # TABLE_VARIETY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_398_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_398_41
.Ldefine_α_398_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_398_41:      push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx;                                 jmp   .Ldefine_α_398_231
.Ldefine_α_398_232:     .quad            .Ldefine_α_398_232_s
.Ldefine_α_398_232_s:   .string          "TABLE_VARIETY"
.Ldefine_α_398_231:     lea              rcx, [rip + TABLE_VARIETY_γ]
                        lea              rax, [rip + TABLE_VARIETY_ω]
                        push             rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rip + entry_cell$TABLE_VARIETY@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
TABLE_VARIETY_γ:        mov              rdi, qword ptr [r9 + 0]              # TABLE_VARIETY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_398_236
.Ldefine_α_398_237:     .quad            .Ldefine_α_398_237_s
.Ldefine_α_398_237_s:   .string          "TABLE_VARIETY"
.Ldefine_α_398_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_398_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_398_110
.Ldefine_α_398_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_398_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
TABLE_VARIETY_ω:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_398_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_398_180
.Ldefine_α_398_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_398_180:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_398_245:
                        .size            n16_define_bx, .-n16_define_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18;                             jmp   n18_stmt_mark_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_stmt_mark_bx, @function
n18_stmt_mark_bx:
#=======================================================================================================================
# TABLE_VARIETY_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
n18_stmt_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n321_statement_begin_α
                        .size            n18_stmt_mark_bx, .-n18_stmt_mark_bx
                        .type            n19_statement_begin_bx, @function
n19_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 20;                             jmp   n20_lit_integer_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n23_stmt_mark_α
                        .size            n19_statement_begin_bx, .-n19_statement_begin_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_405_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Llit_integer_α_405_0:  .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZI
                        mov              qword ptr [r9 + 40], rdx;            jmp   n22_statement_end_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_statement_end_bx, @function
n22_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        add              rsp, 16;                             jmp   n23_stmt_mark_α
                        .size            n22_statement_end_bx, .-n22_statement_end_bx
                        .type            n23_stmt_mark_bx, @function
n23_stmt_mark_bx:
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n23_stmt_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n24_statement_begin_α
                        .size            n23_stmt_mark_bx, .-n23_stmt_mark_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:  mov              r11, 25;                             jmp   n25_lit_integer_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n28_stmt_mark_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Llit_integer_α_413_0:  .quad            0
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n27_statement_end_α
                        .size            n26_assign_bx, .-n26_assign_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        add              rsp, 16;                             jmp   n28_stmt_mark_α
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_stmt_mark_bx, @function
n28_stmt_mark_bx:
#=======================================================================================================================
# ZBL     tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n28_stmt_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n29_statement_begin_α
                        .size            n28_stmt_mark_bx, .-n28_stmt_mark_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30;                             jmp   n30_lit_integer_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n34_stmt_mark_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_421_0:  .quad            64
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_call_bx, @function
n31_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        mov              r11, 32
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd423:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd423]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376900
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_bid_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_422_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lcall_α_422_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n32_assign_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # tab
                        mov              qword ptr [r9 + 72], rdx;            jmp   n33_statement_end_α
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_statement_end_bx, @function
n33_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        add              rsp, 32;                             jmp   n34_stmt_mark_α
                        .size            n33_statement_end_bx, .-n33_statement_end_bx
                        .type            n34_stmt_mark_bx, @function
n34_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n34_stmt_mark_α:        mov              r11, 35
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n35_statement_begin_α
                        .size            n34_stmt_mark_bx, .-n34_stmt_mark_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 36;                             jmp   n36_lit_integer_α
n35_statement_begin_β:  mov              r11, 36;                             jmp   n40_stmt_mark_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_unop_α
.Llit_integer_α_431_0:  .quad            30
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_unop_bx, @function
n37_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_unop_α:             sub              rsp, 16
                        mov              r11, 38
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
1:                                                                            jmp   n38_assign_α
n37_unop_β:             mov              r11, 38
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
                        .size            n37_unop_bx, .-n37_unop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
                        mov              qword ptr [r9 + 88], rdx;            jmp   n39_statement_end_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_statement_end_bx, @function
n39_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        add              rsp, 32;                             jmp   n40_stmt_mark_α
                        .size            n39_statement_end_bx, .-n39_statement_end_bx
                        .type            n40_stmt_mark_bx, @function
n40_stmt_mark_bx:
#=======================================================================================================================
# INTFILL tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n40_stmt_mark_α:        mov              r11, 41
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n41_statement_begin_α
                        .size            n40_stmt_mark_bx, .-n40_stmt_mark_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42;                             jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n49_stmt_mark_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
n43_var_β:              mov              r11, 44
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_var_bx, @function
n44_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_lit_integer_α
n44_var_β:              mov              r11, 45
                        add              rsp, 16;                             jmp   n43_var_β
                        .size            n44_var_bx, .-n44_var_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_443_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_binop_α
n45_lit_integer_β:      mov              r11, 46
                        add              rsp, 16;                             jmp   n44_var_β
.Llit_integer_α_443_0:  .quad            3
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_binop_bx, @function
n46_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
                        mov              r11, 47
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_444_2
                        mov              rdx, 3
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_444_7
.Lbinop_α_444_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_444_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_444_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_444_4
.Lbinop_α_444_3:        movq             xmm0, rsi
.Lbinop_α_444_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_444_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_444_7:                                                              jmp   n47_assign_var_α
.Lbinop_α_444_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_444_240
                        add              rsp, 16;                             jmp   n45_lit_integer_β
.Lbinop_α_444_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n47_assign_var_α
n46_binop_β:            mov              r11, 47
                        add              rsp, 16;                             jmp   n45_lit_integer_β
                        .size            n46_binop_bx, .-n46_binop_bx
                        .type            n47_assign_var_bx, @function
n47_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_var_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_446_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_446_0
.Lassign_var_α_446_1:   test             rsi, rsi;                            je    .Lassign_var_α_446_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_446_238
                        add              rsp, 16;                             jmp   n46_binop_β
.Lassign_var_α_446_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n48_statement_end_α
.Lassign_var_α_446_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_446_239
                        add              rsp, 16;                             jmp   n46_binop_β
.Lassign_var_α_446_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_446_240
                        add              rsp, 16;                             jmp   n46_binop_β
.Lassign_var_α_446_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n48_statement_end_α
                        .size            n47_assign_var_bx, .-n47_assign_var_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        add              rsp, 96;                             jmp   n49_stmt_mark_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_stmt_mark_bx, @function
n49_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n49_stmt_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22;             jmp   n50_statement_begin_α
                        .size            n49_stmt_mark_bx, .-n49_stmt_mark_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51;                             jmp   n51_var_α
n50_statement_begin_β:  mov              r11, 51;                             jmp   n61_stmt_mark_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_lit_integer_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_454_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_coerce_numeric_α
n52_lit_integer_β:      mov              r11, 53
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Llit_integer_α_454_0:  .quad            30
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_coerce_numeric_bx, @function
n53_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 54
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_456_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_456_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_456_0
.Lcoerce_numeric_α_456_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_coerce_numeric_α
.Lcoerce_numeric_α_456_0:
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
1:                                                                            jmp   n54_coerce_numeric_α
n53_coerce_numeric_β:   mov              r11, 54
                        add              rsp, 16;                             jmp   n52_lit_integer_β
                        .size            n53_coerce_numeric_bx, .-n53_coerce_numeric_bx
                        .type            n54_coerce_numeric_bx, @function
n54_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 55
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_458_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_458_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_458_0
.Lcoerce_numeric_α_458_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_cmp_test_α
.Lcoerce_numeric_α_458_0:
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
1:                                                                            jmp   n55_cmp_test_α
n54_coerce_numeric_β:   mov              r11, 55
                        add              rsp, 16;                             jmp   n53_coerce_numeric_β
                        .size            n54_coerce_numeric_bx, .-n54_coerce_numeric_bx
                        .type            n55_cmp_test_bx, @function
n55_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_cmp_test_α:         sub              rsp, 16
                        mov              r11, 56
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_460_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_460_239
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lcmp_test_α_460_239:                                                         jmp   n56_var_α
.Lcmp_test_α_460_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_460_240
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lcmp_test_α_460_240:                                                         jmp   n56_var_α
n55_cmp_test_β:         mov              r11, 56
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
                        .size            n55_cmp_test_bx, .-n55_cmp_test_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_integer_α
n56_var_β:              mov              r11, 57
                        add              rsp, 16;                             jmp   n55_cmp_test_β
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_462_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_binop_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16;                             jmp   n56_var_β
.Llit_integer_α_462_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              r11, 59
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_463_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_463_7
.Lbinop_α_463_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_463_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_463_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_463_4
.Lbinop_α_463_3:        movq             xmm0, rsi
.Lbinop_α_463_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_463_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_463_7:                                                              jmp   n59_assign_α
.Lbinop_α_463_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_463_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lbinop_α_463_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n59_assign_α
n58_binop_β:            mov              r11, 59
                        add              rsp, 16;                             jmp   n57_lit_integer_β
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
                        mov              qword ptr [r9 + 88], rdx;            jmp   n60_statement_end_α
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        add              rsp, 128;                            jmp   n40_stmt_mark_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_stmt_mark_bx, @function
n61_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n61_stmt_mark_α:        mov              r11, 62
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24;             jmp   n62_statement_begin_α
                        .size            n61_stmt_mark_bx, .-n61_stmt_mark_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63;                             jmp   n63_lit_integer_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   n66_stmt_mark_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_assign_α
.Llit_integer_α_471_0:  .quad            1
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
                        mov              qword ptr [r9 + 104], rdx;           jmp   n65_statement_end_α
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_statement_end_bx, @function
n65_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        add              rsp, 16;                             jmp   n66_stmt_mark_α
                        .size            n65_statement_end_bx, .-n65_statement_end_bx
                        .type            n66_stmt_mark_bx, @function
n66_stmt_mark_bx:
#=======================================================================================================================
# STRFILL tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n66_stmt_mark_α:        mov              r11, 67
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25;             jmp   n67_statement_begin_α
                        .size            n66_stmt_mark_bx, .-n66_stmt_mark_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 68;                             jmp   n68_var_α
n67_statement_begin_β:  mov              r11, 68;                             jmp   n77_stmt_mark_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_lit_string_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_lit_string_bx, @function
n69_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_480_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_var_α
n69_lit_string_β:       mov              r11, 70
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
.Llit_string_α_480_0:   .quad            .Llit_string_α_480_0_s
.Llit_string_α_480_0_s: .string          "k"
                        .size            n69_lit_string_bx, .-n69_lit_string_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_binop_α
n70_var_β:              mov              r11, 71
                        add              rsp, 16;                             jmp   n69_lit_string_β
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              r11, 72
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
1:                                                                            jmp   n72_var_α
n71_binop_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n70_var_β
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_lit_integer_α
n72_var_β:              mov              r11, 73
                        add              rsp, 16;                             jmp   n71_binop_β
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_lit_integer_bx, @function
n73_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_484_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_binop_α
n73_lit_integer_β:      mov              r11, 74
                        add              rsp, 16;                             jmp   n72_var_β
.Llit_integer_α_484_0:  .quad            5
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_binop_bx, @function
n74_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 75
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_485_2
                        mov              rdx, 5
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_485_7
.Lbinop_α_485_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_485_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_485_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_485_4
.Lbinop_α_485_3:        movq             xmm0, rsi
.Lbinop_α_485_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_485_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_485_7:                                                              jmp   n75_assign_var_α
.Lbinop_α_485_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_485_240
                        add              rsp, 16;                             jmp   n73_lit_integer_β
.Lbinop_α_485_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n75_assign_var_α
n74_binop_β:            mov              r11, 75
                        add              rsp, 16;                             jmp   n73_lit_integer_β
                        .size            n74_binop_bx, .-n74_binop_bx
                        .type            n75_assign_var_bx, @function
n75_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_var_α:       sub              rsp, 16
                        mov              r11, 76
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_487_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_487_0
.Lassign_var_α_487_1:   test             rsi, rsi;                            je    .Lassign_var_α_487_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_487_238
                        add              rsp, 16;                             jmp   n74_binop_β
.Lassign_var_α_487_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n76_statement_end_α
.Lassign_var_α_487_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_487_239
                        add              rsp, 16;                             jmp   n74_binop_β
.Lassign_var_α_487_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_487_240
                        add              rsp, 16;                             jmp   n74_binop_β
.Lassign_var_α_487_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n76_statement_end_α
                        .size            n75_assign_var_bx, .-n75_assign_var_bx
                        .type            n76_statement_end_bx, @function
n76_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 77
                        add              rsp, 128;                            jmp   n77_stmt_mark_α
                        .size            n76_statement_end_bx, .-n76_statement_end_bx
                        .type            n77_stmt_mark_bx, @function
n77_stmt_mark_bx:
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n77_stmt_mark_α:        mov              r11, 78
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26;             jmp   n78_statement_begin_α
                        .size            n77_stmt_mark_bx, .-n77_stmt_mark_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 79;                             jmp   n79_var_α
n78_statement_begin_β:  mov              r11, 79;                             jmp   n88_stmt_mark_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_string_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_lit_string_bx, @function
n80_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_var_α
n80_lit_string_β:       mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Llit_string_α_495_0:   .quad            .Llit_string_α_495_0_s
.Llit_string_α_495_0_s: .string          "a_much_longer_key_"
                        .size            n80_lit_string_bx, .-n80_lit_string_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_binop_α
n81_var_β:              mov              r11, 82
                        add              rsp, 16;                             jmp   n80_lit_string_β
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_binop_bx, @function
n82_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:            sub              rsp, 16
                        mov              r11, 83
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
1:                                                                            jmp   n83_var_α
n82_binop_β:            mov              r11, 83
                        add              rsp, 16;                             jmp   n81_var_β
                        .size            n82_binop_bx, .-n82_binop_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_lit_integer_α
n83_var_β:              mov              r11, 84
                        add              rsp, 16;                             jmp   n82_binop_β
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_499_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_binop_α
n84_lit_integer_β:      mov              r11, 85
                        add              rsp, 16;                             jmp   n83_var_β
.Llit_integer_α_499_0:  .quad            7
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              r11, 86
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_500_2
                        mov              rdx, 7
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_500_7
.Lbinop_α_500_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_500_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_500_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_500_4
.Lbinop_α_500_3:        movq             xmm0, rsi
.Lbinop_α_500_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_500_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_500_7:                                                              jmp   n86_assign_var_α
.Lbinop_α_500_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_500_240
                        add              rsp, 16;                             jmp   n84_lit_integer_β
.Lbinop_α_500_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n86_assign_var_α
n85_binop_β:            mov              r11, 86
                        add              rsp, 16;                             jmp   n84_lit_integer_β
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_assign_var_bx, @function
n86_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_var_α:       sub              rsp, 16
                        mov              r11, 87
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_502_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_502_0
.Lassign_var_α_502_1:   test             rsi, rsi;                            je    .Lassign_var_α_502_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_502_238
                        add              rsp, 16;                             jmp   n85_binop_β
.Lassign_var_α_502_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n87_statement_end_α
.Lassign_var_α_502_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_502_239
                        add              rsp, 16;                             jmp   n85_binop_β
.Lassign_var_α_502_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_502_240
                        add              rsp, 16;                             jmp   n85_binop_β
.Lassign_var_α_502_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n87_statement_end_α
                        .size            n86_assign_var_bx, .-n86_assign_var_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88
                        add              rsp, 128;                            jmp   n88_stmt_mark_α
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_stmt_mark_bx, @function
n88_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n88_stmt_mark_α:        mov              r11, 89
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 27;             jmp   n89_statement_begin_α
                        .size            n88_stmt_mark_bx, .-n88_stmt_mark_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90;                             jmp   n90_var_α
n89_statement_begin_β:  mov              r11, 90;                             jmp   n100_stmt_mark_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_lit_integer_α
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_coerce_numeric_α
n91_lit_integer_β:      mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Llit_integer_α_510_0:  .quad            20
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_coerce_numeric_bx, @function
n92_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 93
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_512_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_512_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_512_0
.Lcoerce_numeric_α_512_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_coerce_numeric_α
.Lcoerce_numeric_α_512_0:
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
1:                                                                            jmp   n93_coerce_numeric_α
n92_coerce_numeric_β:   mov              r11, 93
                        add              rsp, 16;                             jmp   n91_lit_integer_β
                        .size            n92_coerce_numeric_bx, .-n92_coerce_numeric_bx
                        .type            n93_coerce_numeric_bx, @function
n93_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 94
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_514_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_514_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_514_0
.Lcoerce_numeric_α_514_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_cmp_test_α
.Lcoerce_numeric_α_514_0:
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
1:                                                                            jmp   n94_cmp_test_α
n93_coerce_numeric_β:   mov              r11, 94
                        add              rsp, 16;                             jmp   n92_coerce_numeric_β
                        .size            n93_coerce_numeric_bx, .-n93_coerce_numeric_bx
                        .type            n94_cmp_test_bx, @function
n94_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_cmp_test_α:         sub              rsp, 16
                        mov              r11, 95
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_516_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_516_239
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lcmp_test_α_516_239:                                                         jmp   n95_var_α
.Lcmp_test_α_516_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_516_240
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lcmp_test_α_516_240:                                                         jmp   n95_var_α
n94_cmp_test_β:         mov              r11, 95
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
                        .size            n94_cmp_test_bx, .-n94_cmp_test_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_lit_integer_α
n95_var_β:              mov              r11, 96
                        add              rsp, 16;                             jmp   n94_cmp_test_β
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_518_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_binop_α
n96_lit_integer_β:      mov              r11, 97
                        add              rsp, 16;                             jmp   n95_var_β
.Llit_integer_α_518_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              r11, 98
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_519_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_519_7
.Lbinop_α_519_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_519_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_519_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_519_4
.Lbinop_α_519_3:        movq             xmm0, rsi
.Lbinop_α_519_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_519_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_519_7:                                                              jmp   n98_assign_α
.Lbinop_α_519_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_519_240
                        add              rsp, 16;                             jmp   n96_lit_integer_β
.Lbinop_α_519_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n98_assign_α
n97_binop_β:            mov              r11, 98
                        add              rsp, 16;                             jmp   n96_lit_integer_β
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_assign_bx, @function
n98_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
                        mov              qword ptr [r9 + 104], rdx;           jmp   n99_statement_end_α
                        .size            n98_assign_bx, .-n98_assign_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        add              rsp, 128;                            jmp   n66_stmt_mark_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_stmt_mark_bx, @function
n100_stmt_mark_bx:
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n100_stmt_mark_α:       mov              r11, 101
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 28;             jmp   n101_statement_begin_α
                        .size            n100_stmt_mark_bx, .-n100_stmt_mark_bx
                        .type            n101_statement_begin_bx, @function
n101_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 102;                            jmp   n102_var_α
n101_statement_begin_β: mov              r11, 102;                            jmp   n107_stmt_mark_α
                        .size            n101_statement_begin_bx, .-n101_statement_begin_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_lit_string_α
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_528_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_lit_integer_α
n103_lit_string_β:      mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Llit_string_α_528_0:   .quad            .Llit_string_α_528_0_s
.Llit_string_α_528_0_s: .string          "17"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_lit_integer_bx, @function
n104_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_529_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_assign_var_α
n104_lit_integer_β:     mov              r11, 105
                        add              rsp, 16;                             jmp   n103_lit_string_β
.Llit_integer_α_529_0:  .quad            1700
                        .size            n104_lit_integer_bx, .-n104_lit_integer_bx
                        .type            n105_assign_var_bx, @function
n105_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_var_α:      sub              rsp, 16
                        mov              r11, 106
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_531_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_531_0
.Lassign_var_α_531_1:   test             rsi, rsi;                            je    .Lassign_var_α_531_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_531_238
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lassign_var_α_531_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n106_statement_end_α
.Lassign_var_α_531_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_531_239
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lassign_var_α_531_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_531_240
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lassign_var_α_531_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n106_statement_end_α
                        .size            n105_assign_var_bx, .-n105_assign_var_bx
                        .type            n106_statement_end_bx, @function
n106_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 107
                        add              rsp, 64;                             jmp   n107_stmt_mark_α
                        .size            n106_statement_end_bx, .-n106_statement_end_bx
                        .type            n107_stmt_mark_bx, @function
n107_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n107_stmt_mark_α:       mov              r11, 108
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 30;             jmp   n108_statement_begin_α
                        .size            n107_stmt_mark_bx, .-n107_stmt_mark_bx
                        .type            n108_statement_begin_bx, @function
n108_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 109;                            jmp   n109_lit_integer_α
n108_statement_begin_β: mov              r11, 109;                            jmp   n112_stmt_mark_α
                        .size            n108_statement_begin_bx, .-n108_statement_begin_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_538_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_assign_α
.Llit_integer_α_538_0:  .quad            1
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_assign_bx, @function
n110_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
                        mov              qword ptr [r9 + 120], rdx;           jmp   n111_statement_end_α
                        .size            n110_assign_bx, .-n110_assign_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 112
                        add              rsp, 16;                             jmp   n112_stmt_mark_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_stmt_mark_bx, @function
n112_stmt_mark_bx:
#=======================================================================================================================
# REALFIL tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n112_stmt_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 31;             jmp   n113_statement_begin_α
                        .size            n112_stmt_mark_bx, .-n112_stmt_mark_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α: mov              r11, 114;                            jmp   n114_var_α
n113_statement_begin_β: mov              r11, 114;                            jmp   n123_stmt_mark_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_var_α
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_lit_real_α
n115_var_β:             mov              r11, 116
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_lit_real_bx, @function
n116_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_real_α:        sub              rsp, 16
                        mov              r11, 117
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_binop_α
.Llit_real_α_548_0:     .quad            4611686018427387904
                        .size            n116_lit_real_bx, .-n116_lit_real_bx
                        .type            n117_binop_bx, @function
n117_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:           sub              rsp, 16
                        mov              r11, 118
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
                        cmp              al, 104;                             jne   .Lbinop_α_549_240
                        add              rsp, 32;                             jmp   n115_var_β
.Lbinop_α_549_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n118_var_α
n117_binop_β:           mov              r11, 118
                        add              rsp, 32;                             jmp   n115_var_β
                        .size            n117_binop_bx, .-n117_binop_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
n118_var_β:             mov              r11, 119
                        add              rsp, 16;                             jmp   n117_binop_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_551_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_integer_β:     mov              r11, 120
                        add              rsp, 16;                             jmp   n118_var_β
.Llit_integer_α_551_0:  .quad            11
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_binop_bx, @function
n120_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              r11, 121
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_552_2
                        mov              rdx, 11
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_552_7
.Lbinop_α_552_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_552_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_552_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_552_4
.Lbinop_α_552_3:        movq             xmm0, rsi
.Lbinop_α_552_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_552_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_552_7:                                                              jmp   n121_assign_var_α
.Lbinop_α_552_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_552_240
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lbinop_α_552_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n121_assign_var_α
n120_binop_β:           mov              r11, 121
                        add              rsp, 16;                             jmp   n119_lit_integer_β
                        .size            n120_binop_bx, .-n120_binop_bx
                        .type            n121_assign_var_bx, @function
n121_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_var_α:      sub              rsp, 16
                        mov              r11, 122
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_554_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_554_0
.Lassign_var_α_554_1:   test             rsi, rsi;                            je    .Lassign_var_α_554_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_554_238
                        add              rsp, 16;                             jmp   n120_binop_β
.Lassign_var_α_554_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n122_statement_end_α
.Lassign_var_α_554_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_554_239
                        add              rsp, 16;                             jmp   n120_binop_β
.Lassign_var_α_554_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_554_240
                        add              rsp, 16;                             jmp   n120_binop_β
.Lassign_var_α_554_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n122_statement_end_α
                        .size            n121_assign_var_bx, .-n121_assign_var_bx
                        .type            n122_statement_end_bx, @function
n122_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 123
                        add              rsp, 128;                            jmp   n123_stmt_mark_α
                        .size            n122_statement_end_bx, .-n122_statement_end_bx
                        .type            n123_stmt_mark_bx, @function
n123_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALFIL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n123_stmt_mark_α:       mov              r11, 124
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 32;             jmp   n124_statement_begin_α
                        .size            n123_stmt_mark_bx, .-n123_stmt_mark_bx
                        .type            n124_statement_begin_bx, @function
n124_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α: mov              r11, 125;                            jmp   n125_var_α
n124_statement_begin_β: mov              r11, 125;                            jmp   n135_stmt_mark_α
                        .size            n124_statement_begin_bx, .-n124_statement_begin_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_lit_integer_α
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_coerce_numeric_α
n126_lit_integer_β:     mov              r11, 127
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n124_statement_begin_β
.Llit_integer_α_562_0:  .quad            12
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_coerce_numeric_bx, @function
n127_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 128
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_564_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_564_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_564_0
.Lcoerce_numeric_α_564_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_coerce_numeric_α
.Lcoerce_numeric_α_564_0:
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
1:                                                                            jmp   n128_coerce_numeric_α
n127_coerce_numeric_β:  mov              r11, 128
                        add              rsp, 16;                             jmp   n126_lit_integer_β
                        .size            n127_coerce_numeric_bx, .-n127_coerce_numeric_bx
                        .type            n128_coerce_numeric_bx, @function
n128_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 129
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_566_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_566_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_566_0
.Lcoerce_numeric_α_566_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_cmp_test_α
.Lcoerce_numeric_α_566_0:
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
1:                                                                            jmp   n129_cmp_test_α
n128_coerce_numeric_β:  mov              r11, 129
                        add              rsp, 16;                             jmp   n127_coerce_numeric_β
                        .size            n128_coerce_numeric_bx, .-n128_coerce_numeric_bx
                        .type            n129_cmp_test_bx, @function
n129_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_cmp_test_α:        sub              rsp, 16
                        mov              r11, 130
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_568_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_568_239
                        add              rsp, 16;                             jmp   n128_coerce_numeric_β
.Lcmp_test_α_568_239:                                                         jmp   n130_var_α
.Lcmp_test_α_568_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_568_240
                        add              rsp, 16;                             jmp   n128_coerce_numeric_β
.Lcmp_test_α_568_240:                                                         jmp   n130_var_α
n129_cmp_test_β:        mov              r11, 130
                        add              rsp, 16;                             jmp   n128_coerce_numeric_β
                        .size            n129_cmp_test_bx, .-n129_cmp_test_bx
                        .type            n130_var_bx, @function
n130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_lit_integer_α
n130_var_β:             mov              r11, 131
                        add              rsp, 16;                             jmp   n129_cmp_test_β
                        .size            n130_var_bx, .-n130_var_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_570_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_binop_α
n131_lit_integer_β:     mov              r11, 132
                        add              rsp, 16;                             jmp   n130_var_β
.Llit_integer_α_570_0:  .quad            1
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_binop_bx, @function
n132_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           sub              rsp, 16
                        mov              r11, 133
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_571_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_571_7
.Lbinop_α_571_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_571_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_571_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_571_4
.Lbinop_α_571_3:        movq             xmm0, rsi
.Lbinop_α_571_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_571_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_571_7:                                                              jmp   n133_assign_α
.Lbinop_α_571_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_571_240
                        add              rsp, 16;                             jmp   n131_lit_integer_β
.Lbinop_α_571_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n133_assign_α
n132_binop_β:           mov              r11, 133
                        add              rsp, 16;                             jmp   n131_lit_integer_β
                        .size            n132_binop_bx, .-n132_binop_bx
                        .type            n133_assign_bx, @function
n133_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
                        mov              qword ptr [r9 + 120], rdx;           jmp   n134_statement_end_α
                        .size            n133_assign_bx, .-n133_assign_bx
                        .type            n134_statement_end_bx, @function
n134_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 135
                        add              rsp, 128;                            jmp   n112_stmt_mark_α
                        .size            n134_statement_end_bx, .-n134_statement_end_bx
                        .type            n135_stmt_mark_bx, @function
n135_stmt_mark_bx:
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n135_stmt_mark_α:       mov              r11, 136
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 33;             jmp   n136_statement_begin_α
                        .size            n135_stmt_mark_bx, .-n135_stmt_mark_bx
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137;                            jmp   n137_var_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n142_stmt_mark_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_lit_string_α
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_580_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_lit_integer_α
n138_lit_string_β:      mov              r11, 139
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
.Llit_string_α_580_0:   .quad            .Llit_string_α_580_0_s
.Llit_string_α_580_0_s: .string          ""
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_581_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_assign_var_α
n139_lit_integer_β:     mov              r11, 140
                        add              rsp, 16;                             jmp   n138_lit_string_β
.Llit_integer_α_581_0:  .quad            99
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_assign_var_bx, @function
n140_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_var_α:      sub              rsp, 16
                        mov              r11, 141
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_583_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_583_0
.Lassign_var_α_583_1:   test             rsi, rsi;                            je    .Lassign_var_α_583_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_583_238
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lassign_var_α_583_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n141_statement_end_α
.Lassign_var_α_583_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_583_239
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lassign_var_α_583_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_583_240
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lassign_var_α_583_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n141_statement_end_α
                        .size            n140_assign_var_bx, .-n140_assign_var_bx
                        .type            n141_statement_end_bx, @function
n141_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 142
                        add              rsp, 64;                             jmp   n142_stmt_mark_α
                        .size            n141_statement_end_bx, .-n141_statement_end_bx
                        .type            n142_stmt_mark_bx, @function
n142_stmt_mark_bx:
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n142_stmt_mark_α:       mov              r11, 143
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36;             jmp   n143_statement_begin_α
                        .size            n142_stmt_mark_bx, .-n142_stmt_mark_bx
                        .type            n143_statement_begin_bx, @function
n143_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 144;                            jmp   n144_var_α
n143_statement_begin_β: mov              r11, 144;                            jmp   n149_stmt_mark_α
                        .size            n143_statement_begin_bx, .-n143_statement_begin_bx
                        .type            n144_var_bx, @function
n144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_lit_integer_α
                        .size            n144_var_bx, .-n144_var_bx
                        .type            n145_lit_integer_bx, @function
n145_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              r11, 146
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
n145_lit_integer_β:     mov              r11, 146
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n143_statement_begin_β
.Llit_integer_α_591_0:  .quad            17
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_592_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_assign_var_α
n146_lit_integer_β:     mov              r11, 147
                        add              rsp, 16;                             jmp   n145_lit_integer_β
.Llit_integer_α_592_0:  .quad            1717
                        .size            n146_lit_integer_bx, .-n146_lit_integer_bx
                        .type            n147_assign_var_bx, @function
n147_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_var_α:      sub              rsp, 16
                        mov              r11, 148
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_594_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_594_0
.Lassign_var_α_594_1:   test             rsi, rsi;                            je    .Lassign_var_α_594_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_594_238
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lassign_var_α_594_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n148_statement_end_α
.Lassign_var_α_594_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_594_239
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lassign_var_α_594_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_594_240
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lassign_var_α_594_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n148_statement_end_α
                        .size            n147_assign_var_bx, .-n147_assign_var_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 149
                        add              rsp, 64;                             jmp   n149_stmt_mark_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_stmt_mark_bx, @function
n149_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n149_stmt_mark_α:       mov              r11, 150
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n150_statement_begin_α
                        .size            n149_stmt_mark_bx, .-n149_stmt_mark_bx
                        .type            n150_statement_begin_bx, @function
n150_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151;                            jmp   n151_var_α
n150_statement_begin_β: mov              r11, 151;                            jmp   n162_stmt_mark_α
                        .size            n150_statement_begin_bx, .-n150_statement_begin_bx
                        .type            n151_var_bx, @function
n151_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
                        .size            n151_var_bx, .-n151_var_bx
                        .type            n152_var_bx, @function
n152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
n152_var_β:             mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
                        .size            n152_var_bx, .-n152_var_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_subscript_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n152_var_β
.Llit_integer_α_603_0:  .quad            17
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_subscript_bx, @function
n154_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_subscript_α:       sub              rsp, 16
                        mov              r11, 155
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
                        cmp              al, 104;                             jne   .Lsubscript_α_604_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
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
1:                                                                            jmp   n155_binop_α
n154_subscript_β:       mov              r11, 155
                        add              rsp, 16;                             jmp   n153_lit_integer_β
                        .size            n154_subscript_bx, .-n154_subscript_bx
                        .type            n155_binop_bx, @function
n155_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              r11, 156
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
.Lbinop_α_605_7:                                                              jmp   n156_var_α
.Lbinop_α_605_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_605_240
                        add              rsp, 16;                             jmp   n154_subscript_β
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
1:                                                                            jmp   n156_var_α
n155_binop_β:           mov              r11, 156
                        add              rsp, 16;                             jmp   n154_subscript_β
                        .size            n155_binop_bx, .-n155_binop_bx
                        .type            n156_var_bx, @function
n156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_lit_string_α
n156_var_β:             mov              r11, 157
                        add              rsp, 16;                             jmp   n155_binop_β
                        .size            n156_var_bx, .-n156_var_bx
                        .type            n157_lit_string_bx, @function
n157_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_subscript_α
n157_lit_string_β:      mov              r11, 158
                        add              rsp, 16;                             jmp   n156_var_β
.Llit_string_α_607_0:   .quad            .Llit_string_α_607_0_s
.Llit_string_α_607_0_s: .string          "17"
                        .size            n157_lit_string_bx, .-n157_lit_string_bx
                        .type            n158_subscript_bx, @function
n158_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_subscript_α:       sub              rsp, 16
                        mov              r11, 159
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
                        cmp              al, 104;                             jne   .Lsubscript_α_608_240
                        add              rsp, 16;                             jmp   n157_lit_string_β
.Lsubscript_α_608_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n159_binop_α
n158_subscript_β:       mov              r11, 159
                        add              rsp, 16;                             jmp   n157_lit_string_β
                        .size            n158_subscript_bx, .-n158_subscript_bx
                        .type            n159_binop_bx, @function
n159_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:           sub              rsp, 16
                        mov              r11, 160
                        mov              eax, dword ptr [rsp + 64]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_609_2
                        mov              rax, qword ptr [rsp + 72]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_609_7
.Lbinop_α_609_2:        and              edx, 1;                              jz    .Lbinop_α_609_0
                        mov              rsi, qword ptr [rsp + 72]            # binop
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
.Lbinop_α_609_7:                                                              jmp   n160_assign_α
.Lbinop_α_609_0:        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_609_240
                        add              rsp, 16;                             jmp   n158_subscript_β
.Lbinop_α_609_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n160_assign_α
n159_binop_β:           mov              r11, 160
                        add              rsp, 16;                             jmp   n158_subscript_β
                        .size            n159_binop_bx, .-n159_binop_bx
                        .type            n160_assign_bx, @function
n160_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 161
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n161_statement_end_α
                        .size            n160_assign_bx, .-n160_assign_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 162
                        add              rsp, 144;                            jmp   n162_stmt_mark_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_stmt_mark_bx, @function
n162_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n162_stmt_mark_α:       mov              r11, 163
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39;             jmp   n163_statement_begin_α
                        .size            n162_stmt_mark_bx, .-n162_stmt_mark_bx
                        .type            n163_statement_begin_bx, @function
n163_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 164;                            jmp   n164_var_α
n163_statement_begin_β: mov              r11, 164;                            jmp   n169_stmt_mark_α
                        .size            n163_statement_begin_bx, .-n163_statement_begin_bx
                        .type            n164_var_bx, @function
n164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_lit_integer_α
                        .size            n164_var_bx, .-n164_var_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_618_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_lit_integer_α
n165_lit_integer_β:     mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Llit_integer_α_618_0:  .quad            5
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_assign_var_α
n166_lit_integer_β:     mov              r11, 167
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Llit_integer_α_619_0:  .quad            500
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_assign_var_bx, @function
n167_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_var_α:      sub              rsp, 16
                        mov              r11, 168
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_621_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_621_0
.Lassign_var_α_621_1:   test             rsi, rsi;                            je    .Lassign_var_α_621_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_621_238
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lassign_var_α_621_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n168_statement_end_α
.Lassign_var_α_621_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_621_239
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lassign_var_α_621_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_621_240
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lassign_var_α_621_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n168_statement_end_α
                        .size            n167_assign_var_bx, .-n167_assign_var_bx
                        .type            n168_statement_end_bx, @function
n168_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   mov              r11, 169
                        add              rsp, 64;                             jmp   n169_stmt_mark_α
                        .size            n168_statement_end_bx, .-n168_statement_end_bx
                        .type            n169_stmt_mark_bx, @function
n169_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n169_stmt_mark_α:       mov              r11, 170
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40;             jmp   n170_statement_begin_α
                        .size            n169_stmt_mark_bx, .-n169_stmt_mark_bx
                        .type            n170_statement_begin_bx, @function
n170_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 171;                            jmp   n171_var_α
n170_statement_begin_β: mov              r11, 171;                            jmp   n176_stmt_mark_α
                        .size            n170_statement_begin_bx, .-n170_statement_begin_bx
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_lit_integer_α
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_629_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_lit_integer_α
n172_lit_integer_β:     mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Llit_integer_α_629_0:  .quad            5
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_630_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_assign_var_α
n173_lit_integer_β:     mov              r11, 174
                        add              rsp, 16;                             jmp   n172_lit_integer_β
.Llit_integer_α_630_0:  .quad            501
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_assign_var_bx, @function
n174_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_var_α:      sub              rsp, 16
                        mov              r11, 175
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_632_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_632_0
.Lassign_var_α_632_1:   test             rsi, rsi;                            je    .Lassign_var_α_632_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_632_238
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lassign_var_α_632_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n175_statement_end_α
.Lassign_var_α_632_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_632_239
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lassign_var_α_632_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_632_240
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lassign_var_α_632_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n175_statement_end_α
                        .size            n174_assign_var_bx, .-n174_assign_var_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 176
                        add              rsp, 64;                             jmp   n176_stmt_mark_α
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_stmt_mark_bx, @function
n176_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n176_stmt_mark_α:       mov              r11, 177
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 41;             jmp   n177_statement_begin_α
                        .size            n176_stmt_mark_bx, .-n176_stmt_mark_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 178;                            jmp   n178_var_α
n177_statement_begin_β: mov              r11, 178;                            jmp   n185_stmt_mark_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_var_α
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_var_bx, @function
n179_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_lit_integer_α
n179_var_β:             mov              r11, 180
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
                        .size            n179_var_bx, .-n179_var_bx
                        .type            n180_lit_integer_bx, @function
n180_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     sub              rsp, 16
                        mov              r11, 181
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_641_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_subscript_α
n180_lit_integer_β:     mov              r11, 181
                        add              rsp, 16;                             jmp   n179_var_β
.Llit_integer_α_641_0:  .quad            5
                        .size            n180_lit_integer_bx, .-n180_lit_integer_bx
                        .type            n181_subscript_bx, @function
n181_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_subscript_α:       sub              rsp, 16
                        mov              r11, 182
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
                        cmp              al, 104;                             jne   .Lsubscript_α_642_240
                        add              rsp, 16;                             jmp   n180_lit_integer_β
.Lsubscript_α_642_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n182_binop_α
n181_subscript_β:       mov              r11, 182
                        add              rsp, 16;                             jmp   n180_lit_integer_β
                        .size            n181_subscript_bx, .-n181_subscript_bx
                        .type            n182_binop_bx, @function
n182_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_binop_α:           sub              rsp, 16
                        mov              r11, 183
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_643_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_643_7
.Lbinop_α_643_2:        and              edx, 1;                              jz    .Lbinop_α_643_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_643_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_643_4
.Lbinop_α_643_3:        movq             xmm0, rsi
.Lbinop_α_643_4:        cmp              cl, 5;                               je    .Lbinop_α_643_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_643_6
.Lbinop_α_643_5:        movq             xmm1, rdi
.Lbinop_α_643_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_643_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_643_7:                                                              jmp   n183_assign_α
.Lbinop_α_643_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_643_240
                        add              rsp, 16;                             jmp   n181_subscript_β
.Lbinop_α_643_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n183_assign_α
n182_binop_β:           mov              r11, 183
                        add              rsp, 16;                             jmp   n181_subscript_β
                        .size            n182_binop_bx, .-n182_binop_bx
                        .type            n183_assign_bx, @function
n183_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n184_statement_end_α
                        .size            n183_assign_bx, .-n183_assign_bx
                        .type            n184_statement_end_bx, @function
n184_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 185
                        add              rsp, 80;                             jmp   n185_stmt_mark_α
                        .size            n184_statement_end_bx, .-n184_statement_end_bx
                        .type            n185_stmt_mark_bx, @function
n185_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n185_stmt_mark_α:       mov              r11, 186
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43;             jmp   n186_statement_begin_α
                        .size            n185_stmt_mark_bx, .-n185_stmt_mark_bx
                        .type            n186_statement_begin_bx, @function
n186_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 187;                            jmp   n187_lit_integer_α
n186_statement_begin_β: mov              r11, 187;                            jmp   n191_stmt_mark_α
                        .size            n186_statement_begin_bx, .-n186_statement_begin_bx
                        .type            n187_lit_integer_bx, @function
n187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     sub              rsp, 16
                        mov              r11, 188
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_651_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_unop_α
.Llit_integer_α_651_0:  .quad            30
                        .size            n187_lit_integer_bx, .-n187_lit_integer_bx
                        .type            n188_unop_bx, @function
n188_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_unop_α:            sub              rsp, 16
                        mov              r11, 189
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
1:                                                                            jmp   n189_assign_α
n188_unop_β:            mov              r11, 189
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n186_statement_begin_β
                        .size            n188_unop_bx, .-n188_unop_bx
                        .type            n189_assign_bx, @function
n189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 190
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
                        mov              qword ptr [r9 + 88], rdx;            jmp   n190_statement_end_α
                        .size            n189_assign_bx, .-n189_assign_bx
                        .type            n190_statement_end_bx, @function
n190_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 191
                        add              rsp, 32;                             jmp   n191_stmt_mark_α
                        .size            n190_statement_end_bx, .-n190_statement_end_bx
                        .type            n191_stmt_mark_bx, @function
n191_stmt_mark_bx:
#=======================================================================================================================
# INTREAD ZS = ZS + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n191_stmt_mark_α:       mov              r11, 192
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44;             jmp   n192_statement_begin_α
                        .size            n191_stmt_mark_bx, .-n191_stmt_mark_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 193;                            jmp   n193_var_α
n192_statement_begin_β: mov              r11, 193;                            jmp   n200_stmt_mark_α
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_var_α
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 195
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_var_α
n194_var_β:             mov              r11, 195
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_β
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_subscript_α
n195_var_β:             mov              r11, 196
                        add              rsp, 16;                             jmp   n194_var_β
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_subscript_bx, @function
n196_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_subscript_α:       sub              rsp, 16
                        mov              r11, 197
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
                        cmp              al, 104;                             jne   .Lsubscript_α_663_240
                        add              rsp, 16;                             jmp   n195_var_β
.Lsubscript_α_663_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n197_binop_α
n196_subscript_β:       mov              r11, 197
                        add              rsp, 16;                             jmp   n195_var_β
                        .size            n196_subscript_bx, .-n196_subscript_bx
                        .type            n197_binop_bx, @function
n197_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 198
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_664_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_664_7
.Lbinop_α_664_2:        and              edx, 1;                              jz    .Lbinop_α_664_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_664_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_664_4
.Lbinop_α_664_3:        movq             xmm0, rsi
.Lbinop_α_664_4:        cmp              cl, 5;                               je    .Lbinop_α_664_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_664_6
.Lbinop_α_664_5:        movq             xmm1, rdi
.Lbinop_α_664_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_664_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_664_7:                                                              jmp   n198_assign_α
.Lbinop_α_664_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_664_240
                        add              rsp, 16;                             jmp   n196_subscript_β
.Lbinop_α_664_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n198_assign_α
n197_binop_β:           mov              r11, 198
                        add              rsp, 16;                             jmp   n196_subscript_β
                        .size            n197_binop_bx, .-n197_binop_bx
                        .type            n198_assign_bx, @function
n198_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n199_statement_end_α
                        .size            n198_assign_bx, .-n198_assign_bx
                        .type            n199_statement_end_bx, @function
n199_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        add              rsp, 80;                             jmp   n200_stmt_mark_α
                        .size            n199_statement_end_bx, .-n199_statement_end_bx
                        .type            n200_stmt_mark_bx, @function
n200_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n200_stmt_mark_α:       mov              r11, 201
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45;             jmp   n201_statement_begin_α
                        .size            n200_stmt_mark_bx, .-n200_stmt_mark_bx
                        .type            n201_statement_begin_bx, @function
n201_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 202;                            jmp   n202_var_α
n201_statement_begin_β: mov              r11, 202;                            jmp   n212_stmt_mark_α
                        .size            n201_statement_begin_bx, .-n201_statement_begin_bx
                        .type            n202_var_bx, @function
n202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_lit_integer_α
                        .size            n202_var_bx, .-n202_var_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     sub              rsp, 16
                        mov              r11, 204
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_673_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
n203_lit_integer_β:     mov              r11, 204
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
.Llit_integer_α_673_0:  .quad            30
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_coerce_numeric_bx, @function
n204_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 205
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_675_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_675_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_675_0
.Lcoerce_numeric_α_675_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_coerce_numeric_α
.Lcoerce_numeric_α_675_0:
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
1:                                                                            jmp   n205_coerce_numeric_α
n204_coerce_numeric_β:  mov              r11, 205
                        add              rsp, 16;                             jmp   n203_lit_integer_β
                        .size            n204_coerce_numeric_bx, .-n204_coerce_numeric_bx
                        .type            n205_coerce_numeric_bx, @function
n205_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 206
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_677_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_677_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_677_0
.Lcoerce_numeric_α_677_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_cmp_test_α
.Lcoerce_numeric_α_677_0:
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
1:                                                                            jmp   n206_cmp_test_α
n205_coerce_numeric_β:  mov              r11, 206
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
                        .size            n205_coerce_numeric_bx, .-n205_coerce_numeric_bx
                        .type            n206_cmp_test_bx, @function
n206_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_cmp_test_α:        sub              rsp, 16
                        mov              r11, 207
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_679_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_679_239
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
.Lcmp_test_α_679_239:                                                         jmp   n207_var_α
.Lcmp_test_α_679_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_679_240
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
.Lcmp_test_α_679_240:                                                         jmp   n207_var_α
n206_cmp_test_β:        mov              r11, 207
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
                        .size            n206_cmp_test_bx, .-n206_cmp_test_bx
                        .type            n207_var_bx, @function
n207_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_lit_integer_α
n207_var_β:             mov              r11, 208
                        add              rsp, 16;                             jmp   n206_cmp_test_β
                        .size            n207_var_bx, .-n207_var_bx
                        .type            n208_lit_integer_bx, @function
n208_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:     sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_681_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_binop_α
n208_lit_integer_β:     mov              r11, 209
                        add              rsp, 16;                             jmp   n207_var_β
.Llit_integer_α_681_0:  .quad            1
                        .size            n208_lit_integer_bx, .-n208_lit_integer_bx
                        .type            n209_binop_bx, @function
n209_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_682_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_682_7
.Lbinop_α_682_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_682_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_682_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_682_4
.Lbinop_α_682_3:        movq             xmm0, rsi
.Lbinop_α_682_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_682_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_682_7:                                                              jmp   n210_assign_α
.Lbinop_α_682_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_682_240
                        add              rsp, 16;                             jmp   n208_lit_integer_β
.Lbinop_α_682_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n210_assign_α
n209_binop_β:           mov              r11, 210
                        add              rsp, 16;                             jmp   n208_lit_integer_β
                        .size            n209_binop_bx, .-n209_binop_bx
                        .type            n210_assign_bx, @function
n210_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              r11, 211
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
                        mov              qword ptr [r9 + 88], rdx;            jmp   n211_statement_end_α
                        .size            n210_assign_bx, .-n210_assign_bx
                        .type            n211_statement_end_bx, @function
n211_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 212
                        add              rsp, 128;                            jmp   n191_stmt_mark_α
                        .size            n211_statement_end_bx, .-n211_statement_end_bx
                        .type            n212_stmt_mark_bx, @function
n212_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n212_stmt_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47;             jmp   n213_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_690_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_assign_α
.Llit_integer_α_690_0:  .quad            1
                        .size            n214_lit_integer_bx, .-n214_lit_integer_bx
                        .type            n215_assign_bx, @function
n215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
                        mov              qword ptr [r9 + 104], rdx;           jmp   n216_statement_end_α
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
# STRREAD ZS = ZS + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n217_stmt_mark_α:       mov              r11, 218
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48;             jmp   n218_statement_begin_α
                        .size            n217_stmt_mark_bx, .-n217_stmt_mark_bx
                        .type            n218_statement_begin_bx, @function
n218_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 219;                            jmp   n219_var_α
n218_statement_begin_β: mov              r11, 219;                            jmp   n234_stmt_mark_α
                        .size            n218_statement_begin_bx, .-n218_statement_begin_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_var_α
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_var_bx, @function
n220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_lit_string_α
n220_var_β:             mov              r11, 221
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
                        .size            n220_var_bx, .-n220_var_bx
                        .type            n221_lit_string_bx, @function
n221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_700_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_var_α
n221_lit_string_β:      mov              r11, 222
                        add              rsp, 16;                             jmp   n220_var_β
.Llit_string_α_700_0:   .quad            .Llit_string_α_700_0_s
.Llit_string_α_700_0_s: .string          "k"
                        .size            n221_lit_string_bx, .-n221_lit_string_bx
                        .type            n222_var_bx, @function
n222_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_binop_α
n222_var_β:             mov              r11, 223
                        add              rsp, 16;                             jmp   n221_lit_string_β
                        .size            n222_var_bx, .-n222_var_bx
                        .type            n223_binop_bx, @function
n223_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_binop_α:           sub              rsp, 16
                        mov              r11, 224
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
1:                                                                            jmp   n224_subscript_α
n223_binop_β:           mov              r11, 224
                        add              rsp, 16;                             jmp   n222_var_β
                        .size            n223_binop_bx, .-n223_binop_bx
                        .type            n224_subscript_bx, @function
n224_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_subscript_α:       sub              rsp, 16
                        mov              r11, 225
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
                        cmp              al, 104;                             jne   .Lsubscript_α_703_240
                        add              rsp, 16;                             jmp   n223_binop_β
.Lsubscript_α_703_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n225_binop_α
n224_subscript_β:       mov              r11, 225
                        add              rsp, 16;                             jmp   n223_binop_β
                        .size            n224_subscript_bx, .-n224_subscript_bx
                        .type            n225_binop_bx, @function
n225_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_binop_α:           sub              rsp, 16
                        mov              r11, 226
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_704_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_704_7
.Lbinop_α_704_2:        and              edx, 1;                              jz    .Lbinop_α_704_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_704_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_704_4
.Lbinop_α_704_3:        movq             xmm0, rsi
.Lbinop_α_704_4:        cmp              cl, 5;                               je    .Lbinop_α_704_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_704_6
.Lbinop_α_704_5:        movq             xmm1, rdi
.Lbinop_α_704_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_704_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_704_7:                                                              jmp   n226_var_α
.Lbinop_α_704_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_704_240
                        add              rsp, 16;                             jmp   n224_subscript_β
.Lbinop_α_704_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n226_var_α
n225_binop_β:           mov              r11, 226
                        add              rsp, 16;                             jmp   n224_subscript_β
                        .size            n225_binop_bx, .-n225_binop_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_lit_string_α
n226_var_β:             mov              r11, 227
                        add              rsp, 16;                             jmp   n225_binop_β
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_lit_string_bx, @function
n227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      sub              rsp, 16
                        mov              r11, 228
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_706_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_var_α
n227_lit_string_β:      mov              r11, 228
                        add              rsp, 16;                             jmp   n226_var_β
.Llit_string_α_706_0:   .quad            .Llit_string_α_706_0_s
.Llit_string_α_706_0_s: .string          "a_much_longer_key_"
                        .size            n227_lit_string_bx, .-n227_lit_string_bx
                        .type            n228_var_bx, @function
n228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_binop_α
n228_var_β:             mov              r11, 229
                        add              rsp, 16;                             jmp   n227_lit_string_β
                        .size            n228_var_bx, .-n228_var_bx
                        .type            n229_binop_bx, @function
n229_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              r11, 230
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
1:                                                                            jmp   n230_subscript_α
n229_binop_β:           mov              r11, 230
                        add              rsp, 16;                             jmp   n228_var_β
                        .size            n229_binop_bx, .-n229_binop_bx
                        .type            n230_subscript_bx, @function
n230_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_subscript_α:       sub              rsp, 16
                        mov              r11, 231
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
                        cmp              al, 104;                             jne   .Lsubscript_α_709_240
                        add              rsp, 16;                             jmp   n229_binop_β
.Lsubscript_α_709_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n231_binop_α
n230_subscript_β:       mov              r11, 231
                        add              rsp, 16;                             jmp   n229_binop_β
                        .size            n230_subscript_bx, .-n230_subscript_bx
                        .type            n231_binop_bx, @function
n231_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_α:           sub              rsp, 16
                        mov              r11, 232
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_710_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_710_7
.Lbinop_α_710_2:        and              edx, 1;                              jz    .Lbinop_α_710_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_710_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_710_4
.Lbinop_α_710_3:        movq             xmm0, rsi
.Lbinop_α_710_4:        cmp              cl, 5;                               je    .Lbinop_α_710_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_710_6
.Lbinop_α_710_5:        movq             xmm1, rdi
.Lbinop_α_710_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_710_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_710_7:                                                              jmp   n232_assign_α
.Lbinop_α_710_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_710_240
                        add              rsp, 16;                             jmp   n230_subscript_β
.Lbinop_α_710_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n232_assign_α
n231_binop_β:           mov              r11, 232
                        add              rsp, 16;                             jmp   n230_subscript_β
                        .size            n231_binop_bx, .-n231_binop_bx
                        .type            n232_assign_bx, @function
n232_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              r11, 233
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n233_statement_end_α
                        .size            n232_assign_bx, .-n232_assign_bx
                        .type            n233_statement_end_bx, @function
n233_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   mov              r11, 234
                        add              rsp, 208;                            jmp   n234_stmt_mark_α
                        .size            n233_statement_end_bx, .-n233_statement_end_bx
                        .type            n234_stmt_mark_bx, @function
n234_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n234_stmt_mark_α:       mov              r11, 235
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49;             jmp   n235_statement_begin_α
                        .size            n234_stmt_mark_bx, .-n234_stmt_mark_bx
                        .type            n235_statement_begin_bx, @function
n235_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 236;                            jmp   n236_var_α
n235_statement_begin_β: mov              r11, 236;                            jmp   n246_stmt_mark_α
                        .size            n235_statement_begin_bx, .-n235_statement_begin_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 237
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_lit_integer_α
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_lit_integer_bx, @function
n237_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_719_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_coerce_numeric_α
n237_lit_integer_β:     mov              r11, 238
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
.Llit_integer_α_719_0:  .quad            20
                        .size            n237_lit_integer_bx, .-n237_lit_integer_bx
                        .type            n238_coerce_numeric_bx, @function
n238_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 239
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_721_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_721_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_721_0
.Lcoerce_numeric_α_721_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_coerce_numeric_α
.Lcoerce_numeric_α_721_0:
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
1:                                                                            jmp   n239_coerce_numeric_α
n238_coerce_numeric_β:  mov              r11, 239
                        add              rsp, 16;                             jmp   n237_lit_integer_β
                        .size            n238_coerce_numeric_bx, .-n238_coerce_numeric_bx
                        .type            n239_coerce_numeric_bx, @function
n239_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 240
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_723_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_723_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_723_0
.Lcoerce_numeric_α_723_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_cmp_test_α
.Lcoerce_numeric_α_723_0:
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
1:                                                                            jmp   n240_cmp_test_α
n239_coerce_numeric_β:  mov              r11, 240
                        add              rsp, 16;                             jmp   n238_coerce_numeric_β
                        .size            n239_coerce_numeric_bx, .-n239_coerce_numeric_bx
                        .type            n240_cmp_test_bx, @function
n240_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_cmp_test_α:        sub              rsp, 16
                        mov              r11, 241
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_725_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_725_239
                        add              rsp, 16;                             jmp   n239_coerce_numeric_β
.Lcmp_test_α_725_239:                                                         jmp   n241_var_α
.Lcmp_test_α_725_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_725_240
                        add              rsp, 16;                             jmp   n239_coerce_numeric_β
.Lcmp_test_α_725_240:                                                         jmp   n241_var_α
n240_cmp_test_β:        mov              r11, 241
                        add              rsp, 16;                             jmp   n239_coerce_numeric_β
                        .size            n240_cmp_test_bx, .-n240_cmp_test_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 242
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_lit_integer_α
n241_var_β:             mov              r11, 242
                        add              rsp, 16;                             jmp   n240_cmp_test_β
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     sub              rsp, 16
                        mov              r11, 243
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_727_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_binop_α
n242_lit_integer_β:     mov              r11, 243
                        add              rsp, 16;                             jmp   n241_var_β
.Llit_integer_α_727_0:  .quad            1
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_binop_bx, @function
n243_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:           sub              rsp, 16
                        mov              r11, 244
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_728_2
                        add              rax, 1
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
.Lbinop_α_728_7:                                                              jmp   n244_assign_α
.Lbinop_α_728_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_728_240
                        add              rsp, 16;                             jmp   n242_lit_integer_β
.Lbinop_α_728_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n244_assign_α
n243_binop_β:           mov              r11, 244
                        add              rsp, 16;                             jmp   n242_lit_integer_β
                        .size            n243_binop_bx, .-n243_binop_bx
                        .type            n244_assign_bx, @function
n244_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:          mov              r11, 245
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
                        mov              qword ptr [r9 + 104], rdx;           jmp   n245_statement_end_α
                        .size            n244_assign_bx, .-n244_assign_bx
                        .type            n245_statement_end_bx, @function
n245_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:   mov              r11, 246
                        add              rsp, 128;                            jmp   n217_stmt_mark_α
                        .size            n245_statement_end_bx, .-n245_statement_end_bx
                        .type            n246_stmt_mark_bx, @function
n246_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n246_stmt_mark_α:       mov              r11, 247
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51;             jmp   n247_statement_begin_α
                        .size            n246_stmt_mark_bx, .-n246_stmt_mark_bx
                        .type            n247_statement_begin_bx, @function
n247_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α: mov              r11, 248;                            jmp   n248_lit_integer_α
n247_statement_begin_β: mov              r11, 248;                            jmp   n251_stmt_mark_α
                        .size            n247_statement_begin_bx, .-n247_statement_begin_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     sub              rsp, 16
                        mov              r11, 249
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_736_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_assign_α
.Llit_integer_α_736_0:  .quad            1
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_assign_bx, @function
n249_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_assign_α:          mov              r11, 250
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
                        mov              qword ptr [r9 + 120], rdx;           jmp   n250_statement_end_α
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
# REALRD  ZS = ZS + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n251_stmt_mark_α:       mov              r11, 252
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52;             jmp   n252_statement_begin_α
                        .size            n251_stmt_mark_bx, .-n251_stmt_mark_bx
                        .type            n252_statement_begin_bx, @function
n252_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α: mov              r11, 253;                            jmp   n253_var_α
n252_statement_begin_β: mov              r11, 253;                            jmp   n262_stmt_mark_α
                        .size            n252_statement_begin_bx, .-n252_statement_begin_bx
                        .type            n253_var_bx, @function
n253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             sub              rsp, 16
                        mov              r11, 254
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_var_α
                        .size            n253_var_bx, .-n253_var_bx
                        .type            n254_var_bx, @function
n254_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_var_α
n254_var_β:             mov              r11, 255
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n252_statement_begin_β
                        .size            n254_var_bx, .-n254_var_bx
                        .type            n255_var_bx, @function
n255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              r11, 256
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_lit_real_α
n255_var_β:             mov              r11, 256
                        add              rsp, 16;                             jmp   n254_var_β
                        .size            n255_var_bx, .-n255_var_bx
                        .type            n256_lit_real_bx, @function
n256_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_real_α:        sub              rsp, 16
                        mov              r11, 257
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_747_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n257_binop_α
.Llit_real_α_747_0:     .quad            4611686018427387904
                        .size            n256_lit_real_bx, .-n256_lit_real_bx
                        .type            n257_binop_bx, @function
n257_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              r11, 258
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
                        cmp              al, 104;                             jne   .Lbinop_α_748_240
                        add              rsp, 32;                             jmp   n255_var_β
.Lbinop_α_748_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n258_subscript_α
n257_binop_β:           mov              r11, 258
                        add              rsp, 32;                             jmp   n255_var_β
                        .size            n257_binop_bx, .-n257_binop_bx
                        .type            n258_subscript_bx, @function
n258_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:       sub              rsp, 16
                        mov              r11, 259
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
                        cmp              al, 104;                             jne   .Lsubscript_α_749_240
                        add              rsp, 16;                             jmp   n257_binop_β
.Lsubscript_α_749_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n259_binop_α
n258_subscript_β:       mov              r11, 259
                        add              rsp, 16;                             jmp   n257_binop_β
                        .size            n258_subscript_bx, .-n258_subscript_bx
                        .type            n259_binop_bx, @function
n259_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:           sub              rsp, 16
                        mov              r11, 260
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_750_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_750_7
.Lbinop_α_750_2:        and              edx, 1;                              jz    .Lbinop_α_750_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_750_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_750_4
.Lbinop_α_750_3:        movq             xmm0, rsi
.Lbinop_α_750_4:        cmp              cl, 5;                               je    .Lbinop_α_750_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_750_6
.Lbinop_α_750_5:        movq             xmm1, rdi
.Lbinop_α_750_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_750_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_750_7:                                                              jmp   n260_assign_α
.Lbinop_α_750_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_750_240
                        add              rsp, 16;                             jmp   n258_subscript_β
.Lbinop_α_750_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n260_assign_α
n259_binop_β:           mov              r11, 260
                        add              rsp, 16;                             jmp   n258_subscript_β
                        .size            n259_binop_bx, .-n259_binop_bx
                        .type            n260_assign_bx, @function
n260_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n261_statement_end_α
                        .size            n260_assign_bx, .-n260_assign_bx
                        .type            n261_statement_end_bx, @function
n261_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:   mov              r11, 262
                        add              rsp, 112;                            jmp   n262_stmt_mark_α
                        .size            n261_statement_end_bx, .-n261_statement_end_bx
                        .type            n262_stmt_mark_bx, @function
n262_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALRD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n262_stmt_mark_α:       mov              r11, 263
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n263_statement_begin_α
                        .size            n262_stmt_mark_bx, .-n262_stmt_mark_bx
                        .type            n263_statement_begin_bx, @function
n263_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α: mov              r11, 264;                            jmp   n264_var_α
n263_statement_begin_β: mov              r11, 264;                            jmp   n274_stmt_mark_α
                        .size            n263_statement_begin_bx, .-n263_statement_begin_bx
                        .type            n264_var_bx, @function
n264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              r11, 265
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_lit_integer_α
                        .size            n264_var_bx, .-n264_var_bx
                        .type            n265_lit_integer_bx, @function
n265_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:     sub              rsp, 16
                        mov              r11, 266
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_759_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_coerce_numeric_α
n265_lit_integer_β:     mov              r11, 266
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n263_statement_begin_β
.Llit_integer_α_759_0:  .quad            12
                        .size            n265_lit_integer_bx, .-n265_lit_integer_bx
                        .type            n266_coerce_numeric_bx, @function
n266_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 267
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_761_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
.Lcoerce_numeric_α_761_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_coerce_numeric_α
.Lcoerce_numeric_α_761_0:
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
1:                                                                            jmp   n267_coerce_numeric_α
n266_coerce_numeric_β:  mov              r11, 267
                        add              rsp, 16;                             jmp   n265_lit_integer_β
                        .size            n266_coerce_numeric_bx, .-n266_coerce_numeric_bx
                        .type            n267_coerce_numeric_bx, @function
n267_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 268
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_763_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
.Lcoerce_numeric_α_763_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_cmp_test_α
.Lcoerce_numeric_α_763_0:
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
1:                                                                            jmp   n268_cmp_test_α
n267_coerce_numeric_β:  mov              r11, 268
                        add              rsp, 16;                             jmp   n266_coerce_numeric_β
                        .size            n267_coerce_numeric_bx, .-n267_coerce_numeric_bx
                        .type            n268_cmp_test_bx, @function
n268_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_cmp_test_α:        sub              rsp, 16
                        mov              r11, 269
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_765_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_765_239
                        add              rsp, 16;                             jmp   n267_coerce_numeric_β
.Lcmp_test_α_765_239:                                                         jmp   n269_var_α
.Lcmp_test_α_765_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_765_240
                        add              rsp, 16;                             jmp   n267_coerce_numeric_β
.Lcmp_test_α_765_240:                                                         jmp   n269_var_α
n268_cmp_test_β:        mov              r11, 269
                        add              rsp, 16;                             jmp   n267_coerce_numeric_β
                        .size            n268_cmp_test_bx, .-n268_cmp_test_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              r11, 270
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_lit_integer_α
n269_var_β:             mov              r11, 270
                        add              rsp, 16;                             jmp   n268_cmp_test_β
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_lit_integer_bx, @function
n270_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:     sub              rsp, 16
                        mov              r11, 271
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_767_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_binop_α
n270_lit_integer_β:     mov              r11, 271
                        add              rsp, 16;                             jmp   n269_var_β
.Llit_integer_α_767_0:  .quad            1
                        .size            n270_lit_integer_bx, .-n270_lit_integer_bx
                        .type            n271_binop_bx, @function
n271_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:           sub              rsp, 16
                        mov              r11, 272
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_768_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_768_7
.Lbinop_α_768_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_768_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_768_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_768_4
.Lbinop_α_768_3:        movq             xmm0, rsi
.Lbinop_α_768_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_768_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_768_7:                                                              jmp   n272_assign_α
.Lbinop_α_768_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_768_240
                        add              rsp, 16;                             jmp   n270_lit_integer_β
.Lbinop_α_768_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n272_assign_α
n271_binop_β:           mov              r11, 272
                        add              rsp, 16;                             jmp   n270_lit_integer_β
                        .size            n271_binop_bx, .-n271_binop_bx
                        .type            n272_assign_bx, @function
n272_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              r11, 273
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
                        mov              qword ptr [r9 + 120], rdx;           jmp   n273_statement_end_α
                        .size            n272_assign_bx, .-n272_assign_bx
                        .type            n273_statement_end_bx, @function
n273_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   mov              r11, 274
                        add              rsp, 128;                            jmp   n251_stmt_mark_α
                        .size            n273_statement_end_bx, .-n273_statement_end_bx
                        .type            n274_stmt_mark_bx, @function
n274_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n274_stmt_mark_α:       mov              r11, 275
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54;             jmp   n275_statement_begin_α
                        .size            n274_stmt_mark_bx, .-n274_stmt_mark_bx
                        .type            n275_statement_begin_bx, @function
n275_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_begin_α: mov              r11, 276;                            jmp   n276_var_α
n275_statement_begin_β: mov              r11, 276;                            jmp   n283_stmt_mark_α
                        .size            n275_statement_begin_bx, .-n275_statement_begin_bx
                        .type            n276_var_bx, @function
n276_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              r11, 277
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_var_α
                        .size            n276_var_bx, .-n276_var_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              r11, 278
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_lit_string_α
n277_var_β:             mov              r11, 278
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n275_statement_begin_β
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      sub              rsp, 16
                        mov              r11, 279
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_778_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_subscript_α
n278_lit_string_β:      mov              r11, 279
                        add              rsp, 16;                             jmp   n277_var_β
.Llit_string_α_778_0:   .quad            .Llit_string_α_778_0_s
.Llit_string_α_778_0_s: .string          ""
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
                        cmp              al, 104;                             jne   .Lsubscript_α_779_240
                        add              rsp, 16;                             jmp   n278_lit_string_β
.Lsubscript_α_779_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n280_binop_α
n279_subscript_β:       mov              r11, 280
                        add              rsp, 16;                             jmp   n278_lit_string_β
                        .size            n279_subscript_bx, .-n279_subscript_bx
                        .type            n280_binop_bx, @function
n280_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           sub              rsp, 16
                        mov              r11, 281
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_780_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_780_7
.Lbinop_α_780_2:        and              edx, 1;                              jz    .Lbinop_α_780_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_780_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_780_4
.Lbinop_α_780_3:        movq             xmm0, rsi
.Lbinop_α_780_4:        cmp              cl, 5;                               je    .Lbinop_α_780_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_780_6
.Lbinop_α_780_5:        movq             xmm1, rdi
.Lbinop_α_780_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_780_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_780_7:                                                              jmp   n281_assign_α
.Lbinop_α_780_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_780_240
                        add              rsp, 16;                             jmp   n279_subscript_β
.Lbinop_α_780_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n281_assign_α
n280_binop_β:           mov              r11, 281
                        add              rsp, 16;                             jmp   n279_subscript_β
                        .size            n280_binop_bx, .-n280_binop_bx
                        .type            n281_assign_bx, @function
n281_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n282_statement_end_α
                        .size            n281_assign_bx, .-n281_assign_bx
                        .type            n282_statement_end_bx, @function
n282_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_end_α:   mov              r11, 283
                        add              rsp, 80;                             jmp   n283_stmt_mark_α
                        .size            n282_statement_end_bx, .-n282_statement_end_bx
                        .type            n283_stmt_mark_bx, @function
n283_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n283_stmt_mark_α:       mov              r11, 284
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n284_statement_begin_α
                        .size            n283_stmt_mark_bx, .-n283_stmt_mark_bx
                        .type            n284_statement_begin_bx, @function
n284_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_begin_α: mov              r11, 285;                            jmp   n285_var_α
n284_statement_begin_β: mov              r11, 285;                            jmp   n304_stmt_mark_α
                        .size            n284_statement_begin_bx, .-n284_statement_begin_bx
                        .type            n285_var_bx, @function
n285_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             sub              rsp, 16
                        mov              r11, 286
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_var_α
                        .size            n285_var_bx, .-n285_var_bx
                        .type            n286_var_bx, @function
n286_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              r11, 287
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_lit_integer_α
n286_var_β:             mov              r11, 287
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n284_statement_begin_β
                        .size            n286_var_bx, .-n286_var_bx
                        .type            n287_lit_integer_bx, @function
n287_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_integer_α:     sub              rsp, 16
                        mov              r11, 288
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n288_subscript_α
n287_lit_integer_β:     mov              r11, 288
                        add              rsp, 16;                             jmp   n286_var_β
.Llit_integer_α_790_0:  .quad            9999
                        .size            n287_lit_integer_bx, .-n287_lit_integer_bx
                        .type            n288_subscript_bx, @function
n288_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_subscript_α:       sub              rsp, 16
                        mov              r11, 289
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
                        add              rsp, 16;                             jmp   n287_lit_integer_β
.Lsubscript_α_791_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n289_call_α
n288_subscript_β:       mov              r11, 289
                        add              rsp, 16;                             jmp   n287_lit_integer_β
                        .size            n288_subscript_bx, .-n288_subscript_bx
                        .type            n289_call_bx, @function
n289_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            sub              rsp, 16
                        mov              r11, 290
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd793:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd793]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_bid_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_792_240
                        add              rsp, 16;                             jmp   n288_subscript_β
.Lcall_α_792_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n290_binop_α
n289_call_β:            mov              r11, 290
                        add              rsp, 16;                             jmp   n288_subscript_β
                        .size            n289_call_bx, .-n289_call_bx
                        .type            n290_binop_bx, @function
n290_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              r11, 291
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_794_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_794_7
.Lbinop_α_794_2:        and              edx, 1;                              jz    .Lbinop_α_794_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_794_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_794_4
.Lbinop_α_794_3:        movq             xmm0, rsi
.Lbinop_α_794_4:        cmp              cl, 5;                               je    .Lbinop_α_794_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_794_6
.Lbinop_α_794_5:        movq             xmm1, rdi
.Lbinop_α_794_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_794_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_794_7:                                                              jmp   n291_var_α
.Lbinop_α_794_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_794_240
                        add              rsp, 32;                             jmp   n288_subscript_β
.Lbinop_α_794_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n291_var_α
n290_binop_β:           mov              r11, 291
                        add              rsp, 32;                             jmp   n288_subscript_β
                        .size            n290_binop_bx, .-n290_binop_bx
                        .type            n291_var_bx, @function
n291_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             sub              rsp, 16
                        mov              r11, 292
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_lit_string_α
n291_var_β:             mov              r11, 292
                        add              rsp, 16;                             jmp   n290_binop_β
                        .size            n291_var_bx, .-n291_var_bx
                        .type            n292_lit_string_bx, @function
n292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      sub              rsp, 16
                        mov              r11, 293
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_796_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n293_subscript_α
n292_lit_string_β:      mov              r11, 293
                        add              rsp, 16;                             jmp   n291_var_β
.Llit_string_α_796_0:   .quad            .Llit_string_α_796_0_s
.Llit_string_α_796_0_s: .string          "absent"
                        .size            n292_lit_string_bx, .-n292_lit_string_bx
                        .type            n293_subscript_bx, @function
n293_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_subscript_α:       sub              rsp, 16
                        mov              r11, 294
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
                        add              rsp, 16;                             jmp   n292_lit_string_β
.Lsubscript_α_797_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n294_call_α
n293_subscript_β:       mov              r11, 294
                        add              rsp, 16;                             jmp   n292_lit_string_β
                        .size            n293_subscript_bx, .-n293_subscript_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            sub              rsp, 16
                        mov              r11, 295
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd799:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd799]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_bid_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_798_240
                        add              rsp, 16;                             jmp   n293_subscript_β
.Lcall_α_798_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n295_binop_α
n294_call_β:            mov              r11, 295
                        add              rsp, 16;                             jmp   n293_subscript_β
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_binop_bx, @function
n295_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           sub              rsp, 16
                        mov              r11, 296
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_800_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_800_7
.Lbinop_α_800_2:        and              edx, 1;                              jz    .Lbinop_α_800_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_800_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_800_4
.Lbinop_α_800_3:        movq             xmm0, rsi
.Lbinop_α_800_4:        cmp              cl, 5;                               je    .Lbinop_α_800_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_800_6
.Lbinop_α_800_5:        movq             xmm1, rdi
.Lbinop_α_800_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_800_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_800_7:                                                              jmp   n296_var_α
.Lbinop_α_800_0:        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_800_240
                        add              rsp, 32;                             jmp   n293_subscript_β
.Lbinop_α_800_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n296_var_α
n295_binop_β:           mov              r11, 296
                        add              rsp, 32;                             jmp   n293_subscript_β
                        .size            n295_binop_bx, .-n295_binop_bx
                        .type            n296_var_bx, @function
n296_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             sub              rsp, 16
                        mov              r11, 297
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_lit_integer_α
n296_var_β:             mov              r11, 297
                        add              rsp, 16;                             jmp   n295_binop_β
                        .size            n296_var_bx, .-n296_var_bx
                        .type            n297_lit_integer_bx, @function
n297_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:     sub              rsp, 16
                        mov              r11, 298
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_802_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n298_unop_α
n297_lit_integer_β:     mov              r11, 298
                        add              rsp, 16;                             jmp   n296_var_β
.Llit_integer_α_802_0:  .quad            9999
                        .size            n297_lit_integer_bx, .-n297_lit_integer_bx
                        .type            n298_unop_bx, @function
n298_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_unop_α:            sub              rsp, 16
                        mov              r11, 299
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
1:                                                                            jmp   n299_subscript_α
n298_unop_β:            mov              r11, 299
                        add              rsp, 16;                             jmp   n297_lit_integer_β
                        .size            n298_unop_bx, .-n298_unop_bx
                        .type            n299_subscript_bx, @function
n299_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_subscript_α:       sub              rsp, 16
                        mov              r11, 300
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
                        cmp              al, 104;                             jne   .Lsubscript_α_804_240
                        add              rsp, 16;                             jmp   n298_unop_β
.Lsubscript_α_804_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n300_call_α
n299_subscript_β:       mov              r11, 300
                        add              rsp, 16;                             jmp   n298_unop_β
                        .size            n299_subscript_bx, .-n299_subscript_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            sub              rsp, 16
                        mov              r11, 301
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd806:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd806]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_bid_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_805_240
                        add              rsp, 16;                             jmp   n299_subscript_β
.Lcall_α_805_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n301_binop_α
n300_call_β:            mov              r11, 301
                        add              rsp, 16;                             jmp   n299_subscript_β
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_binop_bx, @function
n301_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_binop_α:           sub              rsp, 16
                        mov              r11, 302
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_807_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_807_7
.Lbinop_α_807_2:        and              edx, 1;                              jz    .Lbinop_α_807_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_807_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_807_4
.Lbinop_α_807_3:        movq             xmm0, rsi
.Lbinop_α_807_4:        cmp              cl, 5;                               je    .Lbinop_α_807_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_807_6
.Lbinop_α_807_5:        movq             xmm1, rdi
.Lbinop_α_807_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_807_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_807_7:                                                              jmp   n302_assign_α
.Lbinop_α_807_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_807_240
                        add              rsp, 32;                             jmp   n299_subscript_β
.Lbinop_α_807_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n302_assign_α
n301_binop_β:           mov              r11, 302
                        add              rsp, 32;                             jmp   n299_subscript_β
                        .size            n301_binop_bx, .-n301_binop_bx
                        .type            n302_assign_bx, @function
n302_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:          mov              r11, 303
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
                        mov              qword ptr [r9 + 56], rdx;            jmp   n303_statement_end_α
                        .size            n302_assign_bx, .-n302_assign_bx
                        .type            n303_statement_end_bx, @function
n303_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   mov              r11, 304
                        add              rsp, 272;                            jmp   n304_stmt_mark_α
                        .size            n303_statement_end_bx, .-n303_statement_end_bx
                        .type            n304_stmt_mark_bx, @function
n304_stmt_mark_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n304_stmt_mark_α:       mov              r11, 305
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n305_statement_begin_α
                        .size            n304_stmt_mark_bx, .-n304_stmt_mark_bx
                        .type            n305_statement_begin_bx, @function
n305_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_begin_α: mov              r11, 306;                            jmp   n306_var_α
n305_statement_begin_β: mov              r11, 306;                            jmp   n316_stmt_mark_α
                        .size            n305_statement_begin_bx, .-n305_statement_begin_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              r11, 307
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_var_α
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              r11, 308
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_coerce_numeric_α
n307_var_β:             mov              r11, 308
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n305_statement_begin_β
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_coerce_numeric_bx, @function
n308_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 309
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_818_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_818_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_818_0
.Lcoerce_numeric_α_818_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_coerce_numeric_α
.Lcoerce_numeric_α_818_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
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
1:                                                                            jmp   n309_coerce_numeric_α
n308_coerce_numeric_β:  mov              r11, 309
                        add              rsp, 16;                             jmp   n307_var_β
                        .size            n308_coerce_numeric_bx, .-n308_coerce_numeric_bx
                        .type            n309_coerce_numeric_bx, @function
n309_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 310
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_820_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_820_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_820_0
.Lcoerce_numeric_α_820_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n310_cmp_test_α
.Lcoerce_numeric_α_820_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
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
1:                                                                            jmp   n310_cmp_test_α
n309_coerce_numeric_β:  mov              r11, 310
                        add              rsp, 16;                             jmp   n308_coerce_numeric_β
                        .size            n309_coerce_numeric_bx, .-n309_coerce_numeric_bx
                        .type            n310_cmp_test_bx, @function
n310_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_cmp_test_α:        sub              rsp, 16
                        mov              r11, 311
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_822_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_822_239
                        add              rsp, 16;                             jmp   n309_coerce_numeric_β
.Lcmp_test_α_822_239:                                                         jmp   n311_var_α
.Lcmp_test_α_822_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_822_240
                        add              rsp, 16;                             jmp   n309_coerce_numeric_β
.Lcmp_test_α_822_240:                                                         jmp   n311_var_α
n310_cmp_test_β:        mov              r11, 311
                        add              rsp, 16;                             jmp   n309_coerce_numeric_β
                        .size            n310_cmp_test_bx, .-n310_cmp_test_bx
                        .type            n311_var_bx, @function
n311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              r11, 312
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_lit_integer_α
n311_var_β:             mov              r11, 312
                        add              rsp, 16;                             jmp   n310_cmp_test_β
                        .size            n311_var_bx, .-n311_var_bx
                        .type            n312_lit_integer_bx, @function
n312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_824_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_binop_α
n312_lit_integer_β:     mov              r11, 313
                        add              rsp, 16;                             jmp   n311_var_β
.Llit_integer_α_824_0:  .quad            1
                        .size            n312_lit_integer_bx, .-n312_lit_integer_bx
                        .type            n313_binop_bx, @function
n313_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_binop_α:           sub              rsp, 16
                        mov              r11, 314
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_825_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_825_7
.Lbinop_α_825_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_825_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_825_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_825_4
.Lbinop_α_825_3:        movq             xmm0, rsi
.Lbinop_α_825_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_825_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_825_7:                                                              jmp   n314_assign_α
.Lbinop_α_825_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_825_240
                        add              rsp, 16;                             jmp   n312_lit_integer_β
.Lbinop_α_825_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n314_assign_α
n313_binop_β:           mov              r11, 314
                        add              rsp, 16;                             jmp   n312_lit_integer_β
                        .size            n313_binop_bx, .-n313_binop_bx
                        .type            n314_assign_bx, @function
n314_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:          mov              r11, 315
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZI
                        mov              qword ptr [r9 + 40], rdx;            jmp   n315_statement_end_α
                        .size            n314_assign_bx, .-n314_assign_bx
                        .type            n315_statement_end_bx, @function
n315_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_end_α:   mov              r11, 316
                        add              rsp, 128;                            jmp   n28_stmt_mark_α
                        .size            n315_statement_end_bx, .-n315_statement_end_bx
                        .type            n316_stmt_mark_bx, @function
n316_stmt_mark_bx:
#=======================================================================================================================
#         TABLE_VARIETY = ZS                              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n316_stmt_mark_α:       mov              r11, 317
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n317_statement_begin_α
                        .size            n316_stmt_mark_bx, .-n316_stmt_mark_bx
                        .type            n317_statement_begin_bx, @function
n317_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_begin_α: mov              r11, 318;                            jmp   n318_var_α
n317_statement_begin_β: mov              r11, 318;                            jmp   RETURN
                        .size            n317_statement_begin_bx, .-n317_statement_begin_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              r11, 319
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_α
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_assign_bx, @function
n319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              r11, 320
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n320_statement_end_α
                        .size            n319_assign_bx, .-n319_assign_bx
                        .type            n320_statement_end_bx, @function
n320_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   mov              r11, 321
                        add              rsp, 16;                             jmp   RETURN
                        .size            n320_statement_end_bx, .-n320_statement_end_bx
                        .type            n321_statement_begin_bx, @function
n321_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α: mov              r11, 322;                            jmp   n322_statement_end_α
n321_statement_begin_β: mov              r11, 322;                            jmp   n323_stmt_mark_α
                        .size            n321_statement_begin_bx, .-n321_statement_begin_bx
                        .type            n322_statement_end_bx, @function
n322_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:   mov              r11, 323;                            jmp   n323_stmt_mark_α
                        .size            n322_statement_end_bx, .-n322_statement_end_bx
                        .type            n323_stmt_mark_bx, @function
n323_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of one pass  = ' TABLE_VARIETY(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
n323_stmt_mark_α:       mov              r11, 324
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n324_statement_begin_α
                        .size            n323_stmt_mark_bx, .-n323_stmt_mark_bx
                        .type            n324_statement_begin_bx, @function
n324_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α: mov              r11, 325;                            jmp   n325_lit_string_α
n324_statement_begin_β: mov              r11, 325;                            jmp   n331_stmt_mark_α
                        .size            n324_statement_begin_bx, .-n324_statement_begin_bx
                        .type            n325_lit_string_bx, @function
n325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      sub              rsp, 16
                        mov              r11, 326
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_845_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_lit_integer_α
.Llit_string_α_845_0:   .quad            .Llit_string_α_845_0_s
.Llit_string_α_845_0_s: .string          "census of one pass  = "
                        .size            n325_lit_string_bx, .-n325_lit_string_bx
                        .type            n326_lit_integer_bx, @function
n326_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     sub              rsp, 16
                        mov              r11, 327
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_846_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n327_call_α
n326_lit_integer_β:     mov              r11, 327
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n324_statement_begin_β
.Llit_integer_α_846_0:  .quad            1
                        .size            n326_lit_integer_bx, .-n326_lit_integer_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            sub              rsp, 16
                        mov              r11, 328
                        lea              rcx, [rip + .Lcall_α_sig848z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig848z:       .quad            1
                        .quad            .Lcall_α_848_2
                        .quad            .Lcall_α_848_2
                        .quad            16
.Lcall_α_848_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_848_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_848_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_848_240
                        add              rsp, 16;                             jmp   n326_lit_integer_β
.Lcall_α_848_240:                                                             jmp   n328_binop_α
n327_call_β:            mov              r11, 328;                            jmp   n326_lit_integer_β
.Lcall_β_848_0:         .quad            .Lcall_β_848_0_s
.Lcall_β_848_0_s:       .string          "TABLE_VARIETY"
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_binop_bx, @function
n328_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_binop_α:           sub              rsp, 16
                        mov              r11, 329
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
1:                                                                            jmp   n329_assign_α
n328_binop_β:           mov              r11, 329
                        add              rsp, 32;                             jmp   n326_lit_integer_β
                        .size            n328_binop_bx, .-n328_binop_bx
                        .type            n329_assign_bx, @function
n329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:          mov              r11, 330
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_850_0]
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
1:                                                                            jmp   n330_statement_end_α
.Lassign_α_850_0:       .quad            .Lassign_α_850_0_s
.Lassign_α_850_0_s:     .string          "OUTPUT"
                        .size            n329_assign_bx, .-n329_assign_bx
                        .type            n330_statement_end_bx, @function
n330_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 331
                        add              rsp, 64;                             jmp   n331_stmt_mark_α
                        .size            n330_statement_end_bx, .-n330_statement_end_bx
                        .type            n331_stmt_mark_bx, @function
n331_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' TABLE_VARIETY(40)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n331_stmt_mark_α:       mov              r11, 332
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n332_statement_begin_α
                        .size            n331_stmt_mark_bx, .-n331_stmt_mark_bx
                        .type            n332_statement_begin_bx, @function
n332_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_begin_α: mov              r11, 333;                            jmp   n333_lit_string_α
n332_statement_begin_β: mov              r11, 333;                            jmp   n339_stmt_mark_α
                        .size            n332_statement_begin_bx, .-n332_statement_begin_bx
                        .type            n333_lit_string_bx, @function
n333_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      sub              rsp, 16
                        mov              r11, 334
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n334_lit_integer_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "census of 40 passes = "
                        .size            n333_lit_string_bx, .-n333_lit_string_bx
                        .type            n334_lit_integer_bx, @function
n334_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_858_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n335_call_α
n334_lit_integer_β:     mov              r11, 335
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n332_statement_begin_β
.Llit_integer_α_858_0:  .quad            40
                        .size            n334_lit_integer_bx, .-n334_lit_integer_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        mov              r11, 336
                        lea              rcx, [rip + .Lcall_α_sig860z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig860z:       .quad            1
                        .quad            .Lcall_α_860_2
                        .quad            .Lcall_α_860_2
                        .quad            16
.Lcall_α_860_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_860_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_860_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_860_240
                        add              rsp, 16;                             jmp   n334_lit_integer_β
.Lcall_α_860_240:                                                             jmp   n336_binop_α
n335_call_β:            mov              r11, 336;                            jmp   n334_lit_integer_β
.Lcall_β_860_0:         .quad            .Lcall_β_860_0_s
.Lcall_β_860_0_s:       .string          "TABLE_VARIETY"
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_binop_bx, @function
n336_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_binop_α:           sub              rsp, 16
                        mov              r11, 337
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
1:                                                                            jmp   n337_assign_α
n336_binop_β:           mov              r11, 337
                        add              rsp, 32;                             jmp   n334_lit_integer_β
                        .size            n336_binop_bx, .-n336_binop_bx
                        .type            n337_assign_bx, @function
n337_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              r11, 338
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_862_0]
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
1:                                                                            jmp   n338_statement_end_α
.Lassign_α_862_0:       .quad            .Lassign_α_862_0_s
.Lassign_α_862_0_s:     .string          "OUTPUT"
                        .size            n337_assign_bx, .-n337_assign_bx
                        .type            n338_statement_end_bx, @function
n338_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   mov              r11, 339
                        add              rsp, 64;                             jmp   n339_stmt_mark_α
                        .size            n338_statement_end_bx, .-n338_statement_end_bx
                        .type            n339_stmt_mark_bx, @function
n339_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n339_stmt_mark_α:       mov              r11, 340
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n340_statement_begin_α
                        .size            n339_stmt_mark_bx, .-n339_stmt_mark_bx
                        .type            n340_statement_begin_bx, @function
n340_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_begin_α: mov              r11, 341;                            jmp   n341_lit_string_α
n340_statement_begin_β: mov              r11, 341;                            jmp   main_γ
                        .size            n340_statement_begin_bx, .-n340_statement_begin_bx
                        .type            n341_lit_string_bx, @function
n341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      sub              rsp, 16
                        mov              r11, 342
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_869_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n342_var_α
.Llit_string_α_869_0:   .quad            .Llit_string_α_869_0_s
.Llit_string_α_869_0_s: .string          "tab[17] = "
                        .size            n341_lit_string_bx, .-n341_lit_string_bx
                        .type            n342_var_bx, @function
n342_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              r11, 343
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_lit_integer_α
n342_var_β:             mov              r11, 343
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n340_statement_begin_β
                        .size            n342_var_bx, .-n342_var_bx
                        .type            n343_lit_integer_bx, @function
n343_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     sub              rsp, 16
                        mov              r11, 344
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n344_subscript_α
n343_lit_integer_β:     mov              r11, 344
                        add              rsp, 16;                             jmp   n342_var_β
.Llit_integer_α_871_0:  .quad            17
                        .size            n343_lit_integer_bx, .-n343_lit_integer_bx
                        .type            n344_subscript_bx, @function
n344_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_subscript_α:       sub              rsp, 16
                        mov              r11, 345
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
                        cmp              al, 104;                             jne   .Lsubscript_α_872_240
                        add              rsp, 16;                             jmp   n343_lit_integer_β
.Lsubscript_α_872_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n345_binop_α
n344_subscript_β:       mov              r11, 345
                        add              rsp, 16;                             jmp   n343_lit_integer_β
                        .size            n344_subscript_bx, .-n344_subscript_bx
                        .type            n345_binop_bx, @function
n345_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_binop_α:           sub              rsp, 16
                        mov              r11, 346
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
1:                                                                            jmp   n346_lit_string_α
n345_binop_β:           mov              r11, 346
                        add              rsp, 16;                             jmp   n344_subscript_β
                        .size            n345_binop_bx, .-n345_binop_bx
                        .type            n346_lit_string_bx, @function
n346_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      sub              rsp, 16
                        mov              r11, 347
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_binop_α
n346_lit_string_β:      mov              r11, 347
                        add              rsp, 16;                             jmp   n345_binop_β
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "   tab[\"17\"] = "
                        .size            n346_lit_string_bx, .-n346_lit_string_bx
                        .type            n347_binop_bx, @function
n347_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_binop_α:           sub              rsp, 16
                        mov              r11, 348
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
1:                                                                            jmp   n348_var_α
n347_binop_β:           mov              r11, 348
                        add              rsp, 16;                             jmp   n346_lit_string_β
                        .size            n347_binop_bx, .-n347_binop_bx
                        .type            n348_var_bx, @function
n348_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             sub              rsp, 16
                        mov              r11, 349
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_lit_string_α
n348_var_β:             mov              r11, 349
                        add              rsp, 16;                             jmp   n347_binop_β
                        .size            n348_var_bx, .-n348_var_bx
                        .type            n349_lit_string_bx, @function
n349_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      sub              rsp, 16
                        mov              r11, 350
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_877_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n350_subscript_α
n349_lit_string_β:      mov              r11, 350
                        add              rsp, 16;                             jmp   n348_var_β
.Llit_string_α_877_0:   .quad            .Llit_string_α_877_0_s
.Llit_string_α_877_0_s: .string          "17"
                        .size            n349_lit_string_bx, .-n349_lit_string_bx
                        .type            n350_subscript_bx, @function
n350_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_subscript_α:       sub              rsp, 16
                        mov              r11, 351
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
                        cmp              al, 104;                             jne   .Lsubscript_α_878_240
                        add              rsp, 16;                             jmp   n349_lit_string_β
.Lsubscript_α_878_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n351_binop_α
n350_subscript_β:       mov              r11, 351
                        add              rsp, 16;                             jmp   n349_lit_string_β
                        .size            n350_subscript_bx, .-n350_subscript_bx
                        .type            n351_binop_bx, @function
n351_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_binop_α:           sub              rsp, 16
                        mov              r11, 352
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
1:                                                                            jmp   n352_lit_string_α
n351_binop_β:           mov              r11, 352
                        add              rsp, 16;                             jmp   n350_subscript_β
                        .size            n351_binop_bx, .-n351_binop_bx
                        .type            n352_lit_string_bx, @function
n352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      sub              rsp, 16
                        mov              r11, 353
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_880_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_binop_α
n352_lit_string_β:      mov              r11, 353
                        add              rsp, 16;                             jmp   n351_binop_β
.Llit_string_α_880_0:   .quad            .Llit_string_α_880_0_s
.Llit_string_α_880_0_s: .string          "   tab[5] = "
                        .size            n352_lit_string_bx, .-n352_lit_string_bx
                        .type            n353_binop_bx, @function
n353_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_α:           sub              rsp, 16
                        mov              r11, 354
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
1:                                                                            jmp   n354_var_α
n353_binop_β:           mov              r11, 354
                        add              rsp, 16;                             jmp   n352_lit_string_β
                        .size            n353_binop_bx, .-n353_binop_bx
                        .type            n354_var_bx, @function
n354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              r11, 355
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_lit_integer_α
n354_var_β:             mov              r11, 355
                        add              rsp, 16;                             jmp   n353_binop_β
                        .size            n354_var_bx, .-n354_var_bx
                        .type            n355_lit_integer_bx, @function
n355_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     sub              rsp, 16
                        mov              r11, 356
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_883_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_subscript_α
n355_lit_integer_β:     mov              r11, 356
                        add              rsp, 16;                             jmp   n354_var_β
.Llit_integer_α_883_0:  .quad            5
                        .size            n355_lit_integer_bx, .-n355_lit_integer_bx
                        .type            n356_subscript_bx, @function
n356_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_subscript_α:       sub              rsp, 16
                        mov              r11, 357
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
                        cmp              al, 104;                             jne   .Lsubscript_α_884_240
                        add              rsp, 16;                             jmp   n355_lit_integer_β
.Lsubscript_α_884_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n357_binop_α
n356_subscript_β:       mov              r11, 357
                        add              rsp, 16;                             jmp   n355_lit_integer_β
                        .size            n356_subscript_bx, .-n356_subscript_bx
                        .type            n357_binop_bx, @function
n357_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_binop_α:           sub              rsp, 16
                        mov              r11, 358
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
1:                                                                            jmp   n358_assign_α
n357_binop_β:           mov              r11, 358
                        add              rsp, 16;                             jmp   n356_subscript_β
                        .size            n357_binop_bx, .-n357_binop_bx
                        .type            n358_assign_bx, @function
n358_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 359
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_886_0]
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
1:                                                                            jmp   n359_statement_end_α
.Lassign_α_886_0:       .quad            .Lassign_α_886_0_s
.Lassign_α_886_0_s:     .string          "OUTPUT"
                        .size            n358_assign_bx, .-n358_assign_bx
                        .type            n359_statement_end_bx, @function
n359_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:   mov              r11, 360
                        add              rsp, 272;                            jmp   main_γ
                        .size            n359_statement_end_bx, .-n359_statement_end_bx
                        .type            n360_goto_bx, @function
n360_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_goto_α:            mov              r11, 361;                            jmp   LBL__TABLE_VARIETY
n360_goto_β:            mov              r11, 361;                            jmp   main_ω
                        .size            n360_goto_bx, .-n360_goto_bx
                        .type            n361_stmt_mark_bx, @function
n361_stmt_mark_bx:
#=======================================================================================================================
# TABLE_VARIETY  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
LBL__TABLE_VARIETY:     mov              r11, 362
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n19_statement_begin_α
                        .size            n361_stmt_mark_bx, .-n361_stmt_mark_bx
                        .type            n362_goto_bx, @function
n362_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_goto_α:            mov              r11, 363;                            jmp   n28_stmt_mark_α
n362_goto_β:            mov              r11, 363;                            jmp   main_ω
                        .size            n362_goto_bx, .-n362_goto_bx
                        .type            n363_goto_bx, @function
n363_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_goto_α:            mov              r11, 364;                            jmp   n40_stmt_mark_α
n363_goto_β:            mov              r11, 364;                            jmp   main_ω
                        .size            n363_goto_bx, .-n363_goto_bx
                        .type            n364_goto_bx, @function
n364_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_goto_α:            mov              r11, 365;                            jmp   n66_stmt_mark_α
n364_goto_β:            mov              r11, 365;                            jmp   main_ω
                        .size            n364_goto_bx, .-n364_goto_bx
                        .type            n365_goto_bx, @function
n365_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_goto_α:            mov              r11, 366;                            jmp   n112_stmt_mark_α
n365_goto_β:            mov              r11, 366;                            jmp   main_ω
                        .size            n365_goto_bx, .-n365_goto_bx
                        .type            n366_goto_bx, @function
n366_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_goto_α:            mov              r11, 367;                            jmp   n191_stmt_mark_α
n366_goto_β:            mov              r11, 367;                            jmp   main_ω
                        .size            n366_goto_bx, .-n366_goto_bx
                        .type            n367_goto_bx, @function
n367_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_goto_α:            mov              r11, 368;                            jmp   n217_stmt_mark_α
n367_goto_β:            mov              r11, 368;                            jmp   main_ω
                        .size            n367_goto_bx, .-n367_goto_bx
                        .type            n368_goto_bx, @function
n368_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_goto_α:            mov              r11, 369;                            jmp   n251_stmt_mark_α
n368_goto_β:            mov              r11, 369;                            jmp   main_ω
                        .size            n368_goto_bx, .-n368_goto_bx
                        .type            n369_goto_bx, @function
n369_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_goto_α:            mov              r11, 370;                            jmp   n18_stmt_mark_α
n369_goto_β:            mov              r11, 370;                            jmp   main_ω
                        .size            n369_goto_bx, .-n369_goto_bx
                        .type            n370_define_bx, @function
n370_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 371
                        mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n370_define_bx, .-n370_define_bx
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
                        .quad            15119631338842
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            3504
                        .quad            1
                        .quad            3852688743727104
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__TABLE_VARIETY"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__TABLE_VARIETY
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            3504
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "TABLE_VARIETY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            TABLE_VARIETY_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + TABLE_VARIETY_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
