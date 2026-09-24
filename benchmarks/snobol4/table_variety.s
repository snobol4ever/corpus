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
                        mov              qword ptr [rsp + 3736], rax
                        mov              dword ptr [rsp + 3728], 160
                        mov              dword ptr [rsp + 3732], 3744
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_385_0:  .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_386_0:  .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_387_0:   .quad            .Llit_string_α_387_0_s
.Llit_string_α_387_0_s: .string          "table_variety.sno"
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
.Lcall_α_rkfnzd389:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd389]
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
                        cmp              al, 104;                             jne   .Lcall_α_388_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_388_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:172
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_stmt_mark_α
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
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0]
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_kw_assign_snobol4_α
.Llit_integer_α_394_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_kw_assign_snobol4_bx, @function
n7_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_395_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_395_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lkw_assign_snobol4_α_395_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_keyword_assign_snobol4.cpp:29
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_statement_end_α
.Lkw_assign_snobol4_α_395_0:
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
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n10_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_402_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_kw_assign_snobol4_α
.Llit_integer_α_402_0:  .quad            0
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_kw_assign_snobol4_bx, @function
n12_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_403_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_403_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lkw_assign_snobol4_α_403_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_keyword_assign_snobol4.cpp:29
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_statement_end_α
.Lkw_assign_snobol4_α_403_0:
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
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n15_statement_begin_α
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_411_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_411_1]
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_define.cpp:429
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_411_0]
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
.Ldefine_α_411_0:       .quad            .Ldefine_α_411_0_s
.Ldefine_α_411_0_s:     .string          "TABLE_VARIETY"
.Ldefine_α_411_1:       .quad            .Ldefine_α_411_1_s
.Ldefine_α_411_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_412_245
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_412_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_412_41
.Ldefine_α_412_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_412_41:      push             rcx
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
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_412_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_412_230
.Ldefine_α_412_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_412_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_define.cpp:707
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_412_230:                                                           jmp   .Ldefine_α_412_231
.Ldefine_α_412_232:     .quad            .Ldefine_α_412_232_s
.Ldefine_α_412_232_s:   .string          "TABLE_VARIETY"
.Ldefine_α_412_231:     lea              rcx, [rip + TABLE_VARIETY_γ]
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
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_412_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_412_235
.Ldefine_α_412_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_412_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_define.cpp:756
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_412_235:                                                           jmp   .Ldefine_α_412_236
.Ldefine_α_412_237:     .quad            .Ldefine_α_412_237_s
.Ldefine_α_412_237_s:   .string          "TABLE_VARIETY"
.Ldefine_α_412_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_412_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_412_110
.Ldefine_α_412_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_412_110:     push             rcx
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_412_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_412_180
.Ldefine_α_412_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_412_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_412_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_412_249
.Ldefine_α_412_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_412_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_define.cpp:804
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_412_249:     push             rcx
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
.Ldefine_α_412_245:
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
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n332_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_419_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Llit_integer_α_419_0:  .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_420_0]
                        .section         .rodata
.Lassign_α_420_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_420_1_s]
                        mov              r8, 59
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n22_statement_end_α
.Lassign_α_420_0:       .quad            .Lassign_α_420_0_s
.Lassign_α_420_0_s:     .string          "ZI"
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
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n24_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_427_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Llit_integer_α_427_0:  .quad            0
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_428_0]
                        .section         .rodata
.Lassign_α_428_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_428_1_s]
                        mov              r8, 17
                        mov              r9, 5
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
                        add              rsp, 16;                             jmp   n27_statement_end_α
.Lassign_α_428_0:       .quad            .Lassign_α_428_0_s
.Lassign_α_428_0_s:     .string          "ZS"
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
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n29_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_435_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_435_0:  .quad            64
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
.Lcall_α_rkfnzd437:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd437]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_436_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lcall_α_436_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:172
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_assign_α
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
                        mov              rdi, qword ptr [rip + .Lassign_α_438_0]
                        .section         .rodata
.Lassign_α_438_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_438_1_s]
                        mov              r8, 18
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n33_statement_end_α
.Lassign_α_438_0:       .quad            .Lassign_α_438_0_s
.Lassign_α_438_0_s:     .string          "tab"
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
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n35_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_445_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_unop_α
.Llit_integer_α_445_0:  .quad            30
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_unop.cpp:33
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_assign_α
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
                        mov              rdi, qword ptr [rip + .Lassign_α_447_0]
                        .section         .rodata
.Lassign_α_447_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_447_1_s]
                        mov              r8, 20
                        mov              r9, 7
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
                        add              rsp, 16;                             jmp   n39_statement_end_α
.Lassign_α_447_0:       .quad            .Lassign_α_447_0_s
.Lassign_α_447_0_s:     .string          "ix"
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
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n41_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_457_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_binop_α
n45_lit_integer_β:      mov              r11, 46
                        add              rsp, 16;                             jmp   n44_var_β
.Llit_integer_α_457_0:  .quad            3
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_binop_bx, @function
n46_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
                        mov              r11, 47
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_458_2
                        mov              rdx, 3
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_458_7
.Lbinop_α_458_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_458_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_458_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_458_4
.Lbinop_α_458_3:        movq             xmm0, rsi
.Lbinop_α_458_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_458_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_458_7:                                                              jmp   n47_assign_var_α
.Lbinop_α_458_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_458_240
                        add              rsp, 16;                             jmp   n45_lit_integer_β
.Lbinop_α_458_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_assign_var_α
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_460_0
                        test             rsi, rsi;                            je    .Lassign_var_α_460_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_460_238
                        add              rsp, 16;                             jmp   n46_binop_β
.Lassign_var_α_460_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_statement_end_α
.Lassign_var_α_460_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_460_239
                        add              rsp, 16;                             jmp   n46_binop_β
.Lassign_var_α_460_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_460_240
                        add              rsp, 16;                             jmp   n46_binop_β
.Lassign_var_α_460_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_statement_end_α
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
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n50_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_468_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_coerce_numeric_α
n52_lit_integer_β:      mov              r11, 53
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Llit_integer_α_468_0:  .quad            30
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_coerce_numeric_bx, @function
n53_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 54
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_470_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_470_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_470_0
.Lcoerce_numeric_α_470_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_coerce_numeric_α
.Lcoerce_numeric_α_470_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_coerce_numeric_α
n53_coerce_numeric_β:   mov              r11, 54
                        add              rsp, 16;                             jmp   n52_lit_integer_β
                        .size            n53_coerce_numeric_bx, .-n53_coerce_numeric_bx
                        .type            n54_coerce_numeric_bx, @function
n54_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 55
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_472_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_472_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_472_0
.Lcoerce_numeric_α_472_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_cmp_test_α
.Lcoerce_numeric_α_472_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_474_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_474_239
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lcmp_test_α_474_239:                                                         jmp   n56_var_α
.Lcmp_test_α_474_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_474_240
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
.Lcmp_test_α_474_240:                                                         jmp   n56_var_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_476_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_binop_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16;                             jmp   n56_var_β
.Llit_integer_α_476_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              r11, 59
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_477_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_477_7
.Lbinop_α_477_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_477_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_477_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_477_4
.Lbinop_α_477_3:        movq             xmm0, rsi
.Lbinop_α_477_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_477_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_477_7:                                                              jmp   n59_assign_α
.Lbinop_α_477_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_477_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lbinop_α_477_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_assign_α
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
                        mov              rdi, qword ptr [rip + .Lassign_α_478_0]
                        .section         .rodata
.Lassign_α_478_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_478_1_s]
                        mov              r8, 22
                        mov              r9, 9
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
                        add              rsp, 16;                             jmp   n60_statement_end_α
.Lassign_α_478_0:       .quad            .Lassign_α_478_0_s
.Lassign_α_478_0_s:     .string          "ix"
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
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n62_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_485_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_assign_α
.Llit_integer_α_485_0:  .quad            1
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_486_0]
                        .section         .rodata
.Lassign_α_486_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_486_1_s]
                        mov              r8, 24
                        mov              r9, 10
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
                        add              rsp, 16;                             jmp   n65_statement_end_α
.Lassign_α_486_0:       .quad            .Lassign_α_486_0_s
.Lassign_α_486_0_s:     .string          "sx"
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
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n67_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_string_α_494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_var_α
n69_lit_string_β:       mov              r11, 70
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
.Llit_string_α_494_0:   .quad            .Llit_string_α_494_0_s
.Llit_string_α_494_0_s: .string          "k"
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_var_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_498_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_binop_α
n73_lit_integer_β:      mov              r11, 74
                        add              rsp, 16;                             jmp   n72_var_β
.Llit_integer_α_498_0:  .quad            5
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_binop_bx, @function
n74_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 75
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_499_2
                        mov              rdx, 5
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_499_7
.Lbinop_α_499_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_499_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_499_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_499_4
.Lbinop_α_499_3:        movq             xmm0, rsi
.Lbinop_α_499_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_499_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_499_7:                                                              jmp   n75_assign_var_α
.Lbinop_α_499_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_499_240
                        add              rsp, 16;                             jmp   n73_lit_integer_β
.Lbinop_α_499_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_assign_var_α
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_501_0
                        test             rsi, rsi;                            je    .Lassign_var_α_501_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_501_238
                        add              rsp, 16;                             jmp   n74_binop_β
.Lassign_var_α_501_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_statement_end_α
.Lassign_var_α_501_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_501_239
                        add              rsp, 16;                             jmp   n74_binop_β
.Lassign_var_α_501_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_501_240
                        add              rsp, 16;                             jmp   n74_binop_β
.Lassign_var_α_501_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_statement_end_α
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
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n78_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_var_α
n80_lit_string_β:       mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "a_much_longer_key_"
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_var_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_513_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_binop_α
n84_lit_integer_β:      mov              r11, 85
                        add              rsp, 16;                             jmp   n83_var_β
.Llit_integer_α_513_0:  .quad            7
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              r11, 86
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_514_2
                        mov              rdx, 7
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_514_7
.Lbinop_α_514_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_514_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_514_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_514_4
.Lbinop_α_514_3:        movq             xmm0, rsi
.Lbinop_α_514_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_514_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_514_7:                                                              jmp   n86_assign_var_α
.Lbinop_α_514_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_514_240
                        add              rsp, 16;                             jmp   n84_lit_integer_β
.Lbinop_α_514_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_assign_var_α
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_516_0
                        test             rsi, rsi;                            je    .Lassign_var_α_516_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_516_238
                        add              rsp, 16;                             jmp   n85_binop_β
.Lassign_var_α_516_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_statement_end_α
.Lassign_var_α_516_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_516_239
                        add              rsp, 16;                             jmp   n85_binop_β
.Lassign_var_α_516_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_516_240
                        add              rsp, 16;                             jmp   n85_binop_β
.Lassign_var_α_516_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_statement_end_α
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
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n89_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_coerce_numeric_α
n91_lit_integer_β:      mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Llit_integer_α_524_0:  .quad            20
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_coerce_numeric_bx, @function
n92_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 93
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_526_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_526_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_526_0
.Lcoerce_numeric_α_526_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_coerce_numeric_α
.Lcoerce_numeric_α_526_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_coerce_numeric_α
n92_coerce_numeric_β:   mov              r11, 93
                        add              rsp, 16;                             jmp   n91_lit_integer_β
                        .size            n92_coerce_numeric_bx, .-n92_coerce_numeric_bx
                        .type            n93_coerce_numeric_bx, @function
n93_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 94
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_528_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_528_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_528_0
.Lcoerce_numeric_α_528_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_cmp_test_α
.Lcoerce_numeric_α_528_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_530_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_530_239
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lcmp_test_α_530_239:                                                         jmp   n95_var_α
.Lcmp_test_α_530_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_530_240
                        add              rsp, 16;                             jmp   n93_coerce_numeric_β
.Lcmp_test_α_530_240:                                                         jmp   n95_var_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_binop_α
n96_lit_integer_β:      mov              r11, 97
                        add              rsp, 16;                             jmp   n95_var_β
.Llit_integer_α_532_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              r11, 98
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_533_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_533_7
.Lbinop_α_533_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_533_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_533_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_533_4
.Lbinop_α_533_3:        movq             xmm0, rsi
.Lbinop_α_533_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_533_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_533_7:                                                              jmp   n98_assign_α
.Lbinop_α_533_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_533_240
                        add              rsp, 16;                             jmp   n96_lit_integer_β
.Lbinop_α_533_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_assign_α
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
                        mov              rdi, qword ptr [rip + .Lassign_α_534_0]
                        .section         .rodata
.Lassign_α_534_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_534_1_s]
                        mov              r8, 27
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n99_statement_end_α
.Lassign_α_534_0:       .quad            .Lassign_α_534_0_s
.Lassign_α_534_0_s:     .string          "sx"
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
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n101_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_string_α_542_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_lit_integer_α
n103_lit_string_β:      mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Llit_string_α_542_0:   .quad            .Llit_string_α_542_0_s
.Llit_string_α_542_0_s: .string          "17"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_lit_integer_bx, @function
n104_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_543_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_assign_var_α
n104_lit_integer_β:     mov              r11, 105
                        add              rsp, 16;                             jmp   n103_lit_string_β
.Llit_integer_α_543_0:  .quad            1700
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_545_0
                        test             rsi, rsi;                            je    .Lassign_var_α_545_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_545_238
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lassign_var_α_545_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_statement_end_α
.Lassign_var_α_545_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_545_239
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lassign_var_α_545_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_545_240
                        add              rsp, 16;                             jmp   n104_lit_integer_β
.Lassign_var_α_545_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_statement_end_α
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
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n108_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_assign_α
.Llit_integer_α_552_0:  .quad            1
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_assign_bx, @function
n110_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_553_0]
                        .section         .rodata
.Lassign_α_553_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_553_1_s]
                        mov              r8, 30
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n111_statement_end_α
.Lassign_α_553_0:       .quad            .Lassign_α_553_0_s
.Lassign_α_553_0_s:     .string          "rx"
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
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n113_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_real_α_562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_binop_α
.Llit_real_α_562_0:     .quad            4611686018427387904
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
                        cmp              al, 104;                             jne   .Lbinop_α_563_240
                        add              rsp, 32;                             jmp   n115_var_β
.Lbinop_α_563_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:320
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_var_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_565_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_integer_β:     mov              r11, 120
                        add              rsp, 16;                             jmp   n118_var_β
.Llit_integer_α_565_0:  .quad            11
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_binop_bx, @function
n120_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              r11, 121
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_566_2
                        mov              rdx, 11
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_566_7
.Lbinop_α_566_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_566_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_566_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_566_4
.Lbinop_α_566_3:        movq             xmm0, rsi
.Lbinop_α_566_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_566_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_566_7:                                                              jmp   n121_assign_var_α
.Lbinop_α_566_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_566_240
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lbinop_α_566_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_assign_var_α
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_568_0
                        test             rsi, rsi;                            je    .Lassign_var_α_568_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_568_238
                        add              rsp, 16;                             jmp   n120_binop_β
.Lassign_var_α_568_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_statement_end_α
.Lassign_var_α_568_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_568_239
                        add              rsp, 16;                             jmp   n120_binop_β
.Lassign_var_α_568_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_568_240
                        add              rsp, 16;                             jmp   n120_binop_β
.Lassign_var_α_568_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_statement_end_α
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
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n124_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_576_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_coerce_numeric_α
n126_lit_integer_β:     mov              r11, 127
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n124_statement_begin_β
.Llit_integer_α_576_0:  .quad            12
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_coerce_numeric_bx, @function
n127_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 128
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_578_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_578_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_578_0
.Lcoerce_numeric_α_578_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_coerce_numeric_α
.Lcoerce_numeric_α_578_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_coerce_numeric_α
n127_coerce_numeric_β:  mov              r11, 128
                        add              rsp, 16;                             jmp   n126_lit_integer_β
                        .size            n127_coerce_numeric_bx, .-n127_coerce_numeric_bx
                        .type            n128_coerce_numeric_bx, @function
n128_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 129
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_580_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_580_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_580_0
.Lcoerce_numeric_α_580_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_cmp_test_α
.Lcoerce_numeric_α_580_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_582_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_582_239
                        add              rsp, 16;                             jmp   n128_coerce_numeric_β
.Lcmp_test_α_582_239:                                                         jmp   n130_var_α
.Lcmp_test_α_582_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_582_240
                        add              rsp, 16;                             jmp   n128_coerce_numeric_β
.Lcmp_test_α_582_240:                                                         jmp   n130_var_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_584_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_binop_α
n131_lit_integer_β:     mov              r11, 132
                        add              rsp, 16;                             jmp   n130_var_β
.Llit_integer_α_584_0:  .quad            1
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_binop_bx, @function
n132_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           sub              rsp, 16
                        mov              r11, 133
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_585_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_585_7
.Lbinop_α_585_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_585_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_585_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_585_4
.Lbinop_α_585_3:        movq             xmm0, rsi
.Lbinop_α_585_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_585_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_585_7:                                                              jmp   n133_assign_α
.Lbinop_α_585_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_585_240
                        add              rsp, 16;                             jmp   n131_lit_integer_β
.Lbinop_α_585_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_assign_α
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
                        mov              rdi, qword ptr [rip + .Lassign_α_586_0]
                        .section         .rodata
.Lassign_α_586_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_586_1_s]
                        mov              r8, 32
                        mov              r9, 17
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
                        add              rsp, 16;                             jmp   n134_statement_end_α
.Lassign_α_586_0:       .quad            .Lassign_α_586_0_s
.Lassign_α_586_0_s:     .string          "rx"
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
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n136_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_string_α_594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_lit_integer_α
n138_lit_string_β:      mov              r11, 139
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
.Llit_string_α_594_0:   .quad            .Llit_string_α_594_0_s
.Llit_string_α_594_0_s: .string          ""
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_595_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_assign_var_α
n139_lit_integer_β:     mov              r11, 140
                        add              rsp, 16;                             jmp   n138_lit_string_β
.Llit_integer_α_595_0:  .quad            99
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_597_0
                        test             rsi, rsi;                            je    .Lassign_var_α_597_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_597_238
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lassign_var_α_597_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_statement_end_α
.Lassign_var_α_597_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_597_239
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lassign_var_α_597_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_597_240
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lassign_var_α_597_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_statement_end_α
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
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n143_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
n145_lit_integer_β:     mov              r11, 146
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n143_statement_begin_β
.Llit_integer_α_605_0:  .quad            17
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_606_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_assign_var_α
n146_lit_integer_β:     mov              r11, 147
                        add              rsp, 16;                             jmp   n145_lit_integer_β
.Llit_integer_α_606_0:  .quad            1717
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
                        cmp              dil, 24;                             jne   .Lassign_var_α_608_0
                        test             rsi, rsi;                            je    .Lassign_var_α_608_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_608_238
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lassign_var_α_608_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_statement_end_α
.Lassign_var_α_608_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_608_239
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lassign_var_α_608_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_608_240
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lassign_var_α_608_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_statement_end_α
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
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n150_statement_begin_α
                        .size            n149_stmt_mark_bx, .-n149_stmt_mark_bx
                        .type            n150_statement_begin_bx, @function
n150_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151;                            jmp   n151_var_α
n150_statement_begin_β: mov              r11, 151;                            jmp   n164_stmt_mark_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_617_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_subscript_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n152_var_β
.Llit_integer_α_617_0:  .quad            17
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
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_618_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lsubscript_α_618_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_deref_α
n154_subscript_β:       mov              r11, 155
                        add              rsp, 16;                             jmp   n153_lit_integer_β
                        .size            n154_subscript_bx, .-n154_subscript_bx
                        .type            n155_deref_bx, @function
n155_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_deref_α:           sub              rsp, 16
                        mov              r11, 156
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_619_240
                        add              rsp, 16;                             jmp   n154_subscript_β
.Lderef_α_619_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_binop_α
n155_deref_β:           mov              r11, 156
                        add              rsp, 16;                             jmp   n154_subscript_β
                        .size            n155_deref_bx, .-n155_deref_bx
                        .type            n156_binop_bx, @function
n156_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              r11, 157
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_620_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_620_7
.Lbinop_α_620_2:        and              edx, 1;                              jz    .Lbinop_α_620_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_620_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_620_4
.Lbinop_α_620_3:        movq             xmm0, rsi
.Lbinop_α_620_4:        cmp              cl, 5;                               je    .Lbinop_α_620_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_620_6
.Lbinop_α_620_5:        movq             xmm1, rdi
.Lbinop_α_620_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_620_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_620_7:                                                              jmp   n157_var_α
.Lbinop_α_620_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_620_240
                        add              rsp, 16;                             jmp   n155_deref_β
.Lbinop_α_620_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_var_α
n156_binop_β:           mov              r11, 157
                        add              rsp, 16;                             jmp   n155_deref_β
                        .size            n156_binop_bx, .-n156_binop_bx
                        .type            n157_var_bx, @function
n157_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_lit_string_α
n157_var_β:             mov              r11, 158
                        add              rsp, 16;                             jmp   n156_binop_β
                        .size            n157_var_bx, .-n157_var_bx
                        .type            n158_lit_string_bx, @function
n158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_subscript_α
n158_lit_string_β:      mov              r11, 159
                        add              rsp, 16;                             jmp   n157_var_β
.Llit_string_α_622_0:   .quad            .Llit_string_α_622_0_s
.Llit_string_α_622_0_s: .string          "17"
                        .size            n158_lit_string_bx, .-n158_lit_string_bx
                        .type            n159_subscript_bx, @function
n159_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_subscript_α:       sub              rsp, 16
                        mov              r11, 160
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_623_240
                        add              rsp, 16;                             jmp   n158_lit_string_β
.Lsubscript_α_623_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_deref_α
n159_subscript_β:       mov              r11, 160
                        add              rsp, 16;                             jmp   n158_lit_string_β
                        .size            n159_subscript_bx, .-n159_subscript_bx
                        .type            n160_deref_bx, @function
n160_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_deref_α:           sub              rsp, 16
                        mov              r11, 161
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_624_240
                        add              rsp, 16;                             jmp   n159_subscript_β
.Lderef_α_624_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_binop_α
n160_deref_β:           mov              r11, 161
                        add              rsp, 16;                             jmp   n159_subscript_β
                        .size            n160_deref_bx, .-n160_deref_bx
                        .type            n161_binop_bx, @function
n161_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:           sub              rsp, 16
                        mov              r11, 162
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_625_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_625_7
.Lbinop_α_625_2:        and              edx, 1;                              jz    .Lbinop_α_625_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_625_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_625_4
.Lbinop_α_625_3:        movq             xmm0, rsi
.Lbinop_α_625_4:        cmp              cl, 5;                               je    .Lbinop_α_625_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_625_6
.Lbinop_α_625_5:        movq             xmm1, rdi
.Lbinop_α_625_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_625_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_625_7:                                                              jmp   n162_assign_α
.Lbinop_α_625_0:        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_625_240
                        add              rsp, 16;                             jmp   n160_deref_β
.Lbinop_α_625_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_assign_α
n161_binop_β:           mov              r11, 162
                        add              rsp, 16;                             jmp   n160_deref_β
                        .size            n161_binop_bx, .-n161_binop_bx
                        .type            n162_assign_bx, @function
n162_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              r11, 163
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_626_0]
                        .section         .rodata
.Lassign_α_626_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_626_1_s]
                        mov              r8, 37
                        mov              r9, 20
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
                        add              rsp, 16;                             jmp   n163_statement_end_α
.Lassign_α_626_0:       .quad            .Lassign_α_626_0_s
.Lassign_α_626_0_s:     .string          "ZS"
                        .size            n162_assign_bx, .-n162_assign_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 164
                        add              rsp, 176;                            jmp   n164_stmt_mark_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_stmt_mark_bx, @function
n164_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n164_stmt_mark_α:       mov              r11, 165
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n165_statement_begin_α
                        .size            n164_stmt_mark_bx, .-n164_stmt_mark_bx
                        .type            n165_statement_begin_bx, @function
n165_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 166;                            jmp   n166_var_α
n165_statement_begin_β: mov              r11, 166;                            jmp   n171_stmt_mark_α
                        .size            n165_statement_begin_bx, .-n165_statement_begin_bx
                        .type            n166_var_bx, @function
n166_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
                        .size            n166_var_bx, .-n166_var_bx
                        .type            n167_lit_integer_bx, @function
n167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_634_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_lit_integer_α
n167_lit_integer_β:     mov              r11, 168
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
.Llit_integer_α_634_0:  .quad            5
                        .size            n167_lit_integer_bx, .-n167_lit_integer_bx
                        .type            n168_lit_integer_bx, @function
n168_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_assign_var_α
n168_lit_integer_β:     mov              r11, 169
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Llit_integer_α_635_0:  .quad            500
                        .size            n168_lit_integer_bx, .-n168_lit_integer_bx
                        .type            n169_assign_var_bx, @function
n169_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_var_α:      sub              rsp, 16
                        mov              r11, 170
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_637_0
                        test             rsi, rsi;                            je    .Lassign_var_α_637_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_637_238
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lassign_var_α_637_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
.Lassign_var_α_637_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_637_239
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lassign_var_α_637_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_637_240
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lassign_var_α_637_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
                        .size            n169_assign_var_bx, .-n169_assign_var_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        add              rsp, 64;                             jmp   n171_stmt_mark_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_stmt_mark_bx, @function
n171_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n171_stmt_mark_α:       mov              r11, 172
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n172_statement_begin_α
                        .size            n171_stmt_mark_bx, .-n171_stmt_mark_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α: mov              r11, 173;                            jmp   n173_var_α
n172_statement_begin_β: mov              r11, 173;                            jmp   n178_stmt_mark_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_var_bx, @function
n173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_lit_integer_α
                        .size            n173_var_bx, .-n173_var_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_645_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_lit_integer_α
n174_lit_integer_β:     mov              r11, 175
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n172_statement_begin_β
.Llit_integer_α_645_0:  .quad            5
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_646_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_assign_var_α
n175_lit_integer_β:     mov              r11, 176
                        add              rsp, 16;                             jmp   n174_lit_integer_β
.Llit_integer_α_646_0:  .quad            501
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_assign_var_bx, @function
n176_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_var_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_648_0
                        test             rsi, rsi;                            je    .Lassign_var_α_648_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_648_238
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lassign_var_α_648_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_statement_end_α
.Lassign_var_α_648_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_648_239
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lassign_var_α_648_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_648_240
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lassign_var_α_648_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_statement_end_α
                        .size            n176_assign_var_bx, .-n176_assign_var_bx
                        .type            n177_statement_end_bx, @function
n177_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        add              rsp, 64;                             jmp   n178_stmt_mark_α
                        .size            n177_statement_end_bx, .-n177_statement_end_bx
                        .type            n178_stmt_mark_bx, @function
n178_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n178_stmt_mark_α:       mov              r11, 179
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n179_statement_begin_α
                        .size            n178_stmt_mark_bx, .-n178_stmt_mark_bx
                        .type            n179_statement_begin_bx, @function
n179_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 180;                            jmp   n180_var_α
n179_statement_begin_β: mov              r11, 180;                            jmp   n188_stmt_mark_α
                        .size            n179_statement_begin_bx, .-n179_statement_begin_bx
                        .type            n180_var_bx, @function
n180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_var_α
                        .size            n180_var_bx, .-n180_var_bx
                        .type            n181_var_bx, @function
n181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_lit_integer_α
n181_var_β:             mov              r11, 182
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
                        .size            n181_var_bx, .-n181_var_bx
                        .type            n182_lit_integer_bx, @function
n182_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 183
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_657_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_subscript_α
n182_lit_integer_β:     mov              r11, 183
                        add              rsp, 16;                             jmp   n181_var_β
.Llit_integer_α_657_0:  .quad            5
                        .size            n182_lit_integer_bx, .-n182_lit_integer_bx
                        .type            n183_subscript_bx, @function
n183_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_subscript_α:       sub              rsp, 16
                        mov              r11, 184
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_658_240
                        add              rsp, 16;                             jmp   n182_lit_integer_β
.Lsubscript_α_658_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n184_deref_α
n183_subscript_β:       mov              r11, 184
                        add              rsp, 16;                             jmp   n182_lit_integer_β
                        .size            n183_subscript_bx, .-n183_subscript_bx
                        .type            n184_deref_bx, @function
n184_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_deref_α:           sub              rsp, 16
                        mov              r11, 185
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_659_240
                        add              rsp, 16;                             jmp   n183_subscript_β
.Lderef_α_659_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_binop_α
n184_deref_β:           mov              r11, 185
                        add              rsp, 16;                             jmp   n183_subscript_β
                        .size            n184_deref_bx, .-n184_deref_bx
                        .type            n185_binop_bx, @function
n185_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:           sub              rsp, 16
                        mov              r11, 186
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_660_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_660_7
.Lbinop_α_660_2:        and              edx, 1;                              jz    .Lbinop_α_660_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_660_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_660_4
.Lbinop_α_660_3:        movq             xmm0, rsi
.Lbinop_α_660_4:        cmp              cl, 5;                               je    .Lbinop_α_660_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_660_6
.Lbinop_α_660_5:        movq             xmm1, rdi
.Lbinop_α_660_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_660_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_660_7:                                                              jmp   n186_assign_α
.Lbinop_α_660_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_660_240
                        add              rsp, 16;                             jmp   n184_deref_β
.Lbinop_α_660_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_assign_α
n185_binop_β:           mov              r11, 186
                        add              rsp, 16;                             jmp   n184_deref_β
                        .size            n185_binop_bx, .-n185_binop_bx
                        .type            n186_assign_bx, @function
n186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_661_0]
                        .section         .rodata
.Lassign_α_661_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_661_1_s]
                        mov              r8, 41
                        mov              r9, 23
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
                        add              rsp, 16;                             jmp   n187_statement_end_α
.Lassign_α_661_0:       .quad            .Lassign_α_661_0_s
.Lassign_α_661_0_s:     .string          "ZS"
                        .size            n186_assign_bx, .-n186_assign_bx
                        .type            n187_statement_end_bx, @function
n187_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        add              rsp, 96;                             jmp   n188_stmt_mark_α
                        .size            n187_statement_end_bx, .-n187_statement_end_bx
                        .type            n188_stmt_mark_bx, @function
n188_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n188_stmt_mark_α:       mov              r11, 189
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n189_statement_begin_α
                        .size            n188_stmt_mark_bx, .-n188_stmt_mark_bx
                        .type            n189_statement_begin_bx, @function
n189_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α: mov              r11, 190;                            jmp   n190_lit_integer_α
n189_statement_begin_β: mov              r11, 190;                            jmp   n194_stmt_mark_α
                        .size            n189_statement_begin_bx, .-n189_statement_begin_bx
                        .type            n190_lit_integer_bx, @function
n190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_668_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_unop_α
.Llit_integer_α_668_0:  .quad            30
                        .size            n190_lit_integer_bx, .-n190_lit_integer_bx
                        .type            n191_unop_bx, @function
n191_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_unop_α:            sub              rsp, 16
                        mov              r11, 192
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_unop.cpp:33
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_assign_α
n191_unop_β:            mov              r11, 192
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
                        .size            n191_unop_bx, .-n191_unop_bx
                        .type            n192_assign_bx, @function
n192_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
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
                        mov              rdi, qword ptr [rip + .Lassign_α_670_0]
                        .section         .rodata
.Lassign_α_670_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_670_1_s]
                        mov              r8, 43
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n193_statement_end_α
.Lassign_α_670_0:       .quad            .Lassign_α_670_0_s
.Lassign_α_670_0_s:     .string          "ix"
                        .size            n192_assign_bx, .-n192_assign_bx
                        .type            n193_statement_end_bx, @function
n193_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:   mov              r11, 194
                        add              rsp, 32;                             jmp   n194_stmt_mark_α
                        .size            n193_statement_end_bx, .-n193_statement_end_bx
                        .type            n194_stmt_mark_bx, @function
n194_stmt_mark_bx:
#=======================================================================================================================
# INTREAD ZS = ZS + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n194_stmt_mark_α:       mov              r11, 195
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n195_statement_begin_α
                        .size            n194_stmt_mark_bx, .-n194_stmt_mark_bx
                        .type            n195_statement_begin_bx, @function
n195_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α: mov              r11, 196;                            jmp   n196_var_α
n195_statement_begin_β: mov              r11, 196;                            jmp   n204_stmt_mark_α
                        .size            n195_statement_begin_bx, .-n195_statement_begin_bx
                        .type            n196_var_bx, @function
n196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_var_α
                        .size            n196_var_bx, .-n196_var_bx
                        .type            n197_var_bx, @function
n197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_var_α
n197_var_β:             mov              r11, 198
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
                        .size            n197_var_bx, .-n197_var_bx
                        .type            n198_var_bx, @function
n198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_subscript_α
n198_var_β:             mov              r11, 199
                        add              rsp, 16;                             jmp   n197_var_β
                        .size            n198_var_bx, .-n198_var_bx
                        .type            n199_subscript_bx, @function
n199_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_subscript_α:       sub              rsp, 16
                        mov              r11, 200
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_680_240
                        add              rsp, 16;                             jmp   n198_var_β
.Lsubscript_α_680_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_deref_α
n199_subscript_β:       mov              r11, 200
                        add              rsp, 16;                             jmp   n198_var_β
                        .size            n199_subscript_bx, .-n199_subscript_bx
                        .type            n200_deref_bx, @function
n200_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_deref_α:           sub              rsp, 16
                        mov              r11, 201
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_681_240
                        add              rsp, 16;                             jmp   n199_subscript_β
.Lderef_α_681_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_binop_α
n200_deref_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n199_subscript_β
                        .size            n200_deref_bx, .-n200_deref_bx
                        .type            n201_binop_bx, @function
n201_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:           sub              rsp, 16
                        mov              r11, 202
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_682_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_682_7
.Lbinop_α_682_2:        and              edx, 1;                              jz    .Lbinop_α_682_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_682_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_682_4
.Lbinop_α_682_3:        movq             xmm0, rsi
.Lbinop_α_682_4:        cmp              cl, 5;                               je    .Lbinop_α_682_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_682_6
.Lbinop_α_682_5:        movq             xmm1, rdi
.Lbinop_α_682_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_682_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_682_7:                                                              jmp   n202_assign_α
.Lbinop_α_682_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_682_240
                        add              rsp, 16;                             jmp   n200_deref_β
.Lbinop_α_682_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_assign_α
n201_binop_β:           mov              r11, 202
                        add              rsp, 16;                             jmp   n200_deref_β
                        .size            n201_binop_bx, .-n201_binop_bx
                        .type            n202_assign_bx, @function
n202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              r11, 203
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_683_0]
                        .section         .rodata
.Lassign_α_683_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_683_1_s]
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n203_statement_end_α
.Lassign_α_683_0:       .quad            .Lassign_α_683_0_s
.Lassign_α_683_0_s:     .string          "ZS"
                        .size            n202_assign_bx, .-n202_assign_bx
                        .type            n203_statement_end_bx, @function
n203_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 204
                        add              rsp, 96;                             jmp   n204_stmt_mark_α
                        .size            n203_statement_end_bx, .-n203_statement_end_bx
                        .type            n204_stmt_mark_bx, @function
n204_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n204_stmt_mark_α:       mov              r11, 205
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n205_statement_begin_α
                        .size            n204_stmt_mark_bx, .-n204_stmt_mark_bx
                        .type            n205_statement_begin_bx, @function
n205_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 206;                            jmp   n206_var_α
n205_statement_begin_β: mov              r11, 206;                            jmp   n216_stmt_mark_α
                        .size            n205_statement_begin_bx, .-n205_statement_begin_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_lit_integer_α
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_lit_integer_bx, @function
n207_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:     sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_691_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_coerce_numeric_α
n207_lit_integer_β:     mov              r11, 208
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
.Llit_integer_α_691_0:  .quad            30
                        .size            n207_lit_integer_bx, .-n207_lit_integer_bx
                        .type            n208_coerce_numeric_bx, @function
n208_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 209
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_693_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_693_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_693_0
.Lcoerce_numeric_α_693_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_coerce_numeric_α
.Lcoerce_numeric_α_693_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_coerce_numeric_α
n208_coerce_numeric_β:  mov              r11, 209
                        add              rsp, 16;                             jmp   n207_lit_integer_β
                        .size            n208_coerce_numeric_bx, .-n208_coerce_numeric_bx
                        .type            n209_coerce_numeric_bx, @function
n209_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_695_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_695_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_695_0
.Lcoerce_numeric_α_695_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_cmp_test_α
.Lcoerce_numeric_α_695_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_697_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_697_239
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lcmp_test_α_697_239:                                                         jmp   n211_var_α
.Lcmp_test_α_697_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_697_240
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lcmp_test_α_697_240:                                                         jmp   n211_var_α
n210_cmp_test_β:        mov              r11, 211
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
                        .size            n210_cmp_test_bx, .-n210_cmp_test_bx
                        .type            n211_var_bx, @function
n211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_lit_integer_α
n211_var_β:             mov              r11, 212
                        add              rsp, 16;                             jmp   n210_cmp_test_β
                        .size            n211_var_bx, .-n211_var_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_699_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_binop_α
n212_lit_integer_β:     mov              r11, 213
                        add              rsp, 16;                             jmp   n211_var_β
.Llit_integer_α_699_0:  .quad            1
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_binop_bx, @function
n213_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:           sub              rsp, 16
                        mov              r11, 214
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_700_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_700_7
.Lbinop_α_700_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_700_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_700_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_700_4
.Lbinop_α_700_3:        movq             xmm0, rsi
.Lbinop_α_700_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_700_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_700_7:                                                              jmp   n214_assign_α
.Lbinop_α_700_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_700_240
                        add              rsp, 16;                             jmp   n212_lit_integer_β
.Lbinop_α_700_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_assign_α
n213_binop_β:           mov              r11, 214
                        add              rsp, 16;                             jmp   n212_lit_integer_β
                        .size            n213_binop_bx, .-n213_binop_bx
                        .type            n214_assign_bx, @function
n214_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              r11, 215
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
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
                        mov              rdi, qword ptr [rip + .Lassign_α_701_0]
                        .section         .rodata
.Lassign_α_701_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_701_1_s]
                        mov              r8, 45
                        mov              r9, 26
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
                        add              rsp, 16;                             jmp   n215_statement_end_α
.Lassign_α_701_0:       .quad            .Lassign_α_701_0_s
.Lassign_α_701_0_s:     .string          "ix"
                        .size            n214_assign_bx, .-n214_assign_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 216
                        add              rsp, 128;                            jmp   n194_stmt_mark_α
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_stmt_mark_bx, @function
n216_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n216_stmt_mark_α:       mov              r11, 217
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n217_statement_begin_α
                        .size            n216_stmt_mark_bx, .-n216_stmt_mark_bx
                        .type            n217_statement_begin_bx, @function
n217_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 218;                            jmp   n218_lit_integer_α
n217_statement_begin_β: mov              r11, 218;                            jmp   n221_stmt_mark_α
                        .size            n217_statement_begin_bx, .-n217_statement_begin_bx
                        .type            n218_lit_integer_bx, @function
n218_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_708_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_assign_α
.Llit_integer_α_708_0:  .quad            1
                        .size            n218_lit_integer_bx, .-n218_lit_integer_bx
                        .type            n219_assign_bx, @function
n219_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_709_0]
                        .section         .rodata
.Lassign_α_709_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_709_1_s]
                        mov              r8, 47
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n220_statement_end_α
.Lassign_α_709_0:       .quad            .Lassign_α_709_0_s
.Lassign_α_709_0_s:     .string          "sx"
                        .size            n219_assign_bx, .-n219_assign_bx
                        .type            n220_statement_end_bx, @function
n220_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_end_α:   mov              r11, 221
                        add              rsp, 16;                             jmp   n221_stmt_mark_α
                        .size            n220_statement_end_bx, .-n220_statement_end_bx
                        .type            n221_stmt_mark_bx, @function
n221_stmt_mark_bx:
#=======================================================================================================================
# STRREAD ZS = ZS + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n221_stmt_mark_α:       mov              r11, 222
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n222_statement_begin_α
                        .size            n221_stmt_mark_bx, .-n221_stmt_mark_bx
                        .type            n222_statement_begin_bx, @function
n222_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α: mov              r11, 223;                            jmp   n223_var_α
n222_statement_begin_β: mov              r11, 223;                            jmp   n240_stmt_mark_α
                        .size            n222_statement_begin_bx, .-n222_statement_begin_bx
                        .type            n223_var_bx, @function
n223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_var_α
                        .size            n223_var_bx, .-n223_var_bx
                        .type            n224_var_bx, @function
n224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_string_α
n224_var_β:             mov              r11, 225
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n222_statement_begin_β
                        .size            n224_var_bx, .-n224_var_bx
                        .type            n225_lit_string_bx, @function
n225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_718_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_var_α
n225_lit_string_β:      mov              r11, 226
                        add              rsp, 16;                             jmp   n224_var_β
.Llit_string_α_718_0:   .quad            .Llit_string_α_718_0_s
.Llit_string_α_718_0_s: .string          "k"
                        .size            n225_lit_string_bx, .-n225_lit_string_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_binop_α
n226_var_β:             mov              r11, 227
                        add              rsp, 16;                             jmp   n225_lit_string_β
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_binop_bx, @function
n227_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:           sub              rsp, 16
                        mov              r11, 228
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_subscript_α
n227_binop_β:           mov              r11, 228
                        add              rsp, 16;                             jmp   n226_var_β
                        .size            n227_binop_bx, .-n227_binop_bx
                        .type            n228_subscript_bx, @function
n228_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_subscript_α:       sub              rsp, 16
                        mov              r11, 229
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_721_240
                        add              rsp, 16;                             jmp   n227_binop_β
.Lsubscript_α_721_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_deref_α
n228_subscript_β:       mov              r11, 229
                        add              rsp, 16;                             jmp   n227_binop_β
                        .size            n228_subscript_bx, .-n228_subscript_bx
                        .type            n229_deref_bx, @function
n229_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_deref_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_722_240
                        add              rsp, 16;                             jmp   n228_subscript_β
.Lderef_α_722_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_binop_α
n229_deref_β:           mov              r11, 230
                        add              rsp, 16;                             jmp   n228_subscript_β
                        .size            n229_deref_bx, .-n229_deref_bx
                        .type            n230_binop_bx, @function
n230_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           sub              rsp, 16
                        mov              r11, 231
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_723_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_723_7
.Lbinop_α_723_2:        and              edx, 1;                              jz    .Lbinop_α_723_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_723_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_723_4
.Lbinop_α_723_3:        movq             xmm0, rsi
.Lbinop_α_723_4:        cmp              cl, 5;                               je    .Lbinop_α_723_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_723_6
.Lbinop_α_723_5:        movq             xmm1, rdi
.Lbinop_α_723_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_723_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_723_7:                                                              jmp   n231_var_α
.Lbinop_α_723_0:        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_723_240
                        add              rsp, 16;                             jmp   n229_deref_β
.Lbinop_α_723_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_var_α
n230_binop_β:           mov              r11, 231
                        add              rsp, 16;                             jmp   n229_deref_β
                        .size            n230_binop_bx, .-n230_binop_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 232
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_lit_string_α
n231_var_β:             mov              r11, 232
                        add              rsp, 16;                             jmp   n230_binop_β
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_lit_string_bx, @function
n232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      sub              rsp, 16
                        mov              r11, 233
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_725_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_var_α
n232_lit_string_β:      mov              r11, 233
                        add              rsp, 16;                             jmp   n231_var_β
.Llit_string_α_725_0:   .quad            .Llit_string_α_725_0_s
.Llit_string_α_725_0_s: .string          "a_much_longer_key_"
                        .size            n232_lit_string_bx, .-n232_lit_string_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_binop_α
n233_var_β:             mov              r11, 234
                        add              rsp, 16;                             jmp   n232_lit_string_β
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_binop_bx, @function
n234_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:           sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_subscript_α
n234_binop_β:           mov              r11, 235
                        add              rsp, 16;                             jmp   n233_var_β
                        .size            n234_binop_bx, .-n234_binop_bx
                        .type            n235_subscript_bx, @function
n235_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_subscript_α:       sub              rsp, 16
                        mov              r11, 236
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_728_240
                        add              rsp, 16;                             jmp   n234_binop_β
.Lsubscript_α_728_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n236_deref_α
n235_subscript_β:       mov              r11, 236
                        add              rsp, 16;                             jmp   n234_binop_β
                        .size            n235_subscript_bx, .-n235_subscript_bx
                        .type            n236_deref_bx, @function
n236_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_deref_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_729_240
                        add              rsp, 16;                             jmp   n235_subscript_β
.Lderef_α_729_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_binop_α
n236_deref_β:           mov              r11, 237
                        add              rsp, 16;                             jmp   n235_subscript_β
                        .size            n236_deref_bx, .-n236_deref_bx
                        .type            n237_binop_bx, @function
n237_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           sub              rsp, 16
                        mov              r11, 238
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_730_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_730_7
.Lbinop_α_730_2:        and              edx, 1;                              jz    .Lbinop_α_730_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_730_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_730_4
.Lbinop_α_730_3:        movq             xmm0, rsi
.Lbinop_α_730_4:        cmp              cl, 5;                               je    .Lbinop_α_730_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_730_6
.Lbinop_α_730_5:        movq             xmm1, rdi
.Lbinop_α_730_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_730_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_730_7:                                                              jmp   n238_assign_α
.Lbinop_α_730_0:        mov              rdi, qword ptr [rsp + 112]           # binop
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_730_240
                        add              rsp, 16;                             jmp   n236_deref_β
.Lbinop_α_730_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_assign_α
n237_binop_β:           mov              r11, 238
                        add              rsp, 16;                             jmp   n236_deref_β
                        .size            n237_binop_bx, .-n237_binop_bx
                        .type            n238_assign_bx, @function
n238_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:          mov              r11, 239
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_731_0]
                        .section         .rodata
.Lassign_α_731_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_731_1_s]
                        mov              r8, 48
                        mov              r9, 28
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
                        add              rsp, 16;                             jmp   n239_statement_end_α
.Lassign_α_731_0:       .quad            .Lassign_α_731_0_s
.Lassign_α_731_0_s:     .string          "ZS"
                        .size            n238_assign_bx, .-n238_assign_bx
                        .type            n239_statement_end_bx, @function
n239_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   mov              r11, 240
                        add              rsp, 240;                            jmp   n240_stmt_mark_α
                        .size            n239_statement_end_bx, .-n239_statement_end_bx
                        .type            n240_stmt_mark_bx, @function
n240_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n240_stmt_mark_α:       mov              r11, 241
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n241_statement_begin_α
                        .size            n240_stmt_mark_bx, .-n240_stmt_mark_bx
                        .type            n241_statement_begin_bx, @function
n241_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α: mov              r11, 242;                            jmp   n242_var_α
n241_statement_begin_β: mov              r11, 242;                            jmp   n252_stmt_mark_α
                        .size            n241_statement_begin_bx, .-n241_statement_begin_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_lit_integer_α
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_lit_integer_bx, @function
n243_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     sub              rsp, 16
                        mov              r11, 244
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_coerce_numeric_α
n243_lit_integer_β:     mov              r11, 244
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n241_statement_begin_β
.Llit_integer_α_739_0:  .quad            20
                        .size            n243_lit_integer_bx, .-n243_lit_integer_bx
                        .type            n244_coerce_numeric_bx, @function
n244_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 245
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_741_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_741_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_741_0
.Lcoerce_numeric_α_741_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_coerce_numeric_α
.Lcoerce_numeric_α_741_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n245_coerce_numeric_α
n244_coerce_numeric_β:  mov              r11, 245
                        add              rsp, 16;                             jmp   n243_lit_integer_β
                        .size            n244_coerce_numeric_bx, .-n244_coerce_numeric_bx
                        .type            n245_coerce_numeric_bx, @function
n245_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 246
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_743_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_743_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_743_0
.Lcoerce_numeric_α_743_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_cmp_test_α
.Lcoerce_numeric_α_743_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_745_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_745_239
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
.Lcmp_test_α_745_239:                                                         jmp   n247_var_α
.Lcmp_test_α_745_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_745_240
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
.Lcmp_test_α_745_240:                                                         jmp   n247_var_α
n246_cmp_test_β:        mov              r11, 247
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
                        .size            n246_cmp_test_bx, .-n246_cmp_test_bx
                        .type            n247_var_bx, @function
n247_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             sub              rsp, 16
                        mov              r11, 248
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_lit_integer_α
n247_var_β:             mov              r11, 248
                        add              rsp, 16;                             jmp   n246_cmp_test_β
                        .size            n247_var_bx, .-n247_var_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     sub              rsp, 16
                        mov              r11, 249
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_747_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_binop_α
n248_lit_integer_β:     mov              r11, 249
                        add              rsp, 16;                             jmp   n247_var_β
.Llit_integer_α_747_0:  .quad            1
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_binop_bx, @function
n249_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:           sub              rsp, 16
                        mov              r11, 250
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_748_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_748_7
.Lbinop_α_748_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_748_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_748_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_748_4
.Lbinop_α_748_3:        movq             xmm0, rsi
.Lbinop_α_748_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_748_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_748_7:                                                              jmp   n250_assign_α
.Lbinop_α_748_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_748_240
                        add              rsp, 16;                             jmp   n248_lit_integer_β
.Lbinop_α_748_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n250_assign_α
n249_binop_β:           mov              r11, 250
                        add              rsp, 16;                             jmp   n248_lit_integer_β
                        .size            n249_binop_bx, .-n249_binop_bx
                        .type            n250_assign_bx, @function
n250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              r11, 251
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_749_0]
                        .section         .rodata
.Lassign_α_749_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_749_1_s]
                        mov              r8, 49
                        mov              r9, 29
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
                        add              rsp, 16;                             jmp   n251_statement_end_α
.Lassign_α_749_0:       .quad            .Lassign_α_749_0_s
.Lassign_α_749_0_s:     .string          "sx"
                        .size            n250_assign_bx, .-n250_assign_bx
                        .type            n251_statement_end_bx, @function
n251_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   mov              r11, 252
                        add              rsp, 128;                            jmp   n221_stmt_mark_α
                        .size            n251_statement_end_bx, .-n251_statement_end_bx
                        .type            n252_stmt_mark_bx, @function
n252_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n252_stmt_mark_α:       mov              r11, 253
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n253_statement_begin_α
                        .size            n252_stmt_mark_bx, .-n252_stmt_mark_bx
                        .type            n253_statement_begin_bx, @function
n253_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α: mov              r11, 254;                            jmp   n254_lit_integer_α
n253_statement_begin_β: mov              r11, 254;                            jmp   n257_stmt_mark_α
                        .size            n253_statement_begin_bx, .-n253_statement_begin_bx
                        .type            n254_lit_integer_bx, @function
n254_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     sub              rsp, 16
                        mov              r11, 255
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_756_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_assign_α
.Llit_integer_α_756_0:  .quad            1
                        .size            n254_lit_integer_bx, .-n254_lit_integer_bx
                        .type            n255_assign_bx, @function
n255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_757_0]
                        .section         .rodata
.Lassign_α_757_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_757_1_s]
                        mov              r8, 51
                        mov              r9, 30
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
                        add              rsp, 16;                             jmp   n256_statement_end_α
.Lassign_α_757_0:       .quad            .Lassign_α_757_0_s
.Lassign_α_757_0_s:     .string          "rx"
                        .size            n255_assign_bx, .-n255_assign_bx
                        .type            n256_statement_end_bx, @function
n256_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   mov              r11, 257
                        add              rsp, 16;                             jmp   n257_stmt_mark_α
                        .size            n256_statement_end_bx, .-n256_statement_end_bx
                        .type            n257_stmt_mark_bx, @function
n257_stmt_mark_bx:
#=======================================================================================================================
# REALRD  ZS = ZS + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n257_stmt_mark_α:       mov              r11, 258
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n258_statement_begin_α
                        .size            n257_stmt_mark_bx, .-n257_stmt_mark_bx
                        .type            n258_statement_begin_bx, @function
n258_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α: mov              r11, 259;                            jmp   n259_var_α
n258_statement_begin_β: mov              r11, 259;                            jmp   n269_stmt_mark_α
                        .size            n258_statement_begin_bx, .-n258_statement_begin_bx
                        .type            n259_var_bx, @function
n259_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:             sub              rsp, 16
                        mov              r11, 260
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_var_α
                        .size            n259_var_bx, .-n259_var_bx
                        .type            n260_var_bx, @function
n260_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              r11, 261
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_var_α
n260_var_β:             mov              r11, 261
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n258_statement_begin_β
                        .size            n260_var_bx, .-n260_var_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 262
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_lit_real_α
n261_var_β:             mov              r11, 262
                        add              rsp, 16;                             jmp   n260_var_β
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_lit_real_bx, @function
n262_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_real_α:        sub              rsp, 16
                        mov              r11, 263
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_767_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_binop_α
.Llit_real_α_767_0:     .quad            4611686018427387904
                        .size            n262_lit_real_bx, .-n262_lit_real_bx
                        .type            n263_binop_bx, @function
n263_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
                        mov              r11, 264
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
                        cmp              al, 104;                             jne   .Lbinop_α_768_240
                        add              rsp, 32;                             jmp   n261_var_β
.Lbinop_α_768_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:320
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_subscript_α
n263_binop_β:           mov              r11, 264
                        add              rsp, 32;                             jmp   n261_var_β
                        .size            n263_binop_bx, .-n263_binop_bx
                        .type            n264_subscript_bx, @function
n264_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_subscript_α:       sub              rsp, 16
                        mov              r11, 265
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_769_240
                        add              rsp, 16;                             jmp   n263_binop_β
.Lsubscript_α_769_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_deref_α
n264_subscript_β:       mov              r11, 265
                        add              rsp, 16;                             jmp   n263_binop_β
                        .size            n264_subscript_bx, .-n264_subscript_bx
                        .type            n265_deref_bx, @function
n265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_deref_α:           sub              rsp, 16
                        mov              r11, 266
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_770_240
                        add              rsp, 16;                             jmp   n264_subscript_β
.Lderef_α_770_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_binop_α
n265_deref_β:           mov              r11, 266
                        add              rsp, 16;                             jmp   n264_subscript_β
                        .size            n265_deref_bx, .-n265_deref_bx
                        .type            n266_binop_bx, @function
n266_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              r11, 267
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_771_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_771_7
.Lbinop_α_771_2:        and              edx, 1;                              jz    .Lbinop_α_771_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_771_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_771_4
.Lbinop_α_771_3:        movq             xmm0, rsi
.Lbinop_α_771_4:        cmp              cl, 5;                               je    .Lbinop_α_771_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_771_6
.Lbinop_α_771_5:        movq             xmm1, rdi
.Lbinop_α_771_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_771_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_771_7:                                                              jmp   n267_assign_α
.Lbinop_α_771_0:        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_771_240
                        add              rsp, 16;                             jmp   n265_deref_β
.Lbinop_α_771_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_assign_α
n266_binop_β:           mov              r11, 267
                        add              rsp, 16;                             jmp   n265_deref_β
                        .size            n266_binop_bx, .-n266_binop_bx
                        .type            n267_assign_bx, @function
n267_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              r11, 268
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_772_0]
                        .section         .rodata
.Lassign_α_772_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_772_1_s]
                        mov              r8, 52
                        mov              r9, 31
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
                        add              rsp, 16;                             jmp   n268_statement_end_α
.Lassign_α_772_0:       .quad            .Lassign_α_772_0_s
.Lassign_α_772_0_s:     .string          "ZS"
                        .size            n267_assign_bx, .-n267_assign_bx
                        .type            n268_statement_end_bx, @function
n268_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   mov              r11, 269
                        add              rsp, 128;                            jmp   n269_stmt_mark_α
                        .size            n268_statement_end_bx, .-n268_statement_end_bx
                        .type            n269_stmt_mark_bx, @function
n269_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALRD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n269_stmt_mark_α:       mov              r11, 270
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n270_statement_begin_α
                        .size            n269_stmt_mark_bx, .-n269_stmt_mark_bx
                        .type            n270_statement_begin_bx, @function
n270_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α: mov              r11, 271;                            jmp   n271_var_α
n270_statement_begin_β: mov              r11, 271;                            jmp   n281_stmt_mark_α
                        .size            n270_statement_begin_bx, .-n270_statement_begin_bx
                        .type            n271_var_bx, @function
n271_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              r11, 272
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_lit_integer_α
                        .size            n271_var_bx, .-n271_var_bx
                        .type            n272_lit_integer_bx, @function
n272_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:     sub              rsp, 16
                        mov              r11, 273
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_780_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n273_coerce_numeric_α
n272_lit_integer_β:     mov              r11, 273
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n270_statement_begin_β
.Llit_integer_α_780_0:  .quad            12
                        .size            n272_lit_integer_bx, .-n272_lit_integer_bx
                        .type            n273_coerce_numeric_bx, @function
n273_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 274
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_782_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_782_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_782_0
.Lcoerce_numeric_α_782_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_coerce_numeric_α
.Lcoerce_numeric_α_782_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n274_coerce_numeric_α
n273_coerce_numeric_β:  mov              r11, 274
                        add              rsp, 16;                             jmp   n272_lit_integer_β
                        .size            n273_coerce_numeric_bx, .-n273_coerce_numeric_bx
                        .type            n274_coerce_numeric_bx, @function
n274_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 275
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_784_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_784_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_784_0
.Lcoerce_numeric_α_784_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_cmp_test_α
.Lcoerce_numeric_α_784_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n275_cmp_test_α
n274_coerce_numeric_β:  mov              r11, 275
                        add              rsp, 16;                             jmp   n273_coerce_numeric_β
                        .size            n274_coerce_numeric_bx, .-n274_coerce_numeric_bx
                        .type            n275_cmp_test_bx, @function
n275_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_cmp_test_α:        sub              rsp, 16
                        mov              r11, 276
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_786_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_786_239
                        add              rsp, 16;                             jmp   n274_coerce_numeric_β
.Lcmp_test_α_786_239:                                                         jmp   n276_var_α
.Lcmp_test_α_786_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_786_240
                        add              rsp, 16;                             jmp   n274_coerce_numeric_β
.Lcmp_test_α_786_240:                                                         jmp   n276_var_α
n275_cmp_test_β:        mov              r11, 276
                        add              rsp, 16;                             jmp   n274_coerce_numeric_β
                        .size            n275_cmp_test_bx, .-n275_cmp_test_bx
                        .type            n276_var_bx, @function
n276_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              r11, 277
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_lit_integer_α
n276_var_β:             mov              r11, 277
                        add              rsp, 16;                             jmp   n275_cmp_test_β
                        .size            n276_var_bx, .-n276_var_bx
                        .type            n277_lit_integer_bx, @function
n277_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     sub              rsp, 16
                        mov              r11, 278
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_788_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_binop_α
n277_lit_integer_β:     mov              r11, 278
                        add              rsp, 16;                             jmp   n276_var_β
.Llit_integer_α_788_0:  .quad            1
                        .size            n277_lit_integer_bx, .-n277_lit_integer_bx
                        .type            n278_binop_bx, @function
n278_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              r11, 279
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_789_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_789_7
.Lbinop_α_789_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_789_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_789_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_789_4
.Lbinop_α_789_3:        movq             xmm0, rsi
.Lbinop_α_789_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_789_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_789_7:                                                              jmp   n279_assign_α
.Lbinop_α_789_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_789_240
                        add              rsp, 16;                             jmp   n277_lit_integer_β
.Lbinop_α_789_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n279_assign_α
n278_binop_β:           mov              r11, 279
                        add              rsp, 16;                             jmp   n277_lit_integer_β
                        .size            n278_binop_bx, .-n278_binop_bx
                        .type            n279_assign_bx, @function
n279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_790_0]
                        .section         .rodata
.Lassign_α_790_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_790_1_s]
                        mov              r8, 53
                        mov              r9, 32
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
                        add              rsp, 16;                             jmp   n280_statement_end_α
.Lassign_α_790_0:       .quad            .Lassign_α_790_0_s
.Lassign_α_790_0_s:     .string          "rx"
                        .size            n279_assign_bx, .-n279_assign_bx
                        .type            n280_statement_end_bx, @function
n280_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 281
                        add              rsp, 128;                            jmp   n257_stmt_mark_α
                        .size            n280_statement_end_bx, .-n280_statement_end_bx
                        .type            n281_stmt_mark_bx, @function
n281_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n281_stmt_mark_α:       mov              r11, 282
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n282_statement_begin_α
                        .size            n281_stmt_mark_bx, .-n281_stmt_mark_bx
                        .type            n282_statement_begin_bx, @function
n282_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α: mov              r11, 283;                            jmp   n283_var_α
n282_statement_begin_β: mov              r11, 283;                            jmp   n291_stmt_mark_α
                        .size            n282_statement_begin_bx, .-n282_statement_begin_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 284
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_var_α
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 285
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_lit_string_α
n284_var_β:             mov              r11, 285
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_lit_string_bx, @function
n285_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      sub              rsp, 16
                        mov              r11, 286
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_799_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_subscript_α
n285_lit_string_β:      mov              r11, 286
                        add              rsp, 16;                             jmp   n284_var_β
.Llit_string_α_799_0:   .quad            .Llit_string_α_799_0_s
.Llit_string_α_799_0_s: .string          ""
                        .size            n285_lit_string_bx, .-n285_lit_string_bx
                        .type            n286_subscript_bx, @function
n286_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_subscript_α:       sub              rsp, 16
                        mov              r11, 287
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_800_240
                        add              rsp, 16;                             jmp   n285_lit_string_β
.Lsubscript_α_800_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n287_deref_α
n286_subscript_β:       mov              r11, 287
                        add              rsp, 16;                             jmp   n285_lit_string_β
                        .size            n286_subscript_bx, .-n286_subscript_bx
                        .type            n287_deref_bx, @function
n287_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_deref_α:           sub              rsp, 16
                        mov              r11, 288
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_801_240
                        add              rsp, 16;                             jmp   n286_subscript_β
.Lderef_α_801_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n288_binop_α
n287_deref_β:           mov              r11, 288
                        add              rsp, 16;                             jmp   n286_subscript_β
                        .size            n287_deref_bx, .-n287_deref_bx
                        .type            n288_binop_bx, @function
n288_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_binop_α:           sub              rsp, 16
                        mov              r11, 289
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_802_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_802_7
.Lbinop_α_802_2:        and              edx, 1;                              jz    .Lbinop_α_802_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_802_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_802_4
.Lbinop_α_802_3:        movq             xmm0, rsi
.Lbinop_α_802_4:        cmp              cl, 5;                               je    .Lbinop_α_802_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_802_6
.Lbinop_α_802_5:        movq             xmm1, rdi
.Lbinop_α_802_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_802_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_802_7:                                                              jmp   n289_assign_α
.Lbinop_α_802_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_802_240
                        add              rsp, 16;                             jmp   n287_deref_β
.Lbinop_α_802_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_assign_α
n288_binop_β:           mov              r11, 289
                        add              rsp, 16;                             jmp   n287_deref_β
                        .size            n288_binop_bx, .-n288_binop_bx
                        .type            n289_assign_bx, @function
n289_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_803_0]
                        .section         .rodata
.Lassign_α_803_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_803_1_s]
                        mov              r8, 54
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
                        pop              rax
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
                        add              rsp, 16;                             jmp   n290_statement_end_α
.Lassign_α_803_0:       .quad            .Lassign_α_803_0_s
.Lassign_α_803_0_s:     .string          "ZS"
                        .size            n289_assign_bx, .-n289_assign_bx
                        .type            n290_statement_end_bx, @function
n290_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:   mov              r11, 291
                        add              rsp, 96;                             jmp   n291_stmt_mark_α
                        .size            n290_statement_end_bx, .-n290_statement_end_bx
                        .type            n291_stmt_mark_bx, @function
n291_stmt_mark_bx:
#=======================================================================================================================
#         ZS = ZS + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n291_stmt_mark_α:       mov              r11, 292
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n292_statement_begin_α
                        .size            n291_stmt_mark_bx, .-n291_stmt_mark_bx
                        .type            n292_statement_begin_bx, @function
n292_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_begin_α: mov              r11, 293;                            jmp   n293_var_α
n292_statement_begin_β: mov              r11, 293;                            jmp   n315_stmt_mark_α
                        .size            n292_statement_begin_bx, .-n292_statement_begin_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 294
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_var_α
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_var_bx, @function
n294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 295
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_lit_integer_α
n294_var_β:             mov              r11, 295
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
                        .size            n294_var_bx, .-n294_var_bx
                        .type            n295_lit_integer_bx, @function
n295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_812_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_subscript_α
n295_lit_integer_β:     mov              r11, 296
                        add              rsp, 16;                             jmp   n294_var_β
.Llit_integer_α_812_0:  .quad            9999
                        .size            n295_lit_integer_bx, .-n295_lit_integer_bx
                        .type            n296_subscript_bx, @function
n296_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       sub              rsp, 16
                        mov              r11, 297
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_813_240
                        add              rsp, 16;                             jmp   n295_lit_integer_β
.Lsubscript_α_813_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_deref_α
n296_subscript_β:       mov              r11, 297
                        add              rsp, 16;                             jmp   n295_lit_integer_β
                        .size            n296_subscript_bx, .-n296_subscript_bx
                        .type            n297_deref_bx, @function
n297_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_deref_α:           sub              rsp, 16
                        mov              r11, 298
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_814_240
                        add              rsp, 16;                             jmp   n296_subscript_β
.Lderef_α_814_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n298_call_α
n297_deref_β:           mov              r11, 298
                        add              rsp, 16;                             jmp   n296_subscript_β
                        .size            n297_deref_bx, .-n297_deref_bx
                        .type            n298_call_bx, @function
n298_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            sub              rsp, 16
                        mov              r11, 299
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd816:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd816]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_815_240
                        add              rsp, 16;                             jmp   n297_deref_β
.Lcall_α_815_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:172
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n299_binop_α
n298_call_β:            mov              r11, 299
                        add              rsp, 16;                             jmp   n297_deref_β
                        .size            n298_call_bx, .-n298_call_bx
                        .type            n299_binop_bx, @function
n299_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_binop_α:           sub              rsp, 16
                        mov              r11, 300
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_817_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_817_7
.Lbinop_α_817_2:        and              edx, 1;                              jz    .Lbinop_α_817_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_817_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_817_4
.Lbinop_α_817_3:        movq             xmm0, rsi
.Lbinop_α_817_4:        cmp              cl, 5;                               je    .Lbinop_α_817_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_817_6
.Lbinop_α_817_5:        movq             xmm1, rdi
.Lbinop_α_817_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_817_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_817_7:                                                              jmp   n300_var_α
.Lbinop_α_817_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_817_240
                        add              rsp, 32;                             jmp   n297_deref_β
.Lbinop_α_817_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n300_var_α
n299_binop_β:           mov              r11, 300
                        add              rsp, 32;                             jmp   n297_deref_β
                        .size            n299_binop_bx, .-n299_binop_bx
                        .type            n300_var_bx, @function
n300_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             sub              rsp, 16
                        mov              r11, 301
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_lit_string_α
n300_var_β:             mov              r11, 301
                        add              rsp, 16;                             jmp   n299_binop_β
                        .size            n300_var_bx, .-n300_var_bx
                        .type            n301_lit_string_bx, @function
n301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      sub              rsp, 16
                        mov              r11, 302
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_819_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n302_subscript_α
n301_lit_string_β:      mov              r11, 302
                        add              rsp, 16;                             jmp   n300_var_β
.Llit_string_α_819_0:   .quad            .Llit_string_α_819_0_s
.Llit_string_α_819_0_s: .string          "absent"
                        .size            n301_lit_string_bx, .-n301_lit_string_bx
                        .type            n302_subscript_bx, @function
n302_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_subscript_α:       sub              rsp, 16
                        mov              r11, 303
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_820_240
                        add              rsp, 16;                             jmp   n301_lit_string_β
.Lsubscript_α_820_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n303_deref_α
n302_subscript_β:       mov              r11, 303
                        add              rsp, 16;                             jmp   n301_lit_string_β
                        .size            n302_subscript_bx, .-n302_subscript_bx
                        .type            n303_deref_bx, @function
n303_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_deref_α:           sub              rsp, 16
                        mov              r11, 304
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_821_240
                        add              rsp, 16;                             jmp   n302_subscript_β
.Lderef_α_821_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n304_call_α
n303_deref_β:           mov              r11, 304
                        add              rsp, 16;                             jmp   n302_subscript_β
                        .size            n303_deref_bx, .-n303_deref_bx
                        .type            n304_call_bx, @function
n304_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            sub              rsp, 16
                        mov              r11, 305
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd823:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd823]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_822_240
                        add              rsp, 16;                             jmp   n303_deref_β
.Lcall_α_822_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:172
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_binop_α
n304_call_β:            mov              r11, 305
                        add              rsp, 16;                             jmp   n303_deref_β
                        .size            n304_call_bx, .-n304_call_bx
                        .type            n305_binop_bx, @function
n305_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_binop_α:           sub              rsp, 16
                        mov              r11, 306
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_824_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_824_7
.Lbinop_α_824_2:        and              edx, 1;                              jz    .Lbinop_α_824_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_824_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_824_4
.Lbinop_α_824_3:        movq             xmm0, rsi
.Lbinop_α_824_4:        cmp              cl, 5;                               je    .Lbinop_α_824_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_824_6
.Lbinop_α_824_5:        movq             xmm1, rdi
.Lbinop_α_824_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_824_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_824_7:                                                              jmp   n306_var_α
.Lbinop_α_824_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_824_240
                        add              rsp, 32;                             jmp   n303_deref_β
.Lbinop_α_824_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_var_α
n305_binop_β:           mov              r11, 306
                        add              rsp, 32;                             jmp   n303_deref_β
                        .size            n305_binop_bx, .-n305_binop_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              r11, 307
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_lit_integer_α
n306_var_β:             mov              r11, 307
                        add              rsp, 16;                             jmp   n305_binop_β
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_lit_integer_bx, @function
n307_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     sub              rsp, 16
                        mov              r11, 308
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_826_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_unop_α
n307_lit_integer_β:     mov              r11, 308
                        add              rsp, 16;                             jmp   n306_var_β
.Llit_integer_α_826_0:  .quad            9999
                        .size            n307_lit_integer_bx, .-n307_lit_integer_bx
                        .type            n308_unop_bx, @function
n308_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_unop_α:            sub              rsp, 16
                        mov              r11, 309
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
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_unop.cpp:33
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n309_subscript_α
n308_unop_β:            mov              r11, 309
                        add              rsp, 16;                             jmp   n307_lit_integer_β
                        .size            n308_unop_bx, .-n308_unop_bx
                        .type            n309_subscript_bx, @function
n309_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       sub              rsp, 16
                        mov              r11, 310
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_828_240
                        add              rsp, 16;                             jmp   n308_unop_β
.Lsubscript_α_828_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n310_deref_α
n309_subscript_β:       mov              r11, 310
                        add              rsp, 16;                             jmp   n308_unop_β
                        .size            n309_subscript_bx, .-n309_subscript_bx
                        .type            n310_deref_bx, @function
n310_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_deref_α:           sub              rsp, 16
                        mov              r11, 311
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_829_240
                        add              rsp, 16;                             jmp   n309_subscript_β
.Lderef_α_829_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_call_α
n310_deref_β:           mov              r11, 311
                        add              rsp, 16;                             jmp   n309_subscript_β
                        .size            n310_deref_bx, .-n310_deref_bx
                        .type            n311_call_bx, @function
n311_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            sub              rsp, 16
                        mov              r11, 312
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd831:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd831]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_830_240
                        add              rsp, 16;                             jmp   n310_deref_β
.Lcall_α_830_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:172
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_binop_α
n311_call_β:            mov              r11, 312
                        add              rsp, 16;                             jmp   n310_deref_β
                        .size            n311_call_bx, .-n311_call_bx
                        .type            n312_binop_bx, @function
n312_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_binop_α:           sub              rsp, 16
                        mov              r11, 313
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_832_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_832_7
.Lbinop_α_832_2:        and              edx, 1;                              jz    .Lbinop_α_832_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_832_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_832_4
.Lbinop_α_832_3:        movq             xmm0, rsi
.Lbinop_α_832_4:        cmp              cl, 5;                               je    .Lbinop_α_832_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_832_6
.Lbinop_α_832_5:        movq             xmm1, rdi
.Lbinop_α_832_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_832_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_832_7:                                                              jmp   n313_assign_α
.Lbinop_α_832_0:        mov              rdi, qword ptr [rsp + 112]           # binop
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_832_240
                        add              rsp, 32;                             jmp   n310_deref_β
.Lbinop_α_832_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n313_assign_α
n312_binop_β:           mov              r11, 313
                        add              rsp, 32;                             jmp   n310_deref_β
                        .size            n312_binop_bx, .-n312_binop_bx
                        .type            n313_assign_bx, @function
n313_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              r11, 314
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_833_0]
                        .section         .rodata
.Lassign_α_833_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_833_1_s]
                        mov              r8, 56
                        mov              r9, 34
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
                        add              rsp, 16;                             jmp   n314_statement_end_α
.Lassign_α_833_0:       .quad            .Lassign_α_833_0_s
.Lassign_α_833_0_s:     .string          "ZS"
                        .size            n313_assign_bx, .-n313_assign_bx
                        .type            n314_statement_end_bx, @function
n314_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:   mov              r11, 315
                        add              rsp, 320;                            jmp   n315_stmt_mark_α
                        .size            n314_statement_end_bx, .-n314_statement_end_bx
                        .type            n315_stmt_mark_bx, @function
n315_stmt_mark_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n315_stmt_mark_α:       mov              r11, 316
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n316_statement_begin_α
                        .size            n315_stmt_mark_bx, .-n315_stmt_mark_bx
                        .type            n316_statement_begin_bx, @function
n316_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_begin_α: mov              r11, 317;                            jmp   n317_var_α
n316_statement_begin_β: mov              r11, 317;                            jmp   n327_stmt_mark_α
                        .size            n316_statement_begin_bx, .-n316_statement_begin_bx
                        .type            n317_var_bx, @function
n317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              r11, 318
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_var_α
                        .size            n317_var_bx, .-n317_var_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              r11, 319
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_coerce_numeric_α
n318_var_β:             mov              r11, 319
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_coerce_numeric_bx, @function
n319_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 320
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_843_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_843_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_843_0
.Lcoerce_numeric_α_843_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n320_coerce_numeric_α
.Lcoerce_numeric_α_843_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n320_coerce_numeric_α
n319_coerce_numeric_β:  mov              r11, 320
                        add              rsp, 16;                             jmp   n318_var_β
                        .size            n319_coerce_numeric_bx, .-n319_coerce_numeric_bx
                        .type            n320_coerce_numeric_bx, @function
n320_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 321
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_845_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_845_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_845_0
.Lcoerce_numeric_α_845_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n321_cmp_test_α
.Lcoerce_numeric_α_845_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n321_cmp_test_α
n320_coerce_numeric_β:  mov              r11, 321
                        add              rsp, 16;                             jmp   n319_coerce_numeric_β
                        .size            n320_coerce_numeric_bx, .-n320_coerce_numeric_bx
                        .type            n321_cmp_test_bx, @function
n321_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_cmp_test_α:        sub              rsp, 16
                        mov              r11, 322
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_847_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_847_239
                        add              rsp, 16;                             jmp   n320_coerce_numeric_β
.Lcmp_test_α_847_239:                                                         jmp   n322_var_α
.Lcmp_test_α_847_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_847_240
                        add              rsp, 16;                             jmp   n320_coerce_numeric_β
.Lcmp_test_α_847_240:                                                         jmp   n322_var_α
n321_cmp_test_β:        mov              r11, 322
                        add              rsp, 16;                             jmp   n320_coerce_numeric_β
                        .size            n321_cmp_test_bx, .-n321_cmp_test_bx
                        .type            n322_var_bx, @function
n322_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              r11, 323
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_lit_integer_α
n322_var_β:             mov              r11, 323
                        add              rsp, 16;                             jmp   n321_cmp_test_β
                        .size            n322_var_bx, .-n322_var_bx
                        .type            n323_lit_integer_bx, @function
n323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_849_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_binop_α
n323_lit_integer_β:     mov              r11, 324
                        add              rsp, 16;                             jmp   n322_var_β
.Llit_integer_α_849_0:  .quad            1
                        .size            n323_lit_integer_bx, .-n323_lit_integer_bx
                        .type            n324_binop_bx, @function
n324_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              r11, 325
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_850_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_850_7
.Lbinop_α_850_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_850_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_850_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_850_4
.Lbinop_α_850_3:        movq             xmm0, rsi
.Lbinop_α_850_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_850_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_850_7:                                                              jmp   n325_assign_α
.Lbinop_α_850_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_850_240
                        add              rsp, 16;                             jmp   n323_lit_integer_β
.Lbinop_α_850_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_assign_α
n324_binop_β:           mov              r11, 325
                        add              rsp, 16;                             jmp   n323_lit_integer_β
                        .size            n324_binop_bx, .-n324_binop_bx
                        .type            n325_assign_bx, @function
n325_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:          mov              r11, 326
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_851_0]
                        .section         .rodata
.Lassign_α_851_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_851_1_s]
                        mov              r8, 57
                        mov              r9, 35
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
                        add              rsp, 16;                             jmp   n326_statement_end_α
.Lassign_α_851_0:       .quad            .Lassign_α_851_0_s
.Lassign_α_851_0_s:     .string          "ZI"
                        .size            n325_assign_bx, .-n325_assign_bx
                        .type            n326_statement_end_bx, @function
n326_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:   mov              r11, 327
                        add              rsp, 128;                            jmp   n28_stmt_mark_α
                        .size            n326_statement_end_bx, .-n326_statement_end_bx
                        .type            n327_stmt_mark_bx, @function
n327_stmt_mark_bx:
#=======================================================================================================================
#         TABLE_VARIETY = ZS                              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n327_stmt_mark_α:       mov              r11, 328
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n328_statement_begin_α
                        .size            n327_stmt_mark_bx, .-n327_stmt_mark_bx
                        .type            n328_statement_begin_bx, @function
n328_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α: mov              r11, 329;                            jmp   n329_var_α
n328_statement_begin_β: mov              r11, 329;                            jmp   RETURN
                        .size            n328_statement_begin_bx, .-n328_statement_begin_bx
                        .type            n329_var_bx, @function
n329_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              r11, 330
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_assign_α
                        .size            n329_var_bx, .-n329_var_bx
                        .type            n330_assign_bx, @function
n330_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
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
                        mov              rdi, qword ptr [rip + .Lassign_α_859_0]
                        .section         .rodata
.Lassign_α_859_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_859_1_s]
                        mov              r8, 58
                        mov              r9, 36
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
                        add              rsp, 16;                             jmp   n331_statement_end_α
.Lassign_α_859_0:       .quad            .Lassign_α_859_0_s
.Lassign_α_859_0_s:     .string          "TABLE_VARIETY"
                        .size            n330_assign_bx, .-n330_assign_bx
                        .type            n331_statement_end_bx, @function
n331_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:   mov              r11, 332
                        add              rsp, 16;                             jmp   RETURN
                        .size            n331_statement_end_bx, .-n331_statement_end_bx
                        .type            n332_statement_begin_bx, @function
n332_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_begin_α: mov              r11, 333;                            jmp   n333_statement_end_α
n332_statement_begin_β: mov              r11, 333;                            jmp   n334_stmt_mark_α
                        .size            n332_statement_begin_bx, .-n332_statement_begin_bx
                        .type            n333_statement_end_bx, @function
n333_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_end_α:   mov              r11, 334;                            jmp   n334_stmt_mark_α
                        .size            n333_statement_end_bx, .-n333_statement_end_bx
                        .type            n334_stmt_mark_bx, @function
n334_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of one pass  = ' TABLE_VARIETY(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
n334_stmt_mark_α:       mov              r11, 335
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n335_statement_begin_α
                        .size            n334_stmt_mark_bx, .-n334_stmt_mark_bx
                        .type            n335_statement_begin_bx, @function
n335_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_begin_α: mov              r11, 336;                            jmp   n336_lit_string_α
n335_statement_begin_β: mov              r11, 336;                            jmp   n342_stmt_mark_α
                        .size            n335_statement_begin_bx, .-n335_statement_begin_bx
                        .type            n336_lit_string_bx, @function
n336_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      sub              rsp, 16
                        mov              r11, 337
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_870_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n337_lit_integer_α
.Llit_string_α_870_0:   .quad            .Llit_string_α_870_0_s
.Llit_string_α_870_0_s: .string          "census of one pass  = "
                        .size            n336_lit_string_bx, .-n336_lit_string_bx
                        .type            n337_lit_integer_bx, @function
n337_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     sub              rsp, 16
                        mov              r11, 338
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n338_call_α
n337_lit_integer_β:     mov              r11, 338
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n335_statement_begin_β
.Llit_integer_α_871_0:  .quad            1
                        .size            n337_lit_integer_bx, .-n337_lit_integer_bx
                        .type            n338_call_bx, @function
n338_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_call_α:            sub              rsp, 16
                        mov              r11, 339
                        lea              rcx, [rip + .Lcall_α_sig873z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig873z:       .quad            1
                        .quad            .Lcall_α_873_2
                        .quad            .Lcall_α_873_2
                        .quad            16
.Lcall_α_873_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_873_29
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
.Lcall_α_873_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_873_240
                        add              rsp, 16;                             jmp   n337_lit_integer_β
.Lcall_α_873_240:                                                             jmp   n339_binop_α
n338_call_β:            mov              r11, 339;                            jmp   n337_lit_integer_β
.Lcall_β_873_0:         .quad            .Lcall_β_873_0_s
.Lcall_β_873_0_s:       .string          "TABLE_VARIETY"
                        .size            n338_call_bx, .-n338_call_bx
                        .type            n339_binop_bx, @function
n339_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_binop_α:           sub              rsp, 16
                        mov              r11, 340
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n340_assign_α
n339_binop_β:           mov              r11, 340
                        add              rsp, 32;                             jmp   n337_lit_integer_β
                        .size            n339_binop_bx, .-n339_binop_bx
                        .type            n340_assign_bx, @function
n340_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:          mov              r11, 341
                        mov              rax, qword ptr [rsp + 0]             # binop
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
                        mov              rdi, qword ptr [rip + .Lassign_α_875_0]
                        .section         .rodata
.Lassign_α_875_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_875_1_s]
                        mov              r8, 61
                        mov              r9, 38
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_875_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 16;                             jmp   n341_statement_end_α
.Lassign_α_875_0:       .quad            .Lassign_α_875_0_s
.Lassign_α_875_0_s:     .string          "OUTPUT"
                        .size            n340_assign_bx, .-n340_assign_bx
                        .type            n341_statement_end_bx, @function
n341_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:   mov              r11, 342
                        add              rsp, 64;                             jmp   n342_stmt_mark_α
                        .size            n341_statement_end_bx, .-n341_statement_end_bx
                        .type            n342_stmt_mark_bx, @function
n342_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' TABLE_VARIETY(40)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n342_stmt_mark_α:       mov              r11, 343
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n343_statement_begin_α
                        .size            n342_stmt_mark_bx, .-n342_stmt_mark_bx
                        .type            n343_statement_begin_bx, @function
n343_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_begin_α: mov              r11, 344;                            jmp   n344_lit_string_α
n343_statement_begin_β: mov              r11, 344;                            jmp   n350_stmt_mark_α
                        .size            n343_statement_begin_bx, .-n343_statement_begin_bx
                        .type            n344_lit_string_bx, @function
n344_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      sub              rsp, 16
                        mov              r11, 345
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_882_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n345_lit_integer_α
.Llit_string_α_882_0:   .quad            .Llit_string_α_882_0_s
.Llit_string_α_882_0_s: .string          "census of 40 passes = "
                        .size            n344_lit_string_bx, .-n344_lit_string_bx
                        .type            n345_lit_integer_bx, @function
n345_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:     sub              rsp, 16
                        mov              r11, 346
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_883_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n346_call_α
n345_lit_integer_β:     mov              r11, 346
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n343_statement_begin_β
.Llit_integer_α_883_0:  .quad            40
                        .size            n345_lit_integer_bx, .-n345_lit_integer_bx
                        .type            n346_call_bx, @function
n346_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_α:            sub              rsp, 16
                        mov              r11, 347
                        lea              rcx, [rip + .Lcall_α_sig885z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig885z:       .quad            1
                        .quad            .Lcall_α_885_2
                        .quad            .Lcall_α_885_2
                        .quad            16
.Lcall_α_885_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_885_29
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
.Lcall_α_885_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_885_240
                        add              rsp, 16;                             jmp   n345_lit_integer_β
.Lcall_α_885_240:                                                             jmp   n347_binop_α
n346_call_β:            mov              r11, 347;                            jmp   n345_lit_integer_β
.Lcall_β_885_0:         .quad            .Lcall_β_885_0_s
.Lcall_β_885_0_s:       .string          "TABLE_VARIETY"
                        .size            n346_call_bx, .-n346_call_bx
                        .type            n347_binop_bx, @function
n347_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_binop_α:           sub              rsp, 16
                        mov              r11, 348
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n348_assign_α
n347_binop_β:           mov              r11, 348
                        add              rsp, 32;                             jmp   n345_lit_integer_β
                        .size            n347_binop_bx, .-n347_binop_bx
                        .type            n348_assign_bx, @function
n348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 349
                        mov              rax, qword ptr [rsp + 0]             # binop
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
                        mov              rdi, qword ptr [rip + .Lassign_α_887_0]
                        .section         .rodata
.Lassign_α_887_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_887_1_s]
                        mov              r8, 62
                        mov              r9, 39
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_887_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 16;                             jmp   n349_statement_end_α
.Lassign_α_887_0:       .quad            .Lassign_α_887_0_s
.Lassign_α_887_0_s:     .string          "OUTPUT"
                        .size            n348_assign_bx, .-n348_assign_bx
                        .type            n349_statement_end_bx, @function
n349_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 350
                        add              rsp, 64;                             jmp   n350_stmt_mark_α
                        .size            n349_statement_end_bx, .-n349_statement_end_bx
                        .type            n350_stmt_mark_bx, @function
n350_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n350_stmt_mark_α:       mov              r11, 351
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n351_statement_begin_α
                        .size            n350_stmt_mark_bx, .-n350_stmt_mark_bx
                        .type            n351_statement_begin_bx, @function
n351_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_begin_α: mov              r11, 352;                            jmp   n352_lit_string_α
n351_statement_begin_β: mov              r11, 352;                            jmp   main_γ
                        .size            n351_statement_begin_bx, .-n351_statement_begin_bx
                        .type            n352_lit_string_bx, @function
n352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      sub              rsp, 16
                        mov              r11, 353
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_var_α
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          "tab[17] = "
                        .size            n352_lit_string_bx, .-n352_lit_string_bx
                        .type            n353_var_bx, @function
n353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             sub              rsp, 16
                        mov              r11, 354
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_lit_integer_α
n353_var_β:             mov              r11, 354
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n351_statement_begin_β
                        .size            n353_var_bx, .-n353_var_bx
                        .type            n354_lit_integer_bx, @function
n354_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     sub              rsp, 16
                        mov              r11, 355
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_896_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_subscript_α
n354_lit_integer_β:     mov              r11, 355
                        add              rsp, 16;                             jmp   n353_var_β
.Llit_integer_α_896_0:  .quad            17
                        .size            n354_lit_integer_bx, .-n354_lit_integer_bx
                        .type            n355_subscript_bx, @function
n355_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_subscript_α:       sub              rsp, 16
                        mov              r11, 356
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_897_240
                        add              rsp, 16;                             jmp   n354_lit_integer_β
.Lsubscript_α_897_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n356_deref_α
n355_subscript_β:       mov              r11, 356
                        add              rsp, 16;                             jmp   n354_lit_integer_β
                        .size            n355_subscript_bx, .-n355_subscript_bx
                        .type            n356_deref_bx, @function
n356_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_deref_α:           sub              rsp, 16
                        mov              r11, 357
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_898_240
                        add              rsp, 16;                             jmp   n355_subscript_β
.Lderef_α_898_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n357_binop_α
n356_deref_β:           mov              r11, 357
                        add              rsp, 16;                             jmp   n355_subscript_β
                        .size            n356_deref_bx, .-n356_deref_bx
                        .type            n357_binop_bx, @function
n357_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_binop_α:           sub              rsp, 16
                        mov              r11, 358
                        mov              rdi, qword ptr [rsp + 80]            # lit_string
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n358_lit_string_α
n357_binop_β:           mov              r11, 358
                        add              rsp, 16;                             jmp   n356_deref_β
                        .size            n357_binop_bx, .-n357_binop_bx
                        .type            n358_lit_string_bx, @function
n358_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      sub              rsp, 16
                        mov              r11, 359
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_900_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_binop_α
n358_lit_string_β:      mov              r11, 359
                        add              rsp, 16;                             jmp   n357_binop_β
.Llit_string_α_900_0:   .quad            .Llit_string_α_900_0_s
.Llit_string_α_900_0_s: .string          "   tab[\"17\"] = "
                        .size            n358_lit_string_bx, .-n358_lit_string_bx
                        .type            n359_binop_bx, @function
n359_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_binop_α:           sub              rsp, 16
                        mov              r11, 360
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n360_var_α
n359_binop_β:           mov              r11, 360
                        add              rsp, 16;                             jmp   n358_lit_string_β
                        .size            n359_binop_bx, .-n359_binop_bx
                        .type            n360_var_bx, @function
n360_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             sub              rsp, 16
                        mov              r11, 361
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_lit_string_α
n360_var_β:             mov              r11, 361
                        add              rsp, 16;                             jmp   n359_binop_β
                        .size            n360_var_bx, .-n360_var_bx
                        .type            n361_lit_string_bx, @function
n361_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      sub              rsp, 16
                        mov              r11, 362
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_903_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n362_subscript_α
n361_lit_string_β:      mov              r11, 362
                        add              rsp, 16;                             jmp   n360_var_β
.Llit_string_α_903_0:   .quad            .Llit_string_α_903_0_s
.Llit_string_α_903_0_s: .string          "17"
                        .size            n361_lit_string_bx, .-n361_lit_string_bx
                        .type            n362_subscript_bx, @function
n362_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_subscript_α:       sub              rsp, 16
                        mov              r11, 363
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_904_240
                        add              rsp, 16;                             jmp   n361_lit_string_β
.Lsubscript_α_904_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n363_deref_α
n362_subscript_β:       mov              r11, 363
                        add              rsp, 16;                             jmp   n361_lit_string_β
                        .size            n362_subscript_bx, .-n362_subscript_bx
                        .type            n363_deref_bx, @function
n363_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_deref_α:           sub              rsp, 16
                        mov              r11, 364
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_905_240
                        add              rsp, 16;                             jmp   n362_subscript_β
.Lderef_α_905_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n364_binop_α
n363_deref_β:           mov              r11, 364
                        add              rsp, 16;                             jmp   n362_subscript_β
                        .size            n363_deref_bx, .-n363_deref_bx
                        .type            n364_binop_bx, @function
n364_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_binop_α:           sub              rsp, 16
                        mov              r11, 365
                        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n365_lit_string_α
n364_binop_β:           mov              r11, 365
                        add              rsp, 16;                             jmp   n363_deref_β
                        .size            n364_binop_bx, .-n364_binop_bx
                        .type            n365_lit_string_bx, @function
n365_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      sub              rsp, 16
                        mov              r11, 366
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n366_binop_α
n365_lit_string_β:      mov              r11, 366
                        add              rsp, 16;                             jmp   n364_binop_β
.Llit_string_α_907_0:   .quad            .Llit_string_α_907_0_s
.Llit_string_α_907_0_s: .string          "   tab[5] = "
                        .size            n365_lit_string_bx, .-n365_lit_string_bx
                        .type            n366_binop_bx, @function
n366_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_binop_α:           sub              rsp, 16
                        mov              r11, 367
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_var_α
n366_binop_β:           mov              r11, 367
                        add              rsp, 16;                             jmp   n365_lit_string_β
                        .size            n366_binop_bx, .-n366_binop_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 368
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_lit_integer_α
n367_var_β:             mov              r11, 368
                        add              rsp, 16;                             jmp   n366_binop_β
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_lit_integer_bx, @function
n368_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     sub              rsp, 16
                        mov              r11, 369
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_910_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n369_subscript_α
n368_lit_integer_β:     mov              r11, 369
                        add              rsp, 16;                             jmp   n367_var_β
.Llit_integer_α_910_0:  .quad            5
                        .size            n368_lit_integer_bx, .-n368_lit_integer_bx
                        .type            n369_subscript_bx, @function
n369_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_subscript_α:       sub              rsp, 16
                        mov              r11, 370
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_911_240
                        add              rsp, 16;                             jmp   n368_lit_integer_β
.Lsubscript_α_911_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_deref_α
n369_subscript_β:       mov              r11, 370
                        add              rsp, 16;                             jmp   n368_lit_integer_β
                        .size            n369_subscript_bx, .-n369_subscript_bx
                        .type            n370_deref_bx, @function
n370_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_deref_α:           sub              rsp, 16
                        mov              r11, 371
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_912_240
                        add              rsp, 16;                             jmp   n369_subscript_β
.Lderef_α_912_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_binop_α
n370_deref_β:           mov              r11, 371
                        add              rsp, 16;                             jmp   n369_subscript_β
                        .size            n370_deref_bx, .-n370_deref_bx
                        .type            n371_binop_bx, @function
n371_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_binop_α:           sub              rsp, 16
                        mov              r11, 372
                        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_assign_α
n371_binop_β:           mov              r11, 372
                        add              rsp, 16;                             jmp   n370_deref_β
                        .size            n371_binop_bx, .-n371_binop_bx
                        .type            n372_assign_bx, @function
n372_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:          mov              r11, 373
                        mov              rax, qword ptr [rsp + 0]             # binop
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
                        mov              rdi, qword ptr [rip + .Lassign_α_914_0]
                        .section         .rodata
.Lassign_α_914_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_914_1_s]
                        mov              r8, 63
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
                        pop              rax
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_914_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 16;                             jmp   n373_statement_end_α
.Lassign_α_914_0:       .quad            .Lassign_α_914_0_s
.Lassign_α_914_0_s:     .string          "OUTPUT"
                        .size            n372_assign_bx, .-n372_assign_bx
                        .type            n373_statement_end_bx, @function
n373_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_end_α:   mov              r11, 374
                        add              rsp, 320;                            jmp   main_γ
                        .size            n373_statement_end_bx, .-n373_statement_end_bx
                        .type            n374_goto_bx, @function
n374_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_goto_α:            mov              r11, 375;                            jmp   LBL__TABLE_VARIETY
n374_goto_β:            mov              r11, 375;                            jmp   main_ω
                        .size            n374_goto_bx, .-n374_goto_bx
                        .type            n375_stmt_mark_bx, @function
n375_stmt_mark_bx:
#=======================================================================================================================
# TABLE_VARIETY  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
LBL__TABLE_VARIETY:     mov              r11, 376
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n19_statement_begin_α
                        .size            n375_stmt_mark_bx, .-n375_stmt_mark_bx
                        .type            n376_goto_bx, @function
n376_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_goto_α:            mov              r11, 377;                            jmp   n28_stmt_mark_α
n376_goto_β:            mov              r11, 377;                            jmp   main_ω
                        .size            n376_goto_bx, .-n376_goto_bx
                        .type            n377_goto_bx, @function
n377_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_goto_α:            mov              r11, 378;                            jmp   n40_stmt_mark_α
n377_goto_β:            mov              r11, 378;                            jmp   main_ω
                        .size            n377_goto_bx, .-n377_goto_bx
                        .type            n378_goto_bx, @function
n378_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_goto_α:            mov              r11, 379;                            jmp   n66_stmt_mark_α
n378_goto_β:            mov              r11, 379;                            jmp   main_ω
                        .size            n378_goto_bx, .-n378_goto_bx
                        .type            n379_goto_bx, @function
n379_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_goto_α:            mov              r11, 380;                            jmp   n112_stmt_mark_α
n379_goto_β:            mov              r11, 380;                            jmp   main_ω
                        .size            n379_goto_bx, .-n379_goto_bx
                        .type            n380_goto_bx, @function
n380_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_goto_α:            mov              r11, 381;                            jmp   n194_stmt_mark_α
n380_goto_β:            mov              r11, 381;                            jmp   main_ω
                        .size            n380_goto_bx, .-n380_goto_bx
                        .type            n381_goto_bx, @function
n381_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_goto_α:            mov              r11, 382;                            jmp   n221_stmt_mark_α
n381_goto_β:            mov              r11, 382;                            jmp   main_ω
                        .size            n381_goto_bx, .-n381_goto_bx
                        .type            n382_goto_bx, @function
n382_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_goto_α:            mov              r11, 383;                            jmp   n257_stmt_mark_α
n382_goto_β:            mov              r11, 383;                            jmp   main_ω
                        .size            n382_goto_bx, .-n382_goto_bx
                        .type            n383_goto_bx, @function
n383_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_goto_α:            mov              r11, 384;                            jmp   n18_stmt_mark_α
n383_goto_β:            mov              r11, 384;                            jmp   main_ω
                        .size            n383_goto_bx, .-n383_goto_bx
                        .type            n384_define_bx, @function
n384_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 385
                        mov              edi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n384_define_bx, .-n384_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_glue_flat.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            16081704013146
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            3728
                        .quad            1
                        .quad            4098979348348928
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
                        .long            3728
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
