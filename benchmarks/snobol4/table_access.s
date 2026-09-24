                        .intel_syntax    noprefix
                        .text
                        .file            1 "table_access.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 6
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
.Lgvan0:                .string          "TABLE_ACCESS"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZI"
.Lgvan3:                .string          "T"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "SUM"
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
.Llbln0:                .string          "TABLE_ACCESS"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "ZFILL"
.Llbln3:                .string          "ZREAD"
.Llbln4:                .string          "TABLE_ACCESS_END"
.Llbln5:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1064], rax
                        mov              dword ptr [rsp + 1056], 160
                        mov              dword ptr [rsp + 1060], 1072
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_129_0:  .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_130_0:  .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_131_0:   .quad            .Llit_string_α_131_0_s
.Llit_string_α_131_0_s: .string          "table_access.sno"
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
.Lcall_α_rkfnzd133:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd133]
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
                        cmp              al, 104;                             jne   .Lcall_α_132_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_132_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_kw_assign_snobol4_α
.Llit_integer_α_138_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_kw_assign_snobol4_bx, @function
n7_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_139_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_139_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lkw_assign_snobol4_α_139_240:
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
.Lkw_assign_snobol4_α_139_0:
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
                        mov              qword ptr [rax + 0], 5
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_kw_assign_snobol4_α
.Llit_integer_α_146_0:  .quad            0
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_kw_assign_snobol4_bx, @function
n12_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_147_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_147_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lkw_assign_snobol4_α_147_240:
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
.Lkw_assign_snobol4_α_147_0:
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
#         DEFINE('TABLE_ACCESS(N)')                       :(TABLE_ACCESS_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n14_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_155_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_155_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__TABLE_ACCESS]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_155_0]
                        lea              rsi, [rip + TABLE_ACCESS_α]
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
entry_cell$TABLE_ACCESS:
                        .quad            LBL__TABLE_ACCESS
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__TABLE_ACCESS]
                        mov              rcx, qword ptr [rip + entry_cell$TABLE_ACCESS@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n17_statement_end_α
n16_define_β:           mov              r11, 17;                             jmp   n15_statement_begin_β
.Ldefine_α_155_0:       .quad            .Ldefine_α_155_0_s
.Ldefine_α_155_0_s:     .string          "TABLE_ACCESS"
.Ldefine_α_155_1:       .quad            .Ldefine_α_155_1_s
.Ldefine_α_155_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_156_245
#-----------------------------------------------------------------------------------------------------------------------
TABLE_ACCESS_α:         sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # TABLE_ACCESS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_156_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_156_41
.Ldefine_α_156_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_156_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_156_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_156_230
.Ldefine_α_156_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_156_232]
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
.Ldefine_α_156_230:                                                           jmp   .Ldefine_α_156_231
.Ldefine_α_156_232:     .quad            .Ldefine_α_156_232_s
.Ldefine_α_156_232_s:   .string          "TABLE_ACCESS"
.Ldefine_α_156_231:     lea              rcx, [rip + TABLE_ACCESS_γ]
                        lea              rax, [rip + TABLE_ACCESS_ω]
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
                        mov              rax, qword ptr [rip + entry_cell$TABLE_ACCESS@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
TABLE_ACCESS_γ:         mov              rdi, qword ptr [r9 + 0]              # TABLE_ACCESS
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_156_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_156_235
.Ldefine_α_156_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_156_237]
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
.Ldefine_α_156_235:                                                           jmp   .Ldefine_α_156_236
.Ldefine_α_156_237:     .quad            .Ldefine_α_156_237_s
.Ldefine_α_156_237_s:   .string          "TABLE_ACCESS"
.Ldefine_α_156_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # TABLE_ACCESS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_156_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_156_110
.Ldefine_α_156_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_156_110:     push             rcx
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
TABLE_ACCESS_ω:         mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # TABLE_ACCESS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_156_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_156_180
.Ldefine_α_156_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_156_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_156_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_156_249
.Ldefine_α_156_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_156_237]
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
.Ldefine_α_156_249:     push             rcx
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
.Ldefine_α_156_245:
                        .size            n16_define_bx, .-n16_define_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18;                             jmp   n18_stmt_mark_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_stmt_mark_bx, @function
n18_stmt_mark_bx:
#=======================================================================================================================
# TABLE_ACCESS_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n18_stmt_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n104_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_163_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Llit_integer_α_163_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_164_0]
                        .section         .rodata
.Lassign_α_164_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_164_1_s]
                        mov              r8, 18
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
.Lassign_α_164_0:       .quad            .Lassign_α_164_0_s
.Lassign_α_164_0_s:     .string          "ZI"
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
# ZBL     T = TABLE(512)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n23_stmt_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n24_statement_begin_α
                        .size            n23_stmt_mark_bx, .-n23_stmt_mark_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:  mov              r11, 25;                             jmp   n25_lit_integer_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n29_stmt_mark_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_call_α
.Llit_integer_α_171_0:  .quad            512
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             sub              rsp, 16
                        mov              r11, 27
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd173:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd173]
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
                        cmp              al, 104;                             jne   .Lcall_α_172_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Lcall_α_172_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:172
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_assign_α
n26_call_β:             mov              r11, 27
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_assign_bx, @function
n27_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # T
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
                        mov              rdi, qword ptr [rip + .Lassign_α_174_0]
                        .section         .rodata
.Lassign_α_174_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_174_1_s]
                        mov              r8, 8
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
                        add              rsp, 16;                             jmp   n28_statement_end_α
.Lassign_α_174_0:       .quad            .Lassign_α_174_0_s
.Lassign_α_174_0_s:     .string          "T"
                        .size            n27_assign_bx, .-n27_assign_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        add              rsp, 32;                             jmp   n29_stmt_mark_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_stmt_mark_bx, @function
n29_stmt_mark_bx:
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n29_stmt_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n30_statement_begin_α
                        .size            n29_stmt_mark_bx, .-n29_stmt_mark_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31;                             jmp   n31_lit_integer_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n34_stmt_mark_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_assign_α
.Llit_integer_α_181_0:  .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
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
                        mov              rdi, qword ptr [rip + .Lassign_α_182_0]
                        .section         .rodata
.Lassign_α_182_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_182_1_s]
                        mov              r8, 9
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
.Lassign_α_182_0:       .quad            .Lassign_α_182_0_s
.Lassign_α_182_0_s:     .string          "I"
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_statement_end_bx, @function
n33_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        add              rsp, 16;                             jmp   n34_stmt_mark_α
                        .size            n33_statement_end_bx, .-n33_statement_end_bx
                        .type            n34_stmt_mark_bx, @function
n34_stmt_mark_bx:
#=======================================================================================================================
# ZFILL   T[I] = I * 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n34_stmt_mark_α:        mov              r11, 35
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n35_statement_begin_α
                        .size            n34_stmt_mark_bx, .-n34_stmt_mark_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 36;                             jmp   n36_var_α
n35_statement_begin_β:  mov              r11, 36;                             jmp   n43_stmt_mark_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 48]             # T
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_var_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_var_bx, @function
n37_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_var_α
n37_var_β:              mov              r11, 38
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_lit_integer_α
n38_var_β:              mov              r11, 39
                        add              rsp, 16;                             jmp   n37_var_β
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_binop_α
n39_lit_integer_β:      mov              r11, 40
                        add              rsp, 16;                             jmp   n38_var_β
.Llit_integer_α_192_0:  .quad            2
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_binop_bx, @function
n40_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            sub              rsp, 16
                        mov              r11, 41
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_193_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_193_7
.Lbinop_α_193_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_193_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_193_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_193_4
.Lbinop_α_193_3:        movq             xmm0, rsi
.Lbinop_α_193_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_193_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_193_7:                                                              jmp   n41_assign_var_α
.Lbinop_α_193_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_193_240
                        add              rsp, 16;                             jmp   n39_lit_integer_β
.Lbinop_α_193_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_assign_var_α
n40_binop_β:            mov              r11, 41
                        add              rsp, 16;                             jmp   n39_lit_integer_β
                        .size            n40_binop_bx, .-n40_binop_bx
                        .type            n41_assign_var_bx, @function
n41_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_var_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_195_0
                        test             rsi, rsi;                            je    .Lassign_var_α_195_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_195_238
                        add              rsp, 16;                             jmp   n40_binop_β
.Lassign_var_α_195_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_statement_end_α
.Lassign_var_α_195_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        cmp              al, 104;                             jne   .Lassign_var_α_195_239
                        add              rsp, 16;                             jmp   n40_binop_β
.Lassign_var_α_195_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_195_240
                        add              rsp, 16;                             jmp   n40_binop_β
.Lassign_var_α_195_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_assign_var_sub.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_statement_end_α
                        .size            n41_assign_var_bx, .-n41_assign_var_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        add              rsp, 96;                             jmp   n43_stmt_mark_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_stmt_mark_bx, @function
n43_stmt_mark_bx:
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n43_stmt_mark_α:        mov              r11, 44
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n44_statement_begin_α
                        .size            n43_stmt_mark_bx, .-n43_stmt_mark_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 45;                             jmp   n45_var_α
n44_statement_begin_β:  mov              r11, 45;                             jmp   n55_stmt_mark_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              r11, 46
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_lit_integer_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_coerce_numeric_α
n46_lit_integer_β:      mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Llit_integer_α_203_0:  .quad            500
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_coerce_numeric_bx, @function
n47_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_205_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_205_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_205_0
.Lcoerce_numeric_α_205_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_coerce_numeric_α
.Lcoerce_numeric_α_205_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_coerce_numeric_α
n47_coerce_numeric_β:   mov              r11, 48
                        add              rsp, 16;                             jmp   n46_lit_integer_β
                        .size            n47_coerce_numeric_bx, .-n47_coerce_numeric_bx
                        .type            n48_coerce_numeric_bx, @function
n48_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 49
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_207_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_207_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_207_0
.Lcoerce_numeric_α_207_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_cmp_test_α
.Lcoerce_numeric_α_207_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_cmp_test_α
n48_coerce_numeric_β:   mov              r11, 49
                        add              rsp, 16;                             jmp   n47_coerce_numeric_β
                        .size            n48_coerce_numeric_bx, .-n48_coerce_numeric_bx
                        .type            n49_cmp_test_bx, @function
n49_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_cmp_test_α:         sub              rsp, 16
                        mov              r11, 50
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_209_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_209_239
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
.Lcmp_test_α_209_239:                                                         jmp   n50_var_α
.Lcmp_test_α_209_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_209_240
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
.Lcmp_test_α_209_240:                                                         jmp   n50_var_α
n49_cmp_test_β:         mov              r11, 50
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
                        .size            n49_cmp_test_bx, .-n49_cmp_test_bx
                        .type            n50_var_bx, @function
n50_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_lit_integer_α
n50_var_β:              mov              r11, 51
                        add              rsp, 16;                             jmp   n49_cmp_test_β
                        .size            n50_var_bx, .-n50_var_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_binop_α
n51_lit_integer_β:      mov              r11, 52
                        add              rsp, 16;                             jmp   n50_var_β
.Llit_integer_α_211_0:  .quad            1
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_binop_bx, @function
n52_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:            sub              rsp, 16
                        mov              r11, 53
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_212_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_212_7
.Lbinop_α_212_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_212_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_212_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_212_4
.Lbinop_α_212_3:        movq             xmm0, rsi
.Lbinop_α_212_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_212_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_212_7:                                                              jmp   n53_assign_α
.Lbinop_α_212_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_212_240
                        add              rsp, 16;                             jmp   n51_lit_integer_β
.Lbinop_α_212_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_assign_α
n52_binop_β:            mov              r11, 53
                        add              rsp, 16;                             jmp   n51_lit_integer_β
                        .size            n52_binop_bx, .-n52_binop_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 54
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
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
                        mov              rdi, qword ptr [rip + .Lassign_α_213_0]
                        .section         .rodata
.Lassign_α_213_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_213_1_s]
                        mov              r8, 11
                        mov              r9, 8
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
                        add              rsp, 16;                             jmp   n54_statement_end_α
.Lassign_α_213_0:       .quad            .Lassign_α_213_0_s
.Lassign_α_213_0_s:     .string          "I"
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 55
                        add              rsp, 128;                            jmp   n34_stmt_mark_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_stmt_mark_bx, @function
n55_stmt_mark_bx:
#=======================================================================================================================
#         SUM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n55_stmt_mark_α:        mov              r11, 56
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n56_statement_begin_α
                        .size            n55_stmt_mark_bx, .-n55_stmt_mark_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 57;                             jmp   n57_lit_integer_α
n56_statement_begin_β:  mov              r11, 57;                             jmp   n60_stmt_mark_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_assign_α
.Llit_integer_α_220_0:  .quad            0
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_assign_bx, @function
n58_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUM
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
                        mov              rdi, qword ptr [rip + .Lassign_α_221_0]
                        .section         .rodata
.Lassign_α_221_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_221_1_s]
                        mov              r8, 12
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
                        add              rsp, 16;                             jmp   n59_statement_end_α
.Lassign_α_221_0:       .quad            .Lassign_α_221_0_s
.Lassign_α_221_0_s:     .string          "SUM"
                        .size            n58_assign_bx, .-n58_assign_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        add              rsp, 16;                             jmp   n60_stmt_mark_α
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_stmt_mark_bx, @function
n60_stmt_mark_bx:
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n60_stmt_mark_α:        mov              r11, 61
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n61_statement_begin_α
                        .size            n60_stmt_mark_bx, .-n60_stmt_mark_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62;                             jmp   n62_lit_integer_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n65_stmt_mark_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Llit_integer_α_228_0:  .quad            1
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_assign_bx, @function
n63_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
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
                        mov              rdi, qword ptr [rip + .Lassign_α_229_0]
                        .section         .rodata
.Lassign_α_229_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_229_1_s]
                        mov              r8, 13
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
                        add              rsp, 16;                             jmp   n64_statement_end_α
.Lassign_α_229_0:       .quad            .Lassign_α_229_0_s
.Lassign_α_229_0_s:     .string          "I"
                        .size            n63_assign_bx, .-n63_assign_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        add              rsp, 16;                             jmp   n65_stmt_mark_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_stmt_mark_bx, @function
n65_stmt_mark_bx:
#=======================================================================================================================
# ZREAD   SUM = SUM + T[I]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n65_stmt_mark_α:        mov              r11, 66
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n66_statement_begin_α
                        .size            n65_stmt_mark_bx, .-n65_stmt_mark_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67;                             jmp   n67_var_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n75_stmt_mark_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 80]             # SUM
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_var_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 48]             # T
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_var_α
n68_var_β:              mov              r11, 69
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_subscript_α
n69_var_β:              mov              r11, 70
                        add              rsp, 16;                             jmp   n68_var_β
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_subscript_bx, @function
n70_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_subscript_α:        sub              rsp, 16
                        mov              r11, 71
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_239_240
                        add              rsp, 16;                             jmp   n69_var_β
.Lsubscript_α_239_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_subscript.cpp:36
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_deref_α
n70_subscript_β:        mov              r11, 71
                        add              rsp, 16;                             jmp   n69_var_β
                        .size            n70_subscript_bx, .-n70_subscript_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            sub              rsp, 16
                        mov              r11, 72
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
                        cmp              al, 104;                             jne   .Lderef_α_240_240
                        add              rsp, 16;                             jmp   n70_subscript_β
.Lderef_α_240_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_deref.cpp:26
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_binop_α
n71_deref_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n70_subscript_β
                        .size            n71_deref_bx, .-n71_deref_bx
                        .type            n72_binop_bx, @function
n72_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
                        mov              r11, 73
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_241_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_241_7
.Lbinop_α_241_2:        and              edx, 1;                              jz    .Lbinop_α_241_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_241_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_241_4
.Lbinop_α_241_3:        movq             xmm0, rsi
.Lbinop_α_241_4:        cmp              cl, 5;                               je    .Lbinop_α_241_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_241_6
.Lbinop_α_241_5:        movq             xmm1, rdi
.Lbinop_α_241_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_241_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_241_7:                                                              jmp   n73_assign_α
.Lbinop_α_241_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_241_240
                        add              rsp, 16;                             jmp   n71_deref_β
.Lbinop_α_241_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_assign_α
n72_binop_β:            mov              r11, 73
                        add              rsp, 16;                             jmp   n71_deref_β
                        .size            n72_binop_bx, .-n72_binop_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUM
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
                        mov              rdi, qword ptr [rip + .Lassign_α_242_0]
                        .section         .rodata
.Lassign_α_242_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_242_1_s]
                        mov              r8, 14
                        mov              r9, 11
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
                        add              rsp, 16;                             jmp   n74_statement_end_α
.Lassign_α_242_0:       .quad            .Lassign_α_242_0_s
.Lassign_α_242_0_s:     .string          "SUM"
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75
                        add              rsp, 96;                             jmp   n75_stmt_mark_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_stmt_mark_bx, @function
n75_stmt_mark_bx:
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n75_stmt_mark_α:        mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n76_statement_begin_α
                        .size            n75_stmt_mark_bx, .-n75_stmt_mark_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77;                             jmp   n77_var_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n87_stmt_mark_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_lit_integer_α
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_lit_integer_bx, @function
n78_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_coerce_numeric_α
n78_lit_integer_β:      mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Llit_integer_α_250_0:  .quad            500
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_coerce_numeric_bx, @function
n79_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 80
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_252_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_252_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_252_0
.Lcoerce_numeric_α_252_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_coerce_numeric_α
.Lcoerce_numeric_α_252_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_coerce_numeric_α
n79_coerce_numeric_β:   mov              r11, 80
                        add              rsp, 16;                             jmp   n78_lit_integer_β
                        .size            n79_coerce_numeric_bx, .-n79_coerce_numeric_bx
                        .type            n80_coerce_numeric_bx, @function
n80_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 81
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_254_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_254_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_254_0
.Lcoerce_numeric_α_254_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_cmp_test_α
.Lcoerce_numeric_α_254_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_cmp_test_α
n80_coerce_numeric_β:   mov              r11, 81
                        add              rsp, 16;                             jmp   n79_coerce_numeric_β
                        .size            n80_coerce_numeric_bx, .-n80_coerce_numeric_bx
                        .type            n81_cmp_test_bx, @function
n81_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_cmp_test_α:         sub              rsp, 16
                        mov              r11, 82
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_256_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_256_239
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
.Lcmp_test_α_256_239:                                                         jmp   n82_var_α
.Lcmp_test_α_256_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_256_240
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
.Lcmp_test_α_256_240:                                                         jmp   n82_var_α
n81_cmp_test_β:         mov              r11, 82
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
                        .size            n81_cmp_test_bx, .-n81_cmp_test_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_lit_integer_α
n82_var_β:              mov              r11, 83
                        add              rsp, 16;                             jmp   n81_cmp_test_β
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_binop_α
n83_lit_integer_β:      mov              r11, 84
                        add              rsp, 16;                             jmp   n82_var_β
.Llit_integer_α_258_0:  .quad            1
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 85
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_259_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_259_7
.Lbinop_α_259_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_259_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_259_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_259_4
.Lbinop_α_259_3:        movq             xmm0, rsi
.Lbinop_α_259_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_259_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_259_7:                                                              jmp   n85_assign_α
.Lbinop_α_259_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_259_240
                        add              rsp, 16;                             jmp   n83_lit_integer_β
.Lbinop_α_259_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_assign_α
n84_binop_β:            mov              r11, 85
                        add              rsp, 16;                             jmp   n83_lit_integer_β
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_assign_bx, @function
n85_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
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
                        mov              rdi, qword ptr [rip + .Lassign_α_260_0]
                        .section         .rodata
.Lassign_α_260_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_260_1_s]
                        mov              r8, 15
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
                        add              rsp, 16;                             jmp   n86_statement_end_α
.Lassign_α_260_0:       .quad            .Lassign_α_260_0_s
.Lassign_α_260_0_s:     .string          "I"
                        .size            n85_assign_bx, .-n85_assign_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        add              rsp, 128;                            jmp   n65_stmt_mark_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_stmt_mark_bx, @function
n87_stmt_mark_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n87_stmt_mark_α:        mov              r11, 88
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n88_statement_begin_α
                        .size            n87_stmt_mark_bx, .-n87_stmt_mark_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89;                             jmp   n89_var_α
n88_statement_begin_β:  mov              r11, 89;                             jmp   n99_stmt_mark_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_var_α
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_coerce_numeric_α
n90_var_β:              mov              r11, 91
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n88_statement_begin_β
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_coerce_numeric_bx, @function
n91_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 92
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_270_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
.Lcoerce_numeric_α_270_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_coerce_numeric_α
.Lcoerce_numeric_α_270_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_coerce_numeric_α
n91_coerce_numeric_β:   mov              r11, 92
                        add              rsp, 16;                             jmp   n90_var_β
                        .size            n91_coerce_numeric_bx, .-n91_coerce_numeric_bx
                        .type            n92_coerce_numeric_bx, @function
n92_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 93
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_272_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_272_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_272_0
.Lcoerce_numeric_α_272_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_cmp_test_α
.Lcoerce_numeric_α_272_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_cmp_test_α
n92_coerce_numeric_β:   mov              r11, 93
                        add              rsp, 16;                             jmp   n91_coerce_numeric_β
                        .size            n92_coerce_numeric_bx, .-n92_coerce_numeric_bx
                        .type            n93_cmp_test_bx, @function
n93_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_cmp_test_α:         sub              rsp, 16
                        mov              r11, 94
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_274_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_274_239
                        add              rsp, 16;                             jmp   n92_coerce_numeric_β
.Lcmp_test_α_274_239:                                                         jmp   n94_var_α
.Lcmp_test_α_274_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_274_240
                        add              rsp, 16;                             jmp   n92_coerce_numeric_β
.Lcmp_test_α_274_240:                                                         jmp   n94_var_α
n93_cmp_test_β:         mov              r11, 94
                        add              rsp, 16;                             jmp   n92_coerce_numeric_β
                        .size            n93_cmp_test_bx, .-n93_cmp_test_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
n94_var_β:              mov              r11, 95
                        add              rsp, 16;                             jmp   n93_cmp_test_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
n95_lit_integer_β:      mov              r11, 96
                        add              rsp, 16;                             jmp   n94_var_β
.Llit_integer_α_276_0:  .quad            1
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_binop_bx, @function
n96_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              r11, 97
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_277_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_277_7
.Lbinop_α_277_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_277_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_277_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_277_4
.Lbinop_α_277_3:        movq             xmm0, rsi
.Lbinop_α_277_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_277_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_277_7:                                                              jmp   n97_assign_α
.Lbinop_α_277_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_277_240
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lbinop_α_277_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_assign_α
n96_binop_β:            mov              r11, 97
                        add              rsp, 16;                             jmp   n95_lit_integer_β
                        .size            n96_binop_bx, .-n96_binop_bx
                        .type            n97_assign_bx, @function
n97_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 98
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
                        mov              rdi, qword ptr [rip + .Lassign_α_278_0]
                        .section         .rodata
.Lassign_α_278_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_278_1_s]
                        mov              r8, 16
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
                        add              rsp, 16;                             jmp   n98_statement_end_α
.Lassign_α_278_0:       .quad            .Lassign_α_278_0_s
.Lassign_α_278_0_s:     .string          "ZI"
                        .size            n97_assign_bx, .-n97_assign_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 99
                        add              rsp, 128;                            jmp   n23_stmt_mark_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_stmt_mark_bx, @function
n99_stmt_mark_bx:
#=======================================================================================================================
#         TABLE_ACCESS = SUM                              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n99_stmt_mark_α:        mov              r11, 100
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n100_statement_begin_α
                        .size            n99_stmt_mark_bx, .-n99_stmt_mark_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 101;                            jmp   n101_var_α
n100_statement_begin_β: mov              r11, 101;                            jmp   RETURN
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 80]             # SUM
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_assign_bx, @function
n102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 103
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # TABLE_ACCESS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_286_0]
                        .section         .rodata
.Lassign_α_286_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_286_1_s]
                        mov              r8, 17
                        mov              r9, 14
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
                        add              rsp, 16;                             jmp   n103_statement_end_α
.Lassign_α_286_0:       .quad            .Lassign_α_286_0_s
.Lassign_α_286_0_s:     .string          "TABLE_ACCESS"
                        .size            n102_assign_bx, .-n102_assign_bx
                        .type            n103_statement_end_bx, @function
n103_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 104
                        add              rsp, 16;                             jmp   RETURN
                        .size            n103_statement_end_bx, .-n103_statement_end_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 105;                            jmp   n105_statement_end_α
n104_statement_begin_β: mov              r11, 105;                            jmp   n106_stmt_mark_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 106;                            jmp   n106_stmt_mark_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_stmt_mark_bx, @function
n106_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'sum of T[1..500] = ' TABLE_ACCESS(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n106_stmt_mark_α:       mov              r11, 107
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n107_statement_begin_α
                        .size            n106_stmt_mark_bx, .-n106_stmt_mark_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 108;                            jmp   n108_lit_string_α
n107_statement_begin_β: mov              r11, 108;                            jmp   n114_stmt_mark_α
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_lit_string_bx, @function
n108_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Llit_string_α_297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_lit_integer_α
.Llit_string_α_297_0:   .quad            .Llit_string_α_297_0_s
.Llit_string_α_297_0_s: .string          "sum of T[1..500] = "
                        .size            n108_lit_string_bx, .-n108_lit_string_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_call_α
n109_lit_integer_β:     mov              r11, 110
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Llit_integer_α_298_0:  .quad            1
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        mov              r11, 111
                        lea              rcx, [rip + .Lcall_α_sig300z]
                        lea              rax, [rip + TABLE_ACCESS_α];         jmp   rax
.Lcall_α_sig300z:       .quad            1
                        .quad            .Lcall_α_300_2
                        .quad            .Lcall_α_300_2
                        .quad            16
.Lcall_α_300_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_300_29
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
.Lcall_α_300_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_300_240
                        add              rsp, 16;                             jmp   n109_lit_integer_β
.Lcall_α_300_240:                                                             jmp   n111_binop_α
n110_call_β:            mov              r11, 111;                            jmp   n109_lit_integer_β
.Lcall_β_300_0:         .quad            .Lcall_β_300_0_s
.Lcall_β_300_0_s:       .string          "TABLE_ACCESS"
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_binop_bx, @function
n111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              r11, 112
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_assign_α
n111_binop_β:           mov              r11, 112
                        add              rsp, 32;                             jmp   n109_lit_integer_β
                        .size            n111_binop_bx, .-n111_binop_bx
                        .type            n112_assign_bx, @function
n112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 113
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
                        mov              rdi, qword ptr [rip + .Lassign_α_302_0]
                        .section         .rodata
.Lassign_α_302_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_302_1_s]
                        mov              r8, 20
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
                        mov              rdi, qword ptr [rip + .Lassign_α_302_0]
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
                        add              rsp, 16;                             jmp   n113_statement_end_α
.Lassign_α_302_0:       .quad            .Lassign_α_302_0_s
.Lassign_α_302_0_s:     .string          "OUTPUT"
                        .size            n112_assign_bx, .-n112_assign_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 114
                        add              rsp, 64;                             jmp   n114_stmt_mark_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_stmt_mark_bx, @function
n114_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'after 20 rebuilds = ' TABLE_ACCESS(20)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n114_stmt_mark_α:       mov              r11, 115
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n115_statement_begin_α
                        .size            n114_stmt_mark_bx, .-n114_stmt_mark_bx
                        .type            n115_statement_begin_bx, @function
n115_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 116;                            jmp   n116_lit_string_α
n115_statement_begin_β: mov              r11, 116;                            jmp   main_γ
                        .size            n115_statement_begin_bx, .-n115_statement_begin_bx
                        .type            n116_lit_string_bx, @function
n116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      sub              rsp, 16
                        mov              r11, 117
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_lit_integer_α
.Llit_string_α_309_0:   .quad            .Llit_string_α_309_0_s
.Llit_string_α_309_0_s: .string          "after 20 rebuilds = "
                        .size            n116_lit_string_bx, .-n116_lit_string_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_call_α
n117_lit_integer_β:     mov              r11, 118
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
.Llit_integer_α_310_0:  .quad            20
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
                        mov              r11, 119
                        lea              rcx, [rip + .Lcall_α_sig312z]
                        lea              rax, [rip + TABLE_ACCESS_α];         jmp   rax
.Lcall_α_sig312z:       .quad            1
                        .quad            .Lcall_α_312_2
                        .quad            .Lcall_α_312_2
                        .quad            16
.Lcall_α_312_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_312_29
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
.Lcall_α_312_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_312_240
                        add              rsp, 16;                             jmp   n117_lit_integer_β
.Lcall_α_312_240:                                                             jmp   n119_binop_α
n118_call_β:            mov              r11, 119;                            jmp   n117_lit_integer_β
.Lcall_β_312_0:         .quad            .Lcall_β_312_0_s
.Lcall_β_312_0_s:       .string          "TABLE_ACCESS"
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_binop_bx, @function
n119_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           sub              rsp, 16
                        mov              r11, 120
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_assign_α
n119_binop_β:           mov              r11, 120
                        add              rsp, 32;                             jmp   n117_lit_integer_β
                        .size            n119_binop_bx, .-n119_binop_bx
                        .type            n120_assign_bx, @function
n120_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 121
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
                        mov              rdi, qword ptr [rip + .Lassign_α_314_0]
                        .section         .rodata
.Lassign_α_314_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_314_1_s]
                        mov              r8, 21
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
                        add              rsp, 16
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_314_0]
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
                        add              rsp, 16;                             jmp   n121_statement_end_α
.Lassign_α_314_0:       .quad            .Lassign_α_314_0_s
.Lassign_α_314_0_s:     .string          "OUTPUT"
                        .size            n120_assign_bx, .-n120_assign_bx
                        .type            n121_statement_end_bx, @function
n121_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 122
                        add              rsp, 64;                             jmp   main_γ
                        .size            n121_statement_end_bx, .-n121_statement_end_bx
                        .type            n122_goto_bx, @function
n122_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_goto_α:            mov              r11, 123;                            jmp   LBL__TABLE_ACCESS
n122_goto_β:            mov              r11, 123;                            jmp   main_ω
                        .size            n122_goto_bx, .-n122_goto_bx
                        .type            n123_stmt_mark_bx, @function
n123_stmt_mark_bx:
#=======================================================================================================================
# TABLE_ACCESS  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
LBL__TABLE_ACCESS:      mov              r11, 124
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n19_statement_begin_α
                        .size            n123_stmt_mark_bx, .-n123_stmt_mark_bx
                        .type            n124_goto_bx, @function
n124_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_goto_α:            mov              r11, 125;                            jmp   n23_stmt_mark_α
n124_goto_β:            mov              r11, 125;                            jmp   main_ω
                        .size            n124_goto_bx, .-n124_goto_bx
                        .type            n125_goto_bx, @function
n125_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_goto_α:            mov              r11, 126;                            jmp   n34_stmt_mark_α
n125_goto_β:            mov              r11, 126;                            jmp   main_ω
                        .size            n125_goto_bx, .-n125_goto_bx
                        .type            n126_goto_bx, @function
n126_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_goto_α:            mov              r11, 127;                            jmp   n65_stmt_mark_α
n126_goto_β:            mov              r11, 127;                            jmp   main_ω
                        .size            n126_goto_bx, .-n126_goto_bx
                        .type            n127_goto_bx, @function
n127_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_goto_α:            mov              r11, 128;                            jmp   n18_stmt_mark_α
n127_goto_β:            mov              r11, 128;                            jmp   main_ω
                        .size            n127_goto_bx, .-n127_goto_bx
                        .type            n128_define_bx, @function
n128_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 129
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
                        .size            n128_define_bx, .-n128_define_bx
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
                        .quad            4605551398234
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1056
                        .quad            1
                        .quad            1161084278931456
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__TABLE_ACCESS"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__TABLE_ACCESS
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1056
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "TABLE_ACCESS"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            TABLE_ACCESS_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + TABLE_ACCESS_α@GOTPCREL]
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
