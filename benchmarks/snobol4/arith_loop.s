                        .intel_syntax    noprefix
                        .text
                        .file            1 "arith_loop.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
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
.Lgvan0:                .string          "ARITH_LOOP"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "ZI"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "ARITH_LOOP"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "ARITH_LOOP_END"
.Llbln3:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 616], rax
                        mov              dword ptr [rsp + 608], 160
                        mov              dword ptr [rsp + 612], 624
                        mov              eax, 0
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_75_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_75_0:   .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_76_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_76_0:   .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_77_0:    .quad            .Llit_string_α_77_0_s
.Llit_string_α_77_0_s:  .string          "arith_loop.sno"
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
.Lcall_α_rkfnzd79:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd79]
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
                        cmp              al, 104;                             jne   .Lcall_α_78_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_78_240:        mov              qword ptr [rsp + 0], rax             # result
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
                        mov              qword ptr [rax + 0], 4
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_84_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_kw_assign_snobol4_α
.Llit_integer_α_84_0:   .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_kw_assign_snobol4_bx, @function
n7_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_85_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_85_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lkw_assign_snobol4_α_85_240:
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
.Lkw_assign_snobol4_α_85_0:
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
                        .loc             1 5 0
n9_stmt_mark_α:         mov              r11, 10
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n10_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_kw_assign_snobol4_α
.Llit_integer_α_92_0:   .quad            0
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_kw_assign_snobol4_bx, @function
n12_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_93_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_93_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lkw_assign_snobol4_α_93_240:
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
.Lkw_assign_snobol4_α_93_0:
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
#         DEFINE('ARITH_LOOP(N)')                         :(ARITH_LOOP_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n14_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n15_statement_begin_α
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_101_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_101_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__ARITH_LOOP]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_101_0]
                        lea              rsi, [rip + ARITH_LOOP_α]
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
entry_cell$ARITH_LOOP:  .quad            LBL__ARITH_LOOP
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__ARITH_LOOP]
                        mov              rcx, qword ptr [rip + entry_cell$ARITH_LOOP@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n17_statement_end_α
n16_define_β:           mov              r11, 17;                             jmp   n15_statement_begin_β
.Ldefine_α_101_0:       .quad            .Ldefine_α_101_0_s
.Ldefine_α_101_0_s:     .string          "ARITH_LOOP"
.Ldefine_α_101_1:       .quad            .Ldefine_α_101_1_s
.Ldefine_α_101_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_102_245
#-----------------------------------------------------------------------------------------------------------------------
ARITH_LOOP_α:           sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # ARITH_LOOP
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_102_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_102_41
.Ldefine_α_102_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_102_41:      push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_102_231
.Ldefine_α_102_232:     .quad            .Ldefine_α_102_232_s
.Ldefine_α_102_232_s:   .string          "ARITH_LOOP"
.Ldefine_α_102_231:     lea              rcx, [rip + ARITH_LOOP_γ]
                        lea              rax, [rip + ARITH_LOOP_ω]
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
                        mov              rax, qword ptr [rip + entry_cell$ARITH_LOOP@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ARITH_LOOP_γ:           mov              rdi, qword ptr [r9 + 0]              # ARITH_LOOP
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_102_236
.Ldefine_α_102_237:     .quad            .Ldefine_α_102_237_s
.Ldefine_α_102_237_s:   .string          "ARITH_LOOP"
.Ldefine_α_102_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_102_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_102_110
.Ldefine_α_102_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_102_110:     push             rcx
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
ARITH_LOOP_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ARITH_LOOP
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_102_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_102_180
.Ldefine_α_102_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_102_180:     push             rcx
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
.Ldefine_α_102_245:
                        .size            n16_define_bx, .-n16_define_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18;                             jmp   n18_stmt_mark_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_stmt_mark_bx, @function
n18_stmt_mark_bx:
#=======================================================================================================================
# ARITH_LOOP_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n18_stmt_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n52_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Llit_integer_α_109_0:  .quad            0
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
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
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n23_stmt_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n24_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_117_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Llit_integer_α_117_0:  .quad            1
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZI
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
# ZBL     A = A + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n28_stmt_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n29_statement_begin_α
                        .size            n28_stmt_mark_bx, .-n28_stmt_mark_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30;                             jmp   n30_var_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n35_stmt_mark_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_lit_integer_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_binop_α
n31_lit_integer_β:      mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Llit_integer_α_126_0:  .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_binop_bx, @function
n32_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              r11, 33
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_127_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_127_7
.Lbinop_α_127_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_127_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_127_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_127_4
.Lbinop_α_127_3:        movq             xmm0, rsi
.Lbinop_α_127_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_127_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_127_7:                                                              jmp   n33_assign_α
.Lbinop_α_127_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_127_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lbinop_α_127_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_assign_α
n32_binop_β:            mov              r11, 33
                        add              rsp, 16;                             jmp   n31_lit_integer_β
                        .size            n32_binop_bx, .-n32_binop_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n34_statement_end_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 35
                        add              rsp, 48;                             jmp   n35_stmt_mark_α
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_stmt_mark_bx, @function
n35_stmt_mark_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n35_stmt_mark_α:        mov              r11, 36
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
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
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_var_α
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_coerce_numeric_α
n38_var_β:              mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_coerce_numeric_bx, @function
n39_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 40
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_138_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_138_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_138_0
.Lcoerce_numeric_α_138_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_coerce_numeric_α
.Lcoerce_numeric_α_138_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_coerce_numeric_α
n39_coerce_numeric_β:   mov              r11, 40
                        add              rsp, 16;                             jmp   n38_var_β
                        .size            n39_coerce_numeric_bx, .-n39_coerce_numeric_bx
                        .type            n40_coerce_numeric_bx, @function
n40_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 41
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_140_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_140_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_140_0
.Lcoerce_numeric_α_140_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_cmp_test_α
.Lcoerce_numeric_α_140_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_142_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_142_239
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
.Lcmp_test_α_142_239:                                                         jmp   n42_var_α
.Lcmp_test_α_142_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_142_240
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
.Lcmp_test_α_142_240:                                                         jmp   n42_var_α
n41_cmp_test_β:         mov              r11, 42
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
                        .size            n41_cmp_test_bx, .-n41_cmp_test_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 48]             # ZI
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_binop_α
n43_lit_integer_β:      mov              r11, 44
                        add              rsp, 16;                             jmp   n42_var_β
.Llit_integer_α_144_0:  .quad            1
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_binop_bx, @function
n44_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            sub              rsp, 16
                        mov              r11, 45
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_145_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_145_7
.Lbinop_α_145_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_145_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_145_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_145_4
.Lbinop_α_145_3:        movq             xmm0, rsi
.Lbinop_α_145_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_145_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_145_7:                                                              jmp   n45_assign_α
.Lbinop_α_145_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_145_240
                        add              rsp, 16;                             jmp   n43_lit_integer_β
.Lbinop_α_145_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_assign_α
n44_binop_β:            mov              r11, 45
                        add              rsp, 16;                             jmp   n43_lit_integer_β
                        .size            n44_binop_bx, .-n44_binop_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZI
                        mov              qword ptr [r9 + 56], rdx;            jmp   n46_statement_end_α
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        add              rsp, 128;                            jmp   n28_stmt_mark_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_stmt_mark_bx, @function
n47_stmt_mark_bx:
#=======================================================================================================================
#         ARITH_LOOP = A                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n47_stmt_mark_α:        mov              r11, 48
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n48_statement_begin_α
                        .size            n47_stmt_mark_bx, .-n47_stmt_mark_bx
                        .type            n48_statement_begin_bx, @function
n48_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 49;                             jmp   n49_var_α
n48_statement_begin_β:  mov              r11, 49;                             jmp   RETURN
                        .size            n48_statement_begin_bx, .-n48_statement_begin_bx
                        .type            n49_var_bx, @function
n49_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_assign_α
                        .size            n49_var_bx, .-n49_var_bx
                        .type            n50_assign_bx, @function
n50_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ARITH_LOOP
                        mov              qword ptr [r9 + 8], rdx;             jmp   n51_statement_end_α
                        .size            n50_assign_bx, .-n50_assign_bx
                        .type            n51_statement_end_bx, @function
n51_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        add              rsp, 16;                             jmp   RETURN
                        .size            n51_statement_end_bx, .-n51_statement_end_bx
                        .type            n52_statement_begin_bx, @function
n52_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 53;                             jmp   n53_statement_end_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   n54_stmt_mark_α
                        .size            n52_statement_begin_bx, .-n52_statement_begin_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54;                             jmp   n54_stmt_mark_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_stmt_mark_bx, @function
n54_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'arith_loop(10) = ' ARITH_LOOP(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n54_stmt_mark_α:        mov              r11, 55
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n55_statement_begin_α
                        .size            n54_stmt_mark_bx, .-n54_stmt_mark_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 56;                             jmp   n56_lit_string_α
n55_statement_begin_β:  mov              r11, 56;                             jmp   n62_stmt_mark_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_lit_string_bx, @function
n56_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_lit_integer_α
.Llit_string_α_165_0:   .quad            .Llit_string_α_165_0_s
.Llit_string_α_165_0_s: .string          "arith_loop(10) = "
                        .size            n56_lit_string_bx, .-n56_lit_string_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_call_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Llit_integer_α_166_0:  .quad            10
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             sub              rsp, 16
                        mov              r11, 59
                        lea              rcx, [rip + .Lcall_α_sig168z]
                        lea              rax, [rip + ARITH_LOOP_α];           jmp   rax
.Lcall_α_sig168z:       .quad            1
                        .quad            .Lcall_α_168_2
                        .quad            .Lcall_α_168_2
                        .quad            16
.Lcall_α_168_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_168_29
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
.Lcall_α_168_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_168_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lcall_α_168_240:                                                             jmp   n59_binop_α
n58_call_β:             mov              r11, 59;                             jmp   n57_lit_integer_β
.Lcall_β_168_0:         .quad            .Lcall_β_168_0_s
.Lcall_β_168_0_s:       .string          "ARITH_LOOP"
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_assign_α
n59_binop_β:            mov              r11, 60
                        add              rsp, 32;                             jmp   n57_lit_integer_β
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_170_0]
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
                        add              rsp, 16;                             jmp   n61_statement_end_α
.Lassign_α_170_0:       .quad            .Lassign_α_170_0_s
.Lassign_α_170_0_s:     .string          "OUTPUT"
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        add              rsp, 64;                             jmp   n62_stmt_mark_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_stmt_mark_bx, @function
n62_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'arith_loop(1000) = ' ARITH_LOOP(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n62_stmt_mark_α:        mov              r11, 63
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n63_statement_begin_α
                        .size            n62_stmt_mark_bx, .-n62_stmt_mark_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64;                             jmp   n64_lit_string_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   main_γ
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Llit_string_α_177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_lit_integer_α
.Llit_string_α_177_0:   .quad            .Llit_string_α_177_0_s
.Llit_string_α_177_0_s: .string          "arith_loop(1000) = "
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_α
n65_lit_integer_β:      mov              r11, 66
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n63_statement_begin_β
.Llit_integer_α_178_0:  .quad            1000
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             sub              rsp, 16
                        mov              r11, 67
                        lea              rcx, [rip + .Lcall_α_sig180z]
                        lea              rax, [rip + ARITH_LOOP_α];           jmp   rax
.Lcall_α_sig180z:       .quad            1
                        .quad            .Lcall_α_180_2
                        .quad            .Lcall_α_180_2
                        .quad            16
.Lcall_α_180_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_180_29
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
.Lcall_α_180_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_180_240
                        add              rsp, 16;                             jmp   n65_lit_integer_β
.Lcall_α_180_240:                                                             jmp   n67_binop_α
n66_call_β:             mov              r11, 67;                             jmp   n65_lit_integer_β
.Lcall_β_180_0:         .quad            .Lcall_β_180_0_s
.Lcall_β_180_0_s:       .string          "ARITH_LOOP"
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_binop_bx, @function
n67_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              r11, 68
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_assign_α
n67_binop_β:            mov              r11, 68
                        add              rsp, 32;                             jmp   n65_lit_integer_β
                        .size            n67_binop_bx, .-n67_binop_bx
                        .type            n68_assign_bx, @function
n68_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_182_0]
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
                        add              rsp, 16;                             jmp   n69_statement_end_α
.Lassign_α_182_0:       .quad            .Lassign_α_182_0_s
.Lassign_α_182_0_s:     .string          "OUTPUT"
                        .size            n68_assign_bx, .-n68_assign_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        add              rsp, 64;                             jmp   main_γ
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_goto_bx, @function
n70_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:             mov              r11, 71;                             jmp   LBL__ARITH_LOOP
n70_goto_β:             mov              r11, 71;                             jmp   main_ω
                        .size            n70_goto_bx, .-n70_goto_bx
                        .type            n71_stmt_mark_bx, @function
n71_stmt_mark_bx:
#=======================================================================================================================
# ARITH_LOOP  A = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
LBL__ARITH_LOOP:        mov              r11, 72
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n19_statement_begin_α
                        .size            n71_stmt_mark_bx, .-n71_stmt_mark_bx
                        .type            n72_goto_bx, @function
n72_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:             mov              r11, 73;                             jmp   n28_stmt_mark_α
n72_goto_β:             mov              r11, 73;                             jmp   main_ω
                        .size            n72_goto_bx, .-n72_goto_bx
                        .type            n73_goto_bx, @function
n73_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_α:             mov              r11, 74;                             jmp   n18_stmt_mark_α
n73_goto_β:             mov              r11, 74;                             jmp   main_ω
                        .size            n73_goto_bx, .-n73_goto_bx
                        .type            n74_define_bx, @function
n74_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 75
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
                        .size            n74_define_bx, .-n74_define_bx
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
                        .quad            2681406049626
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            608
                        .quad            1
                        .quad            668503069687808
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ARITH_LOOP"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__ARITH_LOOP
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            608
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "ARITH_LOOP"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ARITH_LOOP_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + ARITH_LOOP_α@GOTPCREL]
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
