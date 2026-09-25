                        .intel_syntax    noprefix
                        .text
                        .file            1 "var_access.sno"
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
.Lgvan0:                .string          "VAR_ACCESS"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "B"
.Lgvan4:                .string          "C"
.Lgvan5:                .string          "D"
.Lgvan6:                .string          "E"
.Lgvan7:                .string          "ZI"
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
.Llbln0:                .string          "VAR_ACCESS"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "VAR_ACCESS_END"
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
                        mov              qword ptr [rsp + 1112], rax
                        mov              dword ptr [rsp + 1104], 160
                        mov              dword ptr [rsp + 1108], 1120
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_142_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_142_0:  .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_143_0:  .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_144_0:   .quad            .Llit_string_α_144_0_s
.Llit_string_α_144_0_s: .string          "var_access.sno"
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
.Lcall_α_rkfnzd146:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd146]
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
                        cmp              al, 104;                             jne   .Lcall_α_145_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_145_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_kw_assign_snobol4_α
.Llit_integer_α_151_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_kw_assign_snobol4_bx, @function
n7_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_152_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_152_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lkw_assign_snobol4_α_152_240:
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
.Lkw_assign_snobol4_α_152_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_kw_assign_snobol4_α
.Llit_integer_α_159_0:  .quad            0
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_kw_assign_snobol4_bx, @function
n12_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_160_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_160_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lkw_assign_snobol4_α_160_240:
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
.Lkw_assign_snobol4_α_160_0:
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
#         DEFINE('VAR_ACCESS(N)')                         :(VAR_ACCESS_END)
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_168_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_168_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__VAR_ACCESS]
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
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_168_0]
                        lea              rsi, [rip + VAR_ACCESS_α]
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
entry_cell$VAR_ACCESS:  .quad            LBL__VAR_ACCESS
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__VAR_ACCESS]
                        mov              rcx, qword ptr [rip + entry_cell$VAR_ACCESS@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n17_statement_end_α
n16_define_β:           mov              r11, 17;                             jmp   n15_statement_begin_β
.Ldefine_α_168_0:       .quad            .Ldefine_α_168_0_s
.Ldefine_α_168_0_s:     .string          "VAR_ACCESS"
.Ldefine_α_168_1:       .quad            .Ldefine_α_168_1_s
.Ldefine_α_168_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_169_245
#-----------------------------------------------------------------------------------------------------------------------
VAR_ACCESS_α:           sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # VAR_ACCESS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_169_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_169_41
.Ldefine_α_169_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_169_41:      push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_169_231
.Ldefine_α_169_232:     .quad            .Ldefine_α_169_232_s
.Ldefine_α_169_232_s:   .string          "VAR_ACCESS"
.Ldefine_α_169_231:     lea              rcx, [rip + VAR_ACCESS_γ]
                        lea              rax, [rip + VAR_ACCESS_ω]
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
                        mov              rax, qword ptr [rip + entry_cell$VAR_ACCESS@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
VAR_ACCESS_γ:           mov              rdi, qword ptr [r9 + 0]              # VAR_ACCESS
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_169_236
.Ldefine_α_169_237:     .quad            .Ldefine_α_169_237_s
.Ldefine_α_169_237_s:   .string          "VAR_ACCESS"
.Ldefine_α_169_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_169_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_169_110
.Ldefine_α_169_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_169_110:     push             rcx
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
VAR_ACCESS_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # VAR_ACCESS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_169_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_169_180
.Ldefine_α_169_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_169_180:     push             rcx
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
.Ldefine_α_169_245:
                        .size            n16_define_bx, .-n16_define_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18;                             jmp   n18_stmt_mark_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_stmt_mark_bx, @function
n18_stmt_mark_bx:
#=======================================================================================================================
# VAR_ACCESS_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n18_stmt_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n100_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Llit_integer_α_176_0:  .quad            1
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
#         B = 2
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Llit_integer_α_184_0:  .quad            2
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # B
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
#         C = 0
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
n29_statement_begin_α:  mov              r11, 30;                             jmp   n30_lit_integer_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n33_stmt_mark_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Llit_integer_α_192_0:  .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # C
                        mov              qword ptr [r9 + 72], rdx;            jmp   n32_statement_end_α
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 33
                        add              rsp, 16;                             jmp   n33_stmt_mark_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_stmt_mark_bx, @function
n33_stmt_mark_bx:
#=======================================================================================================================
#         D = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n33_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n34_statement_begin_α
                        .size            n33_stmt_mark_bx, .-n33_stmt_mark_bx
                        .type            n34_statement_begin_bx, @function
n34_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35;                             jmp   n35_lit_integer_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n38_stmt_mark_α
                        .size            n34_statement_begin_bx, .-n34_statement_begin_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_assign_α
.Llit_integer_α_200_0:  .quad            0
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_assign_bx, @function
n36_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # D
                        mov              qword ptr [r9 + 88], rdx;            jmp   n37_statement_end_α
                        .size            n36_assign_bx, .-n36_assign_bx
                        .type            n37_statement_end_bx, @function
n37_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        add              rsp, 16;                             jmp   n38_stmt_mark_α
                        .size            n37_statement_end_bx, .-n37_statement_end_bx
                        .type            n38_stmt_mark_bx, @function
n38_stmt_mark_bx:
#=======================================================================================================================
#         E = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n38_stmt_mark_α:        mov              r11, 39
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n39_statement_begin_α
                        .size            n38_stmt_mark_bx, .-n38_stmt_mark_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 40;                             jmp   n40_lit_integer_α
n39_statement_begin_β:  mov              r11, 40;                             jmp   n43_stmt_mark_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Llit_integer_α_208_0:  .quad            0
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # E
                        mov              qword ptr [r9 + 104], rdx;           jmp   n42_statement_end_α
                        .size            n41_assign_bx, .-n41_assign_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        add              rsp, 16;                             jmp   n43_stmt_mark_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_stmt_mark_bx, @function
n43_stmt_mark_bx:
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n43_stmt_mark_α:        mov              r11, 44
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n44_statement_begin_α
                        .size            n43_stmt_mark_bx, .-n43_stmt_mark_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 45;                             jmp   n45_lit_integer_α
n44_statement_begin_β:  mov              r11, 45;                             jmp   n48_stmt_mark_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_assign_α
.Llit_integer_α_216_0:  .quad            1
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n47_statement_end_α
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        add              rsp, 16;                             jmp   n48_stmt_mark_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_stmt_mark_bx, @function
n48_stmt_mark_bx:
#=======================================================================================================================
# ZBL     A = A + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n48_stmt_mark_α:        mov              r11, 49
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n49_statement_begin_α
                        .size            n48_stmt_mark_bx, .-n48_stmt_mark_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 50;                             jmp   n50_var_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   n55_stmt_mark_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_var_bx, @function
n50_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_lit_integer_α
                        .size            n50_var_bx, .-n50_var_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_binop_α
n51_lit_integer_β:      mov              r11, 52
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Llit_integer_α_225_0:  .quad            1
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_binop_bx, @function
n52_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:            sub              rsp, 16
                        mov              r11, 53
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_226_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_226_7
.Lbinop_α_226_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_226_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_226_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_226_4
.Lbinop_α_226_3:        movq             xmm0, rsi
.Lbinop_α_226_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_226_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_226_7:                                                              jmp   n53_assign_α
.Lbinop_α_226_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_226_240
                        add              rsp, 16;                             jmp   n51_lit_integer_β
.Lbinop_α_226_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n53_assign_α
n52_binop_β:            mov              r11, 53
                        add              rsp, 16;                             jmp   n51_lit_integer_β
                        .size            n52_binop_bx, .-n52_binop_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 54
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n54_statement_end_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 55
                        add              rsp, 48;                             jmp   n55_stmt_mark_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_stmt_mark_bx, @function
n55_stmt_mark_bx:
#=======================================================================================================================
#         B = B + 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n55_stmt_mark_α:        mov              r11, 56
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n56_statement_begin_α
                        .size            n55_stmt_mark_bx, .-n55_stmt_mark_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 57;                             jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 57;                             jmp   n62_stmt_mark_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_lit_integer_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
n58_lit_integer_β:      mov              r11, 59
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n56_statement_begin_β
.Llit_integer_α_235_0:  .quad            2
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_236_2
                        add              rax, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_236_7
.Lbinop_α_236_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_236_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_236_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_236_4
.Lbinop_α_236_3:        movq             xmm0, rsi
.Lbinop_α_236_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_236_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_236_7:                                                              jmp   n60_assign_α
.Lbinop_α_236_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_236_240
                        add              rsp, 16;                             jmp   n58_lit_integer_β
.Lbinop_α_236_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n60_assign_α
n59_binop_β:            mov              r11, 60
                        add              rsp, 16;                             jmp   n58_lit_integer_β
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # B
                        mov              qword ptr [r9 + 56], rdx;            jmp   n61_statement_end_α
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        add              rsp, 48;                             jmp   n62_stmt_mark_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_stmt_mark_bx, @function
n62_stmt_mark_bx:
#=======================================================================================================================
#         C = A + B
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n62_stmt_mark_α:        mov              r11, 63
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n63_statement_begin_α
                        .size            n62_stmt_mark_bx, .-n62_stmt_mark_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64;                             jmp   n64_var_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   n69_stmt_mark_α
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_var_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_binop_α
n65_var_β:              mov              r11, 66
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n63_statement_begin_β
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_binop_bx, @function
n66_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:            sub              rsp, 16
                        mov              r11, 67
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_246_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_246_7
.Lbinop_α_246_2:        and              edx, 1;                              jz    .Lbinop_α_246_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_246_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_246_4
.Lbinop_α_246_3:        movq             xmm0, rsi
.Lbinop_α_246_4:        cmp              cl, 5;                               je    .Lbinop_α_246_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_246_6
.Lbinop_α_246_5:        movq             xmm1, rdi
.Lbinop_α_246_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_246_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_246_7:                                                              jmp   n67_assign_α
.Lbinop_α_246_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_246_240
                        add              rsp, 16;                             jmp   n65_var_β
.Lbinop_α_246_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n67_assign_α
n66_binop_β:            mov              r11, 67
                        add              rsp, 16;                             jmp   n65_var_β
                        .size            n66_binop_bx, .-n66_binop_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # C
                        mov              qword ptr [r9 + 72], rdx;            jmp   n68_statement_end_α
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        add              rsp, 48;                             jmp   n69_stmt_mark_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_stmt_mark_bx, @function
n69_stmt_mark_bx:
#=======================================================================================================================
#         D = C + A
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n69_stmt_mark_α:        mov              r11, 70
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n70_statement_begin_α
                        .size            n69_stmt_mark_bx, .-n69_stmt_mark_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71;                             jmp   n71_var_α
n70_statement_begin_β:  mov              r11, 71;                             jmp   n76_stmt_mark_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # C
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_var_α
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_binop_α
n72_var_β:              mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_256_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_256_7
.Lbinop_α_256_2:        and              edx, 1;                              jz    .Lbinop_α_256_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_256_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_256_4
.Lbinop_α_256_3:        movq             xmm0, rsi
.Lbinop_α_256_4:        cmp              cl, 5;                               je    .Lbinop_α_256_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_256_6
.Lbinop_α_256_5:        movq             xmm1, rdi
.Lbinop_α_256_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_256_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_256_7:                                                              jmp   n74_assign_α
.Lbinop_α_256_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_256_240
                        add              rsp, 16;                             jmp   n72_var_β
.Lbinop_α_256_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n74_assign_α
n73_binop_β:            mov              r11, 74
                        add              rsp, 16;                             jmp   n72_var_β
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # D
                        mov              qword ptr [r9 + 88], rdx;            jmp   n75_statement_end_α
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        add              rsp, 48;                             jmp   n76_stmt_mark_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_stmt_mark_bx, @function
n76_stmt_mark_bx:
#=======================================================================================================================
#         E = D + B
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n76_stmt_mark_α:        mov              r11, 77
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n77_statement_begin_α
                        .size            n76_stmt_mark_bx, .-n76_stmt_mark_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 78;                             jmp   n78_var_α
n77_statement_begin_β:  mov              r11, 78;                             jmp   n83_stmt_mark_α
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 80]             # D
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_var_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_binop_α
n79_var_β:              mov              r11, 80
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n77_statement_begin_β
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_binop_bx, @function
n80_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
                        mov              r11, 81
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_266_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_266_7
.Lbinop_α_266_2:        and              edx, 1;                              jz    .Lbinop_α_266_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_266_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_266_4
.Lbinop_α_266_3:        movq             xmm0, rsi
.Lbinop_α_266_4:        cmp              cl, 5;                               je    .Lbinop_α_266_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_266_6
.Lbinop_α_266_5:        movq             xmm1, rdi
.Lbinop_α_266_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_266_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_266_7:                                                              jmp   n81_assign_α
.Lbinop_α_266_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_266_240
                        add              rsp, 16;                             jmp   n79_var_β
.Lbinop_α_266_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n81_assign_α
n80_binop_β:            mov              r11, 81
                        add              rsp, 16;                             jmp   n79_var_β
                        .size            n80_binop_bx, .-n80_binop_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # E
                        mov              qword ptr [r9 + 104], rdx;           jmp   n82_statement_end_α
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        add              rsp, 48;                             jmp   n83_stmt_mark_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_stmt_mark_bx, @function
n83_stmt_mark_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n83_stmt_mark_α:        mov              r11, 84
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n84_statement_begin_α
                        .size            n83_stmt_mark_bx, .-n83_stmt_mark_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 85;                             jmp   n85_var_α
n84_statement_begin_β:  mov              r11, 85;                             jmp   n95_stmt_mark_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              r11, 86
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_var_α
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_coerce_numeric_α
n86_var_β:              mov              r11, 87
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_β
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_coerce_numeric_bx, @function
n87_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 88
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_277_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_277_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_277_0
.Lcoerce_numeric_α_277_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_coerce_numeric_α
.Lcoerce_numeric_α_277_0:
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
1:                                                                            jmp   n88_coerce_numeric_α
n87_coerce_numeric_β:   mov              r11, 88
                        add              rsp, 16;                             jmp   n86_var_β
                        .size            n87_coerce_numeric_bx, .-n87_coerce_numeric_bx
                        .type            n88_coerce_numeric_bx, @function
n88_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 89
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_279_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_279_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_279_0
.Lcoerce_numeric_α_279_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_cmp_test_α
.Lcoerce_numeric_α_279_0:
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
1:                                                                            jmp   n89_cmp_test_α
n88_coerce_numeric_β:   mov              r11, 89
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
                        .size            n88_coerce_numeric_bx, .-n88_coerce_numeric_bx
                        .type            n89_cmp_test_bx, @function
n89_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_cmp_test_α:         sub              rsp, 16
                        mov              r11, 90
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_281_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_281_239
                        add              rsp, 16;                             jmp   n88_coerce_numeric_β
.Lcmp_test_α_281_239:                                                         jmp   n90_var_α
.Lcmp_test_α_281_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_281_240
                        add              rsp, 16;                             jmp   n88_coerce_numeric_β
.Lcmp_test_α_281_240:                                                         jmp   n90_var_α
n89_cmp_test_β:         mov              r11, 90
                        add              rsp, 16;                             jmp   n88_coerce_numeric_β
                        .size            n89_cmp_test_bx, .-n89_cmp_test_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_lit_integer_α
n90_var_β:              mov              r11, 91
                        add              rsp, 16;                             jmp   n89_cmp_test_β
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_binop_α
n91_lit_integer_β:      mov              r11, 92
                        add              rsp, 16;                             jmp   n90_var_β
.Llit_integer_α_283_0:  .quad            1
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_binop_bx, @function
n92_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            sub              rsp, 16
                        mov              r11, 93
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_284_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_284_7
.Lbinop_α_284_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_284_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_284_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_284_4
.Lbinop_α_284_3:        movq             xmm0, rsi
.Lbinop_α_284_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_284_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_284_7:                                                              jmp   n93_assign_α
.Lbinop_α_284_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_284_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lbinop_α_284_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n93_assign_α
n92_binop_β:            mov              r11, 93
                        add              rsp, 16;                             jmp   n91_lit_integer_β
                        .size            n92_binop_bx, .-n92_binop_bx
                        .type            n93_assign_bx, @function
n93_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n94_statement_end_α
                        .size            n93_assign_bx, .-n93_assign_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 95
                        add              rsp, 128;                            jmp   n48_stmt_mark_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_stmt_mark_bx, @function
n95_stmt_mark_bx:
#=======================================================================================================================
#         VAR_ACCESS = E                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n95_stmt_mark_α:        mov              r11, 96
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n96_statement_begin_α
                        .size            n95_stmt_mark_bx, .-n95_stmt_mark_bx
                        .type            n96_statement_begin_bx, @function
n96_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 97;                             jmp   n97_var_α
n96_statement_begin_β:  mov              r11, 97;                             jmp   RETURN
                        .size            n96_statement_begin_bx, .-n96_statement_begin_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # E
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_assign_α
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_assign_bx, @function
n98_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # VAR_ACCESS
                        mov              qword ptr [r9 + 8], rdx;             jmp   n99_statement_end_α
                        .size            n98_assign_bx, .-n98_assign_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        add              rsp, 16;                             jmp   RETURN
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 101;                            jmp   n101_statement_end_α
n100_statement_begin_β: mov              r11, 101;                            jmp   n102_stmt_mark_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_statement_end_bx, @function
n101_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   mov              r11, 102;                            jmp   n102_stmt_mark_α
                        .size            n101_statement_end_bx, .-n101_statement_end_bx
                        .type            n102_stmt_mark_bx, @function
n102_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'E after 1 step    = ' VAR_ACCESS(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n102_stmt_mark_α:       mov              r11, 103
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22;             jmp   n103_statement_begin_α
                        .size            n102_stmt_mark_bx, .-n102_stmt_mark_bx
                        .type            n103_statement_begin_bx, @function
n103_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 104;                            jmp   n104_lit_string_α
n103_statement_begin_β: mov              r11, 104;                            jmp   n110_stmt_mark_α
                        .size            n103_statement_begin_bx, .-n103_statement_begin_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_304_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_lit_integer_α
.Llit_string_α_304_0:   .quad            .Llit_string_α_304_0_s
.Llit_string_α_304_0_s: .string          "E after 1 step    = "
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_call_α
n105_lit_integer_β:     mov              r11, 106
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Llit_integer_α_305_0:  .quad            1
                        .size            n105_lit_integer_bx, .-n105_lit_integer_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        mov              r11, 107
                        lea              rcx, [rip + .Lcall_α_sig307z]
                        lea              rax, [rip + VAR_ACCESS_α];           jmp   rax
.Lcall_α_sig307z:       .quad            1
                        .quad            .Lcall_α_307_2
                        .quad            .Lcall_α_307_2
                        .quad            16
.Lcall_α_307_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_307_29
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
.Lcall_α_307_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_307_240
                        add              rsp, 16;                             jmp   n105_lit_integer_β
.Lcall_α_307_240:                                                             jmp   n107_binop_α
n106_call_β:            mov              r11, 107;                            jmp   n105_lit_integer_β
.Lcall_β_307_0:         .quad            .Lcall_β_307_0_s
.Lcall_β_307_0_s:       .string          "VAR_ACCESS"
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_binop_bx, @function
n107_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:           sub              rsp, 16
                        mov              r11, 108
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
1:                                                                            jmp   n108_assign_α
n107_binop_β:           mov              r11, 108
                        add              rsp, 32;                             jmp   n105_lit_integer_β
                        .size            n107_binop_bx, .-n107_binop_bx
                        .type            n108_assign_bx, @function
n108_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_309_0]
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
1:                                                                            jmp   n109_statement_end_α
.Lassign_α_309_0:       .quad            .Lassign_α_309_0_s
.Lassign_α_309_0_s:     .string          "OUTPUT"
                        .size            n108_assign_bx, .-n108_assign_bx
                        .type            n109_statement_end_bx, @function
n109_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 110
                        add              rsp, 64;                             jmp   n110_stmt_mark_α
                        .size            n109_statement_end_bx, .-n109_statement_end_bx
                        .type            n110_stmt_mark_bx, @function
n110_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'E after 1000 steps = ' VAR_ACCESS(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n110_stmt_mark_α:       mov              r11, 111
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 23;             jmp   n111_statement_begin_α
                        .size            n110_stmt_mark_bx, .-n110_stmt_mark_bx
                        .type            n111_statement_begin_bx, @function
n111_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α: mov              r11, 112;                            jmp   n112_lit_string_α
n111_statement_begin_β: mov              r11, 112;                            jmp   n118_stmt_mark_α
                        .size            n111_statement_begin_bx, .-n111_statement_begin_bx
                        .type            n112_lit_string_bx, @function
n112_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Llit_string_α_316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_lit_integer_α
.Llit_string_α_316_0:   .quad            .Llit_string_α_316_0_s
.Llit_string_α_316_0_s: .string          "E after 1000 steps = "
                        .size            n112_lit_string_bx, .-n112_lit_string_bx
                        .type            n113_lit_integer_bx, @function
n113_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_call_α
n113_lit_integer_β:     mov              r11, 114
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
.Llit_integer_α_317_0:  .quad            1000
                        .size            n113_lit_integer_bx, .-n113_lit_integer_bx
                        .type            n114_call_bx, @function
n114_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            sub              rsp, 16
                        mov              r11, 115
                        lea              rcx, [rip + .Lcall_α_sig319z]
                        lea              rax, [rip + VAR_ACCESS_α];           jmp   rax
.Lcall_α_sig319z:       .quad            1
                        .quad            .Lcall_α_319_2
                        .quad            .Lcall_α_319_2
                        .quad            16
.Lcall_α_319_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_319_29
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
.Lcall_α_319_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_319_240
                        add              rsp, 16;                             jmp   n113_lit_integer_β
.Lcall_α_319_240:                                                             jmp   n115_binop_α
n114_call_β:            mov              r11, 115;                            jmp   n113_lit_integer_β
.Lcall_β_319_0:         .quad            .Lcall_β_319_0_s
.Lcall_β_319_0_s:       .string          "VAR_ACCESS"
                        .size            n114_call_bx, .-n114_call_bx
                        .type            n115_binop_bx, @function
n115_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:           sub              rsp, 16
                        mov              r11, 116
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
1:                                                                            jmp   n116_assign_α
n115_binop_β:           mov              r11, 116
                        add              rsp, 32;                             jmp   n113_lit_integer_β
                        .size            n115_binop_bx, .-n115_binop_bx
                        .type            n116_assign_bx, @function
n116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_321_0]
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
1:                                                                            jmp   n117_statement_end_α
.Lassign_α_321_0:       .quad            .Lassign_α_321_0_s
.Lassign_α_321_0_s:     .string          "OUTPUT"
                        .size            n116_assign_bx, .-n116_assign_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 118
                        add              rsp, 64;                             jmp   n118_stmt_mark_α
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_stmt_mark_bx, @function
n118_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'A=' A ' B=' B ' C=' C ' D=' D
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n118_stmt_mark_α:       mov              r11, 119
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24;             jmp   n119_statement_begin_α
                        .size            n118_stmt_mark_bx, .-n118_stmt_mark_bx
                        .type            n119_statement_begin_bx, @function
n119_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α: mov              r11, 120;                            jmp   n120_lit_string_α
n119_statement_begin_β: mov              r11, 120;                            jmp   main_γ
                        .size            n119_statement_begin_bx, .-n119_statement_begin_bx
                        .type            n120_lit_string_bx, @function
n120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      sub              rsp, 16
                        mov              r11, 121
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_328_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_var_α
.Llit_string_α_328_0:   .quad            .Llit_string_α_328_0_s
.Llit_string_α_328_0_s: .string          "A="
                        .size            n120_lit_string_bx, .-n120_lit_string_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_binop_α
n121_var_β:             mov              r11, 122
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_binop_bx, @function
n122_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:           sub              rsp, 16
                        mov              r11, 123
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
1:                                                                            jmp   n123_lit_string_α
n122_binop_β:           mov              r11, 123
                        add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_binop_bx, .-n122_binop_bx
                        .type            n123_lit_string_bx, @function
n123_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_binop_α
n123_lit_string_β:      mov              r11, 124
                        add              rsp, 16;                             jmp   n122_binop_β
.Llit_string_α_331_0:   .quad            .Llit_string_α_331_0_s
.Llit_string_α_331_0_s: .string          " B="
                        .size            n123_lit_string_bx, .-n123_lit_string_bx
                        .type            n124_binop_bx, @function
n124_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
                        mov              r11, 125
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
1:                                                                            jmp   n125_var_α
n124_binop_β:           mov              r11, 125
                        add              rsp, 16;                             jmp   n123_lit_string_β
                        .size            n124_binop_bx, .-n124_binop_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_binop_α
n125_var_β:             mov              r11, 126
                        add              rsp, 16;                             jmp   n124_binop_β
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_binop_bx, @function
n126_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
                        mov              r11, 127
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
1:                                                                            jmp   n127_lit_string_α
n126_binop_β:           mov              r11, 127
                        add              rsp, 16;                             jmp   n125_var_β
                        .size            n126_binop_bx, .-n126_binop_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_binop_α
n127_lit_string_β:      mov              r11, 128
                        add              rsp, 16;                             jmp   n126_binop_β
.Llit_string_α_335_0:   .quad            .Llit_string_α_335_0_s
.Llit_string_α_335_0_s: .string          " C="
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_binop_bx, @function
n128_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:           sub              rsp, 16
                        mov              r11, 129
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
1:                                                                            jmp   n129_var_α
n128_binop_β:           mov              r11, 129
                        add              rsp, 16;                             jmp   n127_lit_string_β
                        .size            n128_binop_bx, .-n128_binop_bx
                        .type            n129_var_bx, @function
n129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              r11, 130
                        mov              rax, qword ptr [r9 + 64]             # C
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_binop_α
n129_var_β:             mov              r11, 130
                        add              rsp, 16;                             jmp   n128_binop_β
                        .size            n129_var_bx, .-n129_var_bx
                        .type            n130_binop_bx, @function
n130_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:           sub              rsp, 16
                        mov              r11, 131
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
1:                                                                            jmp   n131_lit_string_α
n130_binop_β:           mov              r11, 131
                        add              rsp, 16;                             jmp   n129_var_β
                        .size            n130_binop_bx, .-n130_binop_bx
                        .type            n131_lit_string_bx, @function
n131_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_binop_α
n131_lit_string_β:      mov              r11, 132
                        add              rsp, 16;                             jmp   n130_binop_β
.Llit_string_α_339_0:   .quad            .Llit_string_α_339_0_s
.Llit_string_α_339_0_s: .string          " D="
                        .size            n131_lit_string_bx, .-n131_lit_string_bx
                        .type            n132_binop_bx, @function
n132_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           sub              rsp, 16
                        mov              r11, 133
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
1:                                                                            jmp   n133_var_α
n132_binop_β:           mov              r11, 133
                        add              rsp, 16;                             jmp   n131_lit_string_β
                        .size            n132_binop_bx, .-n132_binop_bx
                        .type            n133_var_bx, @function
n133_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 80]             # D
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_binop_α
n133_var_β:             mov              r11, 134
                        add              rsp, 16;                             jmp   n132_binop_β
                        .size            n133_var_bx, .-n133_var_bx
                        .type            n134_binop_bx, @function
n134_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:           sub              rsp, 16
                        mov              r11, 135
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
1:                                                                            jmp   n135_assign_α
n134_binop_β:           mov              r11, 135
                        add              rsp, 16;                             jmp   n133_var_β
                        .size            n134_binop_bx, .-n134_binop_bx
                        .type            n135_assign_bx, @function
n135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_343_0]
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
1:                                                                            jmp   n136_statement_end_α
.Lassign_α_343_0:       .quad            .Lassign_α_343_0_s
.Lassign_α_343_0_s:     .string          "OUTPUT"
                        .size            n135_assign_bx, .-n135_assign_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137
                        add              rsp, 240;                            jmp   main_γ
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_goto_bx, @function
n137_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_goto_α:            mov              r11, 138;                            jmp   LBL__VAR_ACCESS
n137_goto_β:            mov              r11, 138;                            jmp   main_ω
                        .size            n137_goto_bx, .-n137_goto_bx
                        .type            n138_stmt_mark_bx, @function
n138_stmt_mark_bx:
#=======================================================================================================================
# VAR_ACCESS  A = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
LBL__VAR_ACCESS:        mov              r11, 139
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n19_statement_begin_α
                        .size            n138_stmt_mark_bx, .-n138_stmt_mark_bx
                        .type            n139_goto_bx, @function
n139_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_goto_α:            mov              r11, 140;                            jmp   n48_stmt_mark_α
n139_goto_β:            mov              r11, 140;                            jmp   main_ω
                        .size            n139_goto_bx, .-n139_goto_bx
                        .type            n140_goto_bx, @function
n140_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_goto_α:            mov              r11, 141;                            jmp   n18_stmt_mark_α
n140_goto_β:            mov              r11, 141;                            jmp   main_ω
                        .size            n140_goto_bx, .-n140_goto_bx
                        .type            n141_define_bx, @function
n141_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 142
                        mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n141_define_bx, .-n141_define_bx
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__VAR_ACCESS"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__VAR_ACCESS
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1104
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "VAR_ACCESS"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            VAR_ACCESS_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + VAR_ACCESS_α@GOTPCREL]
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
