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
                        mov              qword ptr [rsp + 3288], rax
                        mov              dword ptr [rsp + 3280], 160
                        mov              dword ptr [rsp + 3284], 3296
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
1:                      cmp              al, 104;                             jne   .Lcall_α_338_240
                        add              rsp, 16;                             jmp   n1_lit_integer_α
.Lcall_α_338_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n1_lit_integer_α
n0_call_β:              mov              r11, 1
                        add              rsp, 16;                             jmp   n1_lit_integer_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#=======================================================================================================================
#         census = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Llit_integer_α_339_0:  .quad            18446744073709551615
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_340_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_string_α
.Llit_integer_α_340_0:  .quad            0
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_call_α
.Llit_string_α_341_0:   .quad            .Llit_string_α_341_0_s
.Llit_string_α_341_0_s: .string          "table_variety.sno"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
                        mov              r11, 5
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
.Lcall_α_rkfnzd343:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd343]
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
                        cmp              al, 104;                             jne   .Lcall_α_342_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n5_stmt_mark_α
.Lcall_α_342_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n5_stmt_mark_α
n4_call_β:              mov              r11, 5
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n5_stmt_mark_α
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_stmt_mark_bx, @function
n5_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_stmt_mark_α:         mov              r11, 6
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n6_statement_begin_α
                        .size            n5_stmt_mark_bx, .-n5_stmt_mark_bx
                        .type            n6_statement_begin_bx, @function
n6_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 7;                              jmp   n7_lit_integer_α
n6_statement_begin_β:   mov              r11, 7;                              jmp   n10_stmt_mark_α
                        .size            n6_statement_begin_bx, .-n6_statement_begin_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              r11, 8
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_assign_α
.Llit_integer_α_348_0:  .quad            0
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n9_statement_end_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_statement_end_bx, @function
n9_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     mov              r11, 10
                        add              rsp, 16;                             jmp   n10_stmt_mark_α
                        .size            n9_statement_end_bx, .-n9_statement_end_bx
                        .type            n10_stmt_mark_bx, @function
n10_stmt_mark_bx:
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n10_stmt_mark_α:        mov              r11, 11
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n11_statement_begin_α
                        .size            n10_stmt_mark_bx, .-n10_stmt_mark_bx
                        .type            n11_statement_begin_bx, @function
n11_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 12;                             jmp   n12_lit_integer_α
n11_statement_begin_β:  mov              r11, 12;                             jmp   n15_stmt_mark_α
                        .size            n11_statement_begin_bx, .-n11_statement_begin_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
.Llit_integer_α_356_0:  .quad            1
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n14_statement_end_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        add              rsp, 16;                             jmp   n15_stmt_mark_α
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_stmt_mark_bx, @function
n15_stmt_mark_bx:
#=======================================================================================================================
# round   tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n15_stmt_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n16_statement_begin_α
                        .size            n15_stmt_mark_bx, .-n15_stmt_mark_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 17;                             jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   n21_stmt_mark_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_364_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_call_α
.Llit_integer_α_364_0:  .quad            64
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_call_bx, @function
n18_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd366:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd366]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_365_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lcall_α_365_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n19_assign_α
n18_call_β:             mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
                        .size            n18_call_bx, .-n18_call_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # tab
                        mov              qword ptr [r9 + 40], rdx;            jmp   n20_statement_end_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_statement_end_bx, @function
n20_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        add              rsp, 32;                             jmp   n21_stmt_mark_α
                        .size            n20_statement_end_bx, .-n20_statement_end_bx
                        .type            n21_stmt_mark_bx, @function
n21_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n21_stmt_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n22_statement_begin_α
                        .size            n21_stmt_mark_bx, .-n21_stmt_mark_bx
                        .type            n22_statement_begin_bx, @function
n22_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:  mov              r11, 23;                             jmp   n23_lit_integer_α
n22_statement_begin_β:  mov              r11, 23;                             jmp   n27_stmt_mark_α
                        .size            n22_statement_begin_bx, .-n22_statement_begin_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_unop_α
.Llit_integer_α_374_0:  .quad            30
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_unop_bx, @function
n24_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_unop_α:             sub              rsp, 16
                        mov              r11, 25
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
1:                                                                            jmp   n25_assign_α
n24_unop_β:             mov              r11, 25
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n22_statement_begin_β
                        .size            n24_unop_bx, .-n24_unop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n26_statement_end_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_statement_end_bx, @function
n26_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 27
                        add              rsp, 32;                             jmp   n27_stmt_mark_α
                        .size            n26_statement_end_bx, .-n26_statement_end_bx
                        .type            n27_stmt_mark_bx, @function
n27_stmt_mark_bx:
#=======================================================================================================================
# intfill tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n27_stmt_mark_α:        mov              r11, 28
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n28_statement_begin_α
                        .size            n27_stmt_mark_bx, .-n27_stmt_mark_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29;                             jmp   n29_var_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   n36_stmt_mark_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_var_bx, @function
n29_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_var_α
                        .size            n29_var_bx, .-n29_var_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_var_α
n30_var_β:              mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_lit_integer_α
n31_var_β:              mov              r11, 32
                        add              rsp, 16;                             jmp   n30_var_β
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_binop_α
n32_lit_integer_β:      mov              r11, 33
                        add              rsp, 16;                             jmp   n31_var_β
.Llit_integer_α_386_0:  .quad            3
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_binop_bx, @function
n33_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            sub              rsp, 16
                        mov              r11, 34
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_387_2
                        mov              rdx, 3
                        imul             rax, rdx;                            jo    .Lbinop_α_387_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_387_7
.Lbinop_α_387_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_387_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_387_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_387_4
.Lbinop_α_387_3:        movq             xmm0, rsi
.Lbinop_α_387_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_387_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_387_7:                                                              jmp   n34_assign_var_α
.Lbinop_α_387_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_387_240
                        add              rsp, 16;                             jmp   n32_lit_integer_β
.Lbinop_α_387_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n34_assign_var_α
n33_binop_β:            mov              r11, 34
                        add              rsp, 16;                             jmp   n32_lit_integer_β
                        .size            n33_binop_bx, .-n33_binop_bx
                        .type            n34_assign_var_bx, @function
n34_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_var_α:       sub              rsp, 16
                        mov              r11, 35
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_389_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_389_0
.Lassign_var_α_389_1:   test             rsi, rsi;                            je    .Lassign_var_α_389_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_389_238
                        add              rsp, 16;                             jmp   n33_binop_β
.Lassign_var_α_389_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n35_statement_end_α
.Lassign_var_α_389_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_389_239
                        add              rsp, 16;                             jmp   n33_binop_β
.Lassign_var_α_389_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_389_240
                        add              rsp, 16;                             jmp   n33_binop_β
.Lassign_var_α_389_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n35_statement_end_α
                        .size            n34_assign_var_bx, .-n34_assign_var_bx
                        .type            n35_statement_end_bx, @function
n35_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        add              rsp, 96;                             jmp   n36_stmt_mark_α
                        .size            n35_statement_end_bx, .-n35_statement_end_bx
                        .type            n36_stmt_mark_bx, @function
n36_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n36_stmt_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n37_statement_begin_α
                        .size            n36_stmt_mark_bx, .-n36_stmt_mark_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 38;                             jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n48_stmt_mark_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_lit_integer_α
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_coerce_numeric_α
n39_lit_integer_β:      mov              r11, 40
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Llit_integer_α_397_0:  .quad            30
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_coerce_numeric_bx, @function
n40_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 41
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_399_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_399_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_399_0
.Lcoerce_numeric_α_399_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_coerce_numeric_α
.Lcoerce_numeric_α_399_0:
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
1:                                                                            jmp   n41_coerce_numeric_α
n40_coerce_numeric_β:   mov              r11, 41
                        add              rsp, 16;                             jmp   n39_lit_integer_β
                        .size            n40_coerce_numeric_bx, .-n40_coerce_numeric_bx
                        .type            n41_coerce_numeric_bx, @function
n41_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_401_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_401_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_401_0
.Lcoerce_numeric_α_401_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_cmp_test_α
.Lcoerce_numeric_α_401_0:
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
1:                                                                            jmp   n42_cmp_test_α
n41_coerce_numeric_β:   mov              r11, 42
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
                        .size            n41_coerce_numeric_bx, .-n41_coerce_numeric_bx
                        .type            n42_cmp_test_bx, @function
n42_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_cmp_test_α:         sub              rsp, 16
                        mov              r11, 43
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_403_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_403_239
                        add              rsp, 16;                             jmp   n41_coerce_numeric_β
.Lcmp_test_α_403_239:                                                         jmp   n43_var_α
.Lcmp_test_α_403_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_403_240
                        add              rsp, 16;                             jmp   n41_coerce_numeric_β
.Lcmp_test_α_403_240:                                                         jmp   n43_var_α
n42_cmp_test_β:         mov              r11, 43
                        add              rsp, 16;                             jmp   n41_coerce_numeric_β
                        .size            n42_cmp_test_bx, .-n42_cmp_test_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_lit_integer_α
n43_var_β:              mov              r11, 44
                        add              rsp, 16;                             jmp   n42_cmp_test_β
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_405_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_binop_α
n44_lit_integer_β:      mov              r11, 45
                        add              rsp, 16;                             jmp   n43_var_β
.Llit_integer_α_405_0:  .quad            1
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_binop_bx, @function
n45_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            sub              rsp, 16
                        mov              r11, 46
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_406_2
                        add              rax, 1;                              jo    .Lbinop_α_406_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_406_7
.Lbinop_α_406_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_406_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_406_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_406_4
.Lbinop_α_406_3:        movq             xmm0, rsi
.Lbinop_α_406_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_406_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_406_7:                                                              jmp   n46_assign_α
.Lbinop_α_406_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_406_240
                        add              rsp, 16;                             jmp   n44_lit_integer_β
.Lbinop_α_406_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n46_assign_α
n45_binop_β:            mov              r11, 46
                        add              rsp, 16;                             jmp   n44_lit_integer_β
                        .size            n45_binop_bx, .-n45_binop_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n47_statement_end_α
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        add              rsp, 128;                            jmp   n27_stmt_mark_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_stmt_mark_bx, @function
n48_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n48_stmt_mark_α:        mov              r11, 49
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n49_statement_begin_α
                        .size            n48_stmt_mark_bx, .-n48_stmt_mark_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 50;                             jmp   n50_lit_integer_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   n53_stmt_mark_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Llit_integer_α_414_0:  .quad            1
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n52_statement_end_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        add              rsp, 16;                             jmp   n53_stmt_mark_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_stmt_mark_bx, @function
n53_stmt_mark_bx:
#=======================================================================================================================
# strfill tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n53_stmt_mark_α:        mov              r11, 54
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n54_statement_begin_α
                        .size            n53_stmt_mark_bx, .-n53_stmt_mark_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55;                             jmp   n55_var_α
n54_statement_begin_β:  mov              r11, 55;                             jmp   n64_stmt_mark_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_lit_string_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_lit_string_bx, @function
n56_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_423_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_var_α
n56_lit_string_β:       mov              r11, 57
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Llit_string_α_423_0:   .quad            .Llit_string_α_423_0_s
.Llit_string_α_423_0_s: .string          "k"
                        .size            n56_lit_string_bx, .-n56_lit_string_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_binop_α
n57_var_β:              mov              r11, 58
                        add              rsp, 16;                             jmp   n56_lit_string_β
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              r11, 59
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
1:                                                                            jmp   n59_var_α
n58_binop_β:            mov              r11, 59
                        add              rsp, 16;                             jmp   n57_var_β
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_lit_integer_α
n59_var_β:              mov              r11, 60
                        add              rsp, 16;                             jmp   n58_binop_β
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_427_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_binop_α
n60_lit_integer_β:      mov              r11, 61
                        add              rsp, 16;                             jmp   n59_var_β
.Llit_integer_α_427_0:  .quad            5
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            sub              rsp, 16
                        mov              r11, 62
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_428_2
                        mov              rdx, 5
                        imul             rax, rdx;                            jo    .Lbinop_α_428_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_428_7
.Lbinop_α_428_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_428_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_428_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_428_4
.Lbinop_α_428_3:        movq             xmm0, rsi
.Lbinop_α_428_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_428_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_428_7:                                                              jmp   n62_assign_var_α
.Lbinop_α_428_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_428_240
                        add              rsp, 16;                             jmp   n60_lit_integer_β
.Lbinop_α_428_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n62_assign_var_α
n61_binop_β:            mov              r11, 62
                        add              rsp, 16;                             jmp   n60_lit_integer_β
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_assign_var_bx, @function
n62_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_var_α:       sub              rsp, 16
                        mov              r11, 63
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_430_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_430_0
.Lassign_var_α_430_1:   test             rsi, rsi;                            je    .Lassign_var_α_430_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_430_238
                        add              rsp, 16;                             jmp   n61_binop_β
.Lassign_var_α_430_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n63_statement_end_α
.Lassign_var_α_430_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_430_239
                        add              rsp, 16;                             jmp   n61_binop_β
.Lassign_var_α_430_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_430_240
                        add              rsp, 16;                             jmp   n61_binop_β
.Lassign_var_α_430_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n63_statement_end_α
                        .size            n62_assign_var_bx, .-n62_assign_var_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 64
                        add              rsp, 128;                            jmp   n64_stmt_mark_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_stmt_mark_bx, @function
n64_stmt_mark_bx:
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n64_stmt_mark_α:        mov              r11, 65
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n65_statement_begin_α
                        .size            n64_stmt_mark_bx, .-n64_stmt_mark_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n75_stmt_mark_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_lit_string_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_var_α
n67_lit_string_β:       mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "a_much_longer_key_"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_binop_α
n68_var_β:              mov              r11, 69
                        add              rsp, 16;                             jmp   n67_lit_string_β
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_binop_bx, @function
n69_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            sub              rsp, 16
                        mov              r11, 70
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
1:                                                                            jmp   n70_var_α
n69_binop_β:            mov              r11, 70
                        add              rsp, 16;                             jmp   n68_var_β
                        .size            n69_binop_bx, .-n69_binop_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_lit_integer_α
n70_var_β:              mov              r11, 71
                        add              rsp, 16;                             jmp   n69_binop_β
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_442_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_binop_α
n71_lit_integer_β:      mov              r11, 72
                        add              rsp, 16;                             jmp   n70_var_β
.Llit_integer_α_442_0:  .quad            7
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_binop_bx, @function
n72_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
                        mov              r11, 73
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_443_2
                        mov              rdx, 7
                        imul             rax, rdx;                            jo    .Lbinop_α_443_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_443_7
.Lbinop_α_443_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_443_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_443_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_443_4
.Lbinop_α_443_3:        movq             xmm0, rsi
.Lbinop_α_443_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_443_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_443_7:                                                              jmp   n73_assign_var_α
.Lbinop_α_443_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_443_240
                        add              rsp, 16;                             jmp   n71_lit_integer_β
.Lbinop_α_443_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n73_assign_var_α
n72_binop_β:            mov              r11, 73
                        add              rsp, 16;                             jmp   n71_lit_integer_β
                        .size            n72_binop_bx, .-n72_binop_bx
                        .type            n73_assign_var_bx, @function
n73_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_var_α:       sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_445_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_445_0
.Lassign_var_α_445_1:   test             rsi, rsi;                            je    .Lassign_var_α_445_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_445_238
                        add              rsp, 16;                             jmp   n72_binop_β
.Lassign_var_α_445_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n74_statement_end_α
.Lassign_var_α_445_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_445_239
                        add              rsp, 16;                             jmp   n72_binop_β
.Lassign_var_α_445_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_445_240
                        add              rsp, 16;                             jmp   n72_binop_β
.Lassign_var_α_445_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n74_statement_end_α
                        .size            n73_assign_var_bx, .-n73_assign_var_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75
                        add              rsp, 128;                            jmp   n75_stmt_mark_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_stmt_mark_bx, @function
n75_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n75_stmt_mark_α:        mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n76_statement_begin_α
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
                        mov              rax, qword ptr [r9 + 64]             # sx
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_453_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_coerce_numeric_α
n78_lit_integer_β:      mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Llit_integer_α_453_0:  .quad            20
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_coerce_numeric_bx, @function
n79_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 80
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_455_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_455_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_455_0
.Lcoerce_numeric_α_455_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_coerce_numeric_α
.Lcoerce_numeric_α_455_0:
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
1:                                                                            jmp   n80_coerce_numeric_α
n79_coerce_numeric_β:   mov              r11, 80
                        add              rsp, 16;                             jmp   n78_lit_integer_β
                        .size            n79_coerce_numeric_bx, .-n79_coerce_numeric_bx
                        .type            n80_coerce_numeric_bx, @function
n80_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 81
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_457_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_457_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_457_0
.Lcoerce_numeric_α_457_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_cmp_test_α
.Lcoerce_numeric_α_457_0:
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
1:                                                                            jmp   n81_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_459_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_459_239
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
.Lcmp_test_α_459_239:                                                         jmp   n82_var_α
.Lcmp_test_α_459_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_459_240
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
.Lcmp_test_α_459_240:                                                         jmp   n82_var_α
n81_cmp_test_β:         mov              r11, 82
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
                        .size            n81_cmp_test_bx, .-n81_cmp_test_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 64]             # sx
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_461_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_binop_α
n83_lit_integer_β:      mov              r11, 84
                        add              rsp, 16;                             jmp   n82_var_β
.Llit_integer_α_461_0:  .quad            1
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 85
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_462_2
                        add              rax, 1;                              jo    .Lbinop_α_462_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_462_7
.Lbinop_α_462_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_462_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_462_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_462_4
.Lbinop_α_462_3:        movq             xmm0, rsi
.Lbinop_α_462_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_462_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_462_7:                                                              jmp   n85_assign_α
.Lbinop_α_462_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_462_240
                        add              rsp, 16;                             jmp   n83_lit_integer_β
.Lbinop_α_462_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n85_assign_α
n84_binop_β:            mov              r11, 85
                        add              rsp, 16;                             jmp   n83_lit_integer_β
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_assign_bx, @function
n85_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n86_statement_end_α
                        .size            n85_assign_bx, .-n85_assign_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        add              rsp, 128;                            jmp   n53_stmt_mark_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_stmt_mark_bx, @function
n87_stmt_mark_bx:
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n87_stmt_mark_α:        mov              r11, 88
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n88_statement_begin_α
                        .size            n87_stmt_mark_bx, .-n87_stmt_mark_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89;                             jmp   n89_var_α
n88_statement_begin_β:  mov              r11, 89;                             jmp   n94_stmt_mark_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_lit_string_α
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_lit_integer_α
n90_lit_string_β:       mov              r11, 91
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n88_statement_begin_β
.Llit_string_α_471_0:   .quad            .Llit_string_α_471_0_s
.Llit_string_α_471_0_s: .string          "17"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_assign_var_α
n91_lit_integer_β:      mov              r11, 92
                        add              rsp, 16;                             jmp   n90_lit_string_β
.Llit_integer_α_472_0:  .quad            1700
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_assign_var_bx, @function
n92_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_var_α:       sub              rsp, 16
                        mov              r11, 93
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_474_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_474_0
.Lassign_var_α_474_1:   test             rsi, rsi;                            je    .Lassign_var_α_474_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_474_238
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lassign_var_α_474_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n93_statement_end_α
.Lassign_var_α_474_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_474_239
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lassign_var_α_474_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_474_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lassign_var_α_474_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n93_statement_end_α
                        .size            n92_assign_var_bx, .-n92_assign_var_bx
                        .type            n93_statement_end_bx, @function
n93_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 94
                        add              rsp, 64;                             jmp   n94_stmt_mark_α
                        .size            n93_statement_end_bx, .-n93_statement_end_bx
                        .type            n94_stmt_mark_bx, @function
n94_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n94_stmt_mark_α:        mov              r11, 95
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n95_statement_begin_α
                        .size            n94_stmt_mark_bx, .-n94_stmt_mark_bx
                        .type            n95_statement_begin_bx, @function
n95_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:  mov              r11, 96;                             jmp   n96_lit_integer_α
n95_statement_begin_β:  mov              r11, 96;                             jmp   n99_stmt_mark_α
                        .size            n95_statement_begin_bx, .-n95_statement_begin_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_481_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_assign_α
.Llit_integer_α_481_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_assign_bx, @function
n97_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n98_statement_end_α
                        .size            n97_assign_bx, .-n97_assign_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 99
                        add              rsp, 16;                             jmp   n99_stmt_mark_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_stmt_mark_bx, @function
n99_stmt_mark_bx:
#=======================================================================================================================
# realfil tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n99_stmt_mark_α:        mov              r11, 100
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n100_statement_begin_α
                        .size            n99_stmt_mark_bx, .-n99_stmt_mark_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 101;                            jmp   n101_var_α
n100_statement_begin_β: mov              r11, 101;                            jmp   n110_stmt_mark_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_lit_real_α
n102_var_β:             mov              r11, 103
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_lit_real_bx, @function
n103_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_real_α:        sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_491_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_binop_α
.Llit_real_α_491_0:     .quad            4611686018427387904
                        .size            n103_lit_real_bx, .-n103_lit_real_bx
                        .type            n104_binop_bx, @function
n104_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           sub              rsp, 16
                        mov              r11, 105
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
                        cmp              al, 104;                             jne   .Lbinop_α_492_240
                        add              rsp, 32;                             jmp   n102_var_β
.Lbinop_α_492_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:317
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
1:                                                                            jmp   n105_var_α
n104_binop_β:           mov              r11, 105
                        add              rsp, 32;                             jmp   n102_var_β
                        .size            n104_binop_bx, .-n104_binop_bx
                        .type            n105_var_bx, @function
n105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_lit_integer_α
n105_var_β:             mov              r11, 106
                        add              rsp, 16;                             jmp   n104_binop_β
                        .size            n105_var_bx, .-n105_var_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_binop_α
n106_lit_integer_β:     mov              r11, 107
                        add              rsp, 16;                             jmp   n105_var_β
.Llit_integer_α_494_0:  .quad            11
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_binop_bx, @function
n107_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:           sub              rsp, 16
                        mov              r11, 108
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_495_2
                        mov              rdx, 11
                        imul             rax, rdx;                            jo    .Lbinop_α_495_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_495_7
.Lbinop_α_495_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_495_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_495_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_495_4
.Lbinop_α_495_3:        movq             xmm0, rsi
.Lbinop_α_495_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_495_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_495_7:                                                              jmp   n108_assign_var_α
.Lbinop_α_495_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_495_240
                        add              rsp, 16;                             jmp   n106_lit_integer_β
.Lbinop_α_495_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n108_assign_var_α
n107_binop_β:           mov              r11, 108
                        add              rsp, 16;                             jmp   n106_lit_integer_β
                        .size            n107_binop_bx, .-n107_binop_bx
                        .type            n108_assign_var_bx, @function
n108_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_var_α:      sub              rsp, 16
                        mov              r11, 109
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_497_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_497_0
.Lassign_var_α_497_1:   test             rsi, rsi;                            je    .Lassign_var_α_497_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_497_238
                        add              rsp, 16;                             jmp   n107_binop_β
.Lassign_var_α_497_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n109_statement_end_α
.Lassign_var_α_497_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_497_239
                        add              rsp, 16;                             jmp   n107_binop_β
.Lassign_var_α_497_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_497_240
                        add              rsp, 16;                             jmp   n107_binop_β
.Lassign_var_α_497_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n109_statement_end_α
                        .size            n108_assign_var_bx, .-n108_assign_var_bx
                        .type            n109_statement_end_bx, @function
n109_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 110
                        add              rsp, 128;                            jmp   n110_stmt_mark_α
                        .size            n109_statement_end_bx, .-n109_statement_end_bx
                        .type            n110_stmt_mark_bx, @function
n110_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realfil)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n110_stmt_mark_α:       mov              r11, 111
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n111_statement_begin_α
                        .size            n110_stmt_mark_bx, .-n110_stmt_mark_bx
                        .type            n111_statement_begin_bx, @function
n111_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α: mov              r11, 112;                            jmp   n112_var_α
n111_statement_begin_β: mov              r11, 112;                            jmp   n122_stmt_mark_α
                        .size            n111_statement_begin_bx, .-n111_statement_begin_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_lit_integer_α
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_lit_integer_bx, @function
n113_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_505_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_coerce_numeric_α
n113_lit_integer_β:     mov              r11, 114
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
.Llit_integer_α_505_0:  .quad            12
                        .size            n113_lit_integer_bx, .-n113_lit_integer_bx
                        .type            n114_coerce_numeric_bx, @function
n114_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 115
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_507_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_507_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_507_0
.Lcoerce_numeric_α_507_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_coerce_numeric_α
.Lcoerce_numeric_α_507_0:
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
1:                                                                            jmp   n115_coerce_numeric_α
n114_coerce_numeric_β:  mov              r11, 115
                        add              rsp, 16;                             jmp   n113_lit_integer_β
                        .size            n114_coerce_numeric_bx, .-n114_coerce_numeric_bx
                        .type            n115_coerce_numeric_bx, @function
n115_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 116
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_509_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_509_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_509_0
.Lcoerce_numeric_α_509_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_cmp_test_α
.Lcoerce_numeric_α_509_0:
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
1:                                                                            jmp   n116_cmp_test_α
n115_coerce_numeric_β:  mov              r11, 116
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
                        .size            n115_coerce_numeric_bx, .-n115_coerce_numeric_bx
                        .type            n116_cmp_test_bx, @function
n116_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_cmp_test_α:        sub              rsp, 16
                        mov              r11, 117
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_511_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_511_239
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
.Lcmp_test_α_511_239:                                                         jmp   n117_var_α
.Lcmp_test_α_511_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_511_240
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
.Lcmp_test_α_511_240:                                                         jmp   n117_var_α
n116_cmp_test_β:        mov              r11, 117
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
                        .size            n116_cmp_test_bx, .-n116_cmp_test_bx
                        .type            n117_var_bx, @function
n117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_lit_integer_α
n117_var_β:             mov              r11, 118
                        add              rsp, 16;                             jmp   n116_cmp_test_β
                        .size            n117_var_bx, .-n117_var_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_513_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_binop_α
n118_lit_integer_β:     mov              r11, 119
                        add              rsp, 16;                             jmp   n117_var_β
.Llit_integer_α_513_0:  .quad            1
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_binop_bx, @function
n119_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           sub              rsp, 16
                        mov              r11, 120
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_514_2
                        add              rax, 1;                              jo    .Lbinop_α_514_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_514_7
.Lbinop_α_514_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_514_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_514_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_514_4
.Lbinop_α_514_3:        movq             xmm0, rsi
.Lbinop_α_514_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_514_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_514_7:                                                              jmp   n120_assign_α
.Lbinop_α_514_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_514_240
                        add              rsp, 16;                             jmp   n118_lit_integer_β
.Lbinop_α_514_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n120_assign_α
n119_binop_β:           mov              r11, 120
                        add              rsp, 16;                             jmp   n118_lit_integer_β
                        .size            n119_binop_bx, .-n119_binop_bx
                        .type            n120_assign_bx, @function
n120_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n121_statement_end_α
                        .size            n120_assign_bx, .-n120_assign_bx
                        .type            n121_statement_end_bx, @function
n121_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 122
                        add              rsp, 128;                            jmp   n99_stmt_mark_α
                        .size            n121_statement_end_bx, .-n121_statement_end_bx
                        .type            n122_stmt_mark_bx, @function
n122_stmt_mark_bx:
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n122_stmt_mark_α:       mov              r11, 123
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n123_statement_begin_α
                        .size            n122_stmt_mark_bx, .-n122_stmt_mark_bx
                        .type            n123_statement_begin_bx, @function
n123_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α: mov              r11, 124;                            jmp   n124_var_α
n123_statement_begin_β: mov              r11, 124;                            jmp   n129_stmt_mark_α
                        .size            n123_statement_begin_bx, .-n123_statement_begin_bx
                        .type            n124_var_bx, @function
n124_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_lit_string_α
                        .size            n124_var_bx, .-n124_var_bx
                        .type            n125_lit_string_bx, @function
n125_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_lit_integer_α
n125_lit_string_β:      mov              r11, 126
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
.Llit_string_α_523_0:   .quad            .Llit_string_α_523_0_s
.Llit_string_α_523_0_s: .string          ""
                        .size            n125_lit_string_bx, .-n125_lit_string_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_assign_var_α
n126_lit_integer_β:     mov              r11, 127
                        add              rsp, 16;                             jmp   n125_lit_string_β
.Llit_integer_α_524_0:  .quad            99
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_assign_var_bx, @function
n127_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_var_α:      sub              rsp, 16
                        mov              r11, 128
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_526_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_526_0
.Lassign_var_α_526_1:   test             rsi, rsi;                            je    .Lassign_var_α_526_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_526_238
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lassign_var_α_526_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n128_statement_end_α
.Lassign_var_α_526_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_526_239
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lassign_var_α_526_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_526_240
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lassign_var_α_526_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n128_statement_end_α
                        .size            n127_assign_var_bx, .-n127_assign_var_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 129
                        add              rsp, 64;                             jmp   n129_stmt_mark_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_stmt_mark_bx, @function
n129_stmt_mark_bx:
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n129_stmt_mark_α:       mov              r11, 130
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n130_statement_begin_α
                        .size            n129_stmt_mark_bx, .-n129_stmt_mark_bx
                        .type            n130_statement_begin_bx, @function
n130_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 131;                            jmp   n131_var_α
n130_statement_begin_β: mov              r11, 131;                            jmp   n136_stmt_mark_α
                        .size            n130_statement_begin_bx, .-n130_statement_begin_bx
                        .type            n131_var_bx, @function
n131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_lit_integer_α
                        .size            n131_var_bx, .-n131_var_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_lit_integer_α
n132_lit_integer_β:     mov              r11, 133
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
.Llit_integer_α_534_0:  .quad            17
                        .size            n132_lit_integer_bx, .-n132_lit_integer_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_535_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_assign_var_α
n133_lit_integer_β:     mov              r11, 134
                        add              rsp, 16;                             jmp   n132_lit_integer_β
.Llit_integer_α_535_0:  .quad            1717
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_assign_var_bx, @function
n134_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_var_α:      sub              rsp, 16
                        mov              r11, 135
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_537_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_537_0
.Lassign_var_α_537_1:   test             rsi, rsi;                            je    .Lassign_var_α_537_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_537_238
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lassign_var_α_537_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n135_statement_end_α
.Lassign_var_α_537_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_537_239
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lassign_var_α_537_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_537_240
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lassign_var_α_537_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n135_statement_end_α
                        .size            n134_assign_var_bx, .-n134_assign_var_bx
                        .type            n135_statement_end_bx, @function
n135_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        add              rsp, 64;                             jmp   n136_stmt_mark_α
                        .size            n135_statement_end_bx, .-n135_statement_end_bx
                        .type            n136_stmt_mark_bx, @function
n136_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n136_stmt_mark_α:       mov              r11, 137
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n137_statement_begin_α
                        .size            n136_stmt_mark_bx, .-n136_stmt_mark_bx
                        .type            n137_statement_begin_bx, @function
n137_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 138;                            jmp   n138_var_α
n137_statement_begin_β: mov              r11, 138;                            jmp   n149_stmt_mark_α
                        .size            n137_statement_begin_bx, .-n137_statement_begin_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_var_α
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_lit_integer_α
n139_var_β:             mov              r11, 140
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_546_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_subscript_α
n140_lit_integer_β:     mov              r11, 141
                        add              rsp, 16;                             jmp   n139_var_β
.Llit_integer_α_546_0:  .quad            17
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_subscript_bx, @function
n141_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_subscript_α:       sub              rsp, 16
                        mov              r11, 142
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
                        cmp              al, 104;                             jne   .Lsubscript_α_547_240
                        add              rsp, 16;                             jmp   n140_lit_integer_β
.Lsubscript_α_547_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n142_binop_α
n141_subscript_β:       mov              r11, 142
                        add              rsp, 16;                             jmp   n140_lit_integer_β
                        .size            n141_subscript_bx, .-n141_subscript_bx
                        .type            n142_binop_bx, @function
n142_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:           sub              rsp, 16
                        mov              r11, 143
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_548_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_548_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_548_7
.Lbinop_α_548_2:        and              edx, 1;                              jz    .Lbinop_α_548_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_548_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_548_4
.Lbinop_α_548_3:        movq             xmm0, rsi
.Lbinop_α_548_4:        cmp              cl, 5;                               je    .Lbinop_α_548_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_548_6
.Lbinop_α_548_5:        movq             xmm1, rdi
.Lbinop_α_548_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_548_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_548_7:                                                              jmp   n143_var_α
.Lbinop_α_548_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_548_240
                        add              rsp, 16;                             jmp   n141_subscript_β
.Lbinop_α_548_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n143_var_α
n142_binop_β:           mov              r11, 143
                        add              rsp, 16;                             jmp   n141_subscript_β
                        .size            n142_binop_bx, .-n142_binop_bx
                        .type            n143_var_bx, @function
n143_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              r11, 144
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_lit_string_α
n143_var_β:             mov              r11, 144
                        add              rsp, 16;                             jmp   n142_binop_β
                        .size            n143_var_bx, .-n143_var_bx
                        .type            n144_lit_string_bx, @function
n144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      sub              rsp, 16
                        mov              r11, 145
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_550_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_subscript_α
n144_lit_string_β:      mov              r11, 145
                        add              rsp, 16;                             jmp   n143_var_β
.Llit_string_α_550_0:   .quad            .Llit_string_α_550_0_s
.Llit_string_α_550_0_s: .string          "17"
                        .size            n144_lit_string_bx, .-n144_lit_string_bx
                        .type            n145_subscript_bx, @function
n145_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_subscript_α:       sub              rsp, 16
                        mov              r11, 146
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
                        cmp              al, 104;                             jne   .Lsubscript_α_551_240
                        add              rsp, 16;                             jmp   n144_lit_string_β
.Lsubscript_α_551_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n146_binop_α
n145_subscript_β:       mov              r11, 146
                        add              rsp, 16;                             jmp   n144_lit_string_β
                        .size            n145_subscript_bx, .-n145_subscript_bx
                        .type            n146_binop_bx, @function
n146_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:           sub              rsp, 16
                        mov              r11, 147
                        mov              eax, dword ptr [rsp + 64]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_552_2
                        mov              rax, qword ptr [rsp + 72]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_552_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_552_7
.Lbinop_α_552_2:        and              edx, 1;                              jz    .Lbinop_α_552_0
                        mov              rsi, qword ptr [rsp + 72]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_552_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_552_4
.Lbinop_α_552_3:        movq             xmm0, rsi
.Lbinop_α_552_4:        cmp              cl, 5;                               je    .Lbinop_α_552_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_552_6
.Lbinop_α_552_5:        movq             xmm1, rdi
.Lbinop_α_552_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_552_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_552_7:                                                              jmp   n147_assign_α
.Lbinop_α_552_0:        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_552_240
                        add              rsp, 16;                             jmp   n145_subscript_β
.Lbinop_α_552_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n147_assign_α
n146_binop_β:           mov              r11, 147
                        add              rsp, 16;                             jmp   n145_subscript_β
                        .size            n146_binop_bx, .-n146_binop_bx
                        .type            n147_assign_bx, @function
n147_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              r11, 148
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n148_statement_end_α
                        .size            n147_assign_bx, .-n147_assign_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 149
                        add              rsp, 144;                            jmp   n149_stmt_mark_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_stmt_mark_bx, @function
n149_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n149_stmt_mark_α:       mov              r11, 150
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n150_statement_begin_α
                        .size            n149_stmt_mark_bx, .-n149_stmt_mark_bx
                        .type            n150_statement_begin_bx, @function
n150_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151;                            jmp   n151_var_α
n150_statement_begin_β: mov              r11, 151;                            jmp   n156_stmt_mark_α
                        .size            n150_statement_begin_bx, .-n150_statement_begin_bx
                        .type            n151_var_bx, @function
n151_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_lit_integer_α
                        .size            n151_var_bx, .-n151_var_bx
                        .type            n152_lit_integer_bx, @function
n152_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_561_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_lit_integer_α
n152_lit_integer_β:     mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
.Llit_integer_α_561_0:  .quad            5
                        .size            n152_lit_integer_bx, .-n152_lit_integer_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_assign_var_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n152_lit_integer_β
.Llit_integer_α_562_0:  .quad            500
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_assign_var_bx, @function
n154_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_var_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_564_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_564_0
.Lassign_var_α_564_1:   test             rsi, rsi;                            je    .Lassign_var_α_564_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_564_238
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lassign_var_α_564_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n155_statement_end_α
.Lassign_var_α_564_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_564_239
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lassign_var_α_564_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_564_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lassign_var_α_564_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n155_statement_end_α
                        .size            n154_assign_var_bx, .-n154_assign_var_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 156
                        add              rsp, 64;                             jmp   n156_stmt_mark_α
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_stmt_mark_bx, @function
n156_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n156_stmt_mark_α:       mov              r11, 157
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n157_statement_begin_α
                        .size            n156_stmt_mark_bx, .-n156_stmt_mark_bx
                        .type            n157_statement_begin_bx, @function
n157_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 158;                            jmp   n158_var_α
n157_statement_begin_β: mov              r11, 158;                            jmp   n163_stmt_mark_α
                        .size            n157_statement_begin_bx, .-n157_statement_begin_bx
                        .type            n158_var_bx, @function
n158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              r11, 159
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_lit_integer_α
                        .size            n158_var_bx, .-n158_var_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_lit_integer_α
n159_lit_integer_β:     mov              r11, 160
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n157_statement_begin_β
.Llit_integer_α_572_0:  .quad            5
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_573_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_assign_var_α
n160_lit_integer_β:     mov              r11, 161
                        add              rsp, 16;                             jmp   n159_lit_integer_β
.Llit_integer_α_573_0:  .quad            501
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_assign_var_bx, @function
n161_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_var_α:      sub              rsp, 16
                        mov              r11, 162
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_575_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_575_0
.Lassign_var_α_575_1:   test             rsi, rsi;                            je    .Lassign_var_α_575_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_575_238
                        add              rsp, 16;                             jmp   n160_lit_integer_β
.Lassign_var_α_575_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n162_statement_end_α
.Lassign_var_α_575_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_575_239
                        add              rsp, 16;                             jmp   n160_lit_integer_β
.Lassign_var_α_575_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_575_240
                        add              rsp, 16;                             jmp   n160_lit_integer_β
.Lassign_var_α_575_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n162_statement_end_α
                        .size            n161_assign_var_bx, .-n161_assign_var_bx
                        .type            n162_statement_end_bx, @function
n162_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 163
                        add              rsp, 64;                             jmp   n163_stmt_mark_α
                        .size            n162_statement_end_bx, .-n162_statement_end_bx
                        .type            n163_stmt_mark_bx, @function
n163_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n163_stmt_mark_α:       mov              r11, 164
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n164_statement_begin_α
                        .size            n163_stmt_mark_bx, .-n163_stmt_mark_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 165;                            jmp   n165_var_α
n164_statement_begin_β: mov              r11, 165;                            jmp   n172_stmt_mark_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_var_α
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_var_bx, @function
n166_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
n166_var_β:             mov              r11, 167
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
                        .size            n166_var_bx, .-n166_var_bx
                        .type            n167_lit_integer_bx, @function
n167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_584_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_subscript_α
n167_lit_integer_β:     mov              r11, 168
                        add              rsp, 16;                             jmp   n166_var_β
.Llit_integer_α_584_0:  .quad            5
                        .size            n167_lit_integer_bx, .-n167_lit_integer_bx
                        .type            n168_subscript_bx, @function
n168_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_subscript_α:       sub              rsp, 16
                        mov              r11, 169
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
                        cmp              al, 104;                             jne   .Lsubscript_α_585_240
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Lsubscript_α_585_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n169_binop_α
n168_subscript_β:       mov              r11, 169
                        add              rsp, 16;                             jmp   n167_lit_integer_β
                        .size            n168_subscript_bx, .-n168_subscript_bx
                        .type            n169_binop_bx, @function
n169_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           sub              rsp, 16
                        mov              r11, 170
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_586_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_586_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_586_7
.Lbinop_α_586_2:        and              edx, 1;                              jz    .Lbinop_α_586_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_586_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_586_4
.Lbinop_α_586_3:        movq             xmm0, rsi
.Lbinop_α_586_4:        cmp              cl, 5;                               je    .Lbinop_α_586_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_586_6
.Lbinop_α_586_5:        movq             xmm1, rdi
.Lbinop_α_586_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_586_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_586_7:                                                              jmp   n170_assign_α
.Lbinop_α_586_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_586_240
                        add              rsp, 16;                             jmp   n168_subscript_β
.Lbinop_α_586_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n170_assign_α
n169_binop_β:           mov              r11, 170
                        add              rsp, 16;                             jmp   n168_subscript_β
                        .size            n169_binop_bx, .-n169_binop_bx
                        .type            n170_assign_bx, @function
n170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              r11, 171
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n171_statement_end_α
                        .size            n170_assign_bx, .-n170_assign_bx
                        .type            n171_statement_end_bx, @function
n171_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 172
                        add              rsp, 80;                             jmp   n172_stmt_mark_α
                        .size            n171_statement_end_bx, .-n171_statement_end_bx
                        .type            n172_stmt_mark_bx, @function
n172_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n172_stmt_mark_α:       mov              r11, 173
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n173_statement_begin_α
                        .size            n172_stmt_mark_bx, .-n172_stmt_mark_bx
                        .type            n173_statement_begin_bx, @function
n173_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 174;                            jmp   n174_lit_integer_α
n173_statement_begin_β: mov              r11, 174;                            jmp   n178_stmt_mark_α
                        .size            n173_statement_begin_bx, .-n173_statement_begin_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_unop_α
.Llit_integer_α_594_0:  .quad            30
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_unop_bx, @function
n175_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_unop_α:            sub              rsp, 16
                        mov              r11, 176
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
1:                                                                            jmp   n176_assign_α
n175_unop_β:            mov              r11, 176
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n173_statement_begin_β
                        .size            n175_unop_bx, .-n175_unop_bx
                        .type            n176_assign_bx, @function
n176_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n177_statement_end_α
                        .size            n176_assign_bx, .-n176_assign_bx
                        .type            n177_statement_end_bx, @function
n177_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        add              rsp, 32;                             jmp   n178_stmt_mark_α
                        .size            n177_statement_end_bx, .-n177_statement_end_bx
                        .type            n178_stmt_mark_bx, @function
n178_stmt_mark_bx:
#=======================================================================================================================
# intread census = census + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n178_stmt_mark_α:       mov              r11, 179
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n179_statement_begin_α
                        .size            n178_stmt_mark_bx, .-n178_stmt_mark_bx
                        .type            n179_statement_begin_bx, @function
n179_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 180;                            jmp   n180_var_α
n179_statement_begin_β: mov              r11, 180;                            jmp   n187_stmt_mark_α
                        .size            n179_statement_begin_bx, .-n179_statement_begin_bx
                        .type            n180_var_bx, @function
n180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_var_α
                        .size            n180_var_bx, .-n180_var_bx
                        .type            n181_var_bx, @function
n181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_var_α
n181_var_β:             mov              r11, 182
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
                        .size            n181_var_bx, .-n181_var_bx
                        .type            n182_var_bx, @function
n182_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_subscript_α
n182_var_β:             mov              r11, 183
                        add              rsp, 16;                             jmp   n181_var_β
                        .size            n182_var_bx, .-n182_var_bx
                        .type            n183_subscript_bx, @function
n183_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_subscript_α:       sub              rsp, 16
                        mov              r11, 184
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
                        cmp              al, 104;                             jne   .Lsubscript_α_606_240
                        add              rsp, 16;                             jmp   n182_var_β
.Lsubscript_α_606_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n184_binop_α
n183_subscript_β:       mov              r11, 184
                        add              rsp, 16;                             jmp   n182_var_β
                        .size            n183_subscript_bx, .-n183_subscript_bx
                        .type            n184_binop_bx, @function
n184_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           sub              rsp, 16
                        mov              r11, 185
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_607_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_607_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_607_7
.Lbinop_α_607_2:        and              edx, 1;                              jz    .Lbinop_α_607_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_607_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_607_4
.Lbinop_α_607_3:        movq             xmm0, rsi
.Lbinop_α_607_4:        cmp              cl, 5;                               je    .Lbinop_α_607_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_607_6
.Lbinop_α_607_5:        movq             xmm1, rdi
.Lbinop_α_607_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_607_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_607_7:                                                              jmp   n185_assign_α
.Lbinop_α_607_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_607_240
                        add              rsp, 16;                             jmp   n183_subscript_β
.Lbinop_α_607_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n185_assign_α
n184_binop_β:           mov              r11, 185
                        add              rsp, 16;                             jmp   n183_subscript_β
                        .size            n184_binop_bx, .-n184_binop_bx
                        .type            n185_assign_bx, @function
n185_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n186_statement_end_α
                        .size            n185_assign_bx, .-n185_assign_bx
                        .type            n186_statement_end_bx, @function
n186_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 187
                        add              rsp, 80;                             jmp   n187_stmt_mark_α
                        .size            n186_statement_end_bx, .-n186_statement_end_bx
                        .type            n187_stmt_mark_bx, @function
n187_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n187_stmt_mark_α:       mov              r11, 188
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n188_statement_begin_α
                        .size            n187_stmt_mark_bx, .-n187_stmt_mark_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189;                            jmp   n189_var_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n199_stmt_mark_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 190
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_lit_integer_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_lit_integer_bx, @function
n190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_616_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_coerce_numeric_α
n190_lit_integer_β:     mov              r11, 191
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
.Llit_integer_α_616_0:  .quad            30
                        .size            n190_lit_integer_bx, .-n190_lit_integer_bx
                        .type            n191_coerce_numeric_bx, @function
n191_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 192
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_618_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_618_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_618_0
.Lcoerce_numeric_α_618_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_coerce_numeric_α
.Lcoerce_numeric_α_618_0:
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
1:                                                                            jmp   n192_coerce_numeric_α
n191_coerce_numeric_β:  mov              r11, 192
                        add              rsp, 16;                             jmp   n190_lit_integer_β
                        .size            n191_coerce_numeric_bx, .-n191_coerce_numeric_bx
                        .type            n192_coerce_numeric_bx, @function
n192_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 193
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_620_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_620_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_620_0
.Lcoerce_numeric_α_620_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_cmp_test_α
.Lcoerce_numeric_α_620_0:
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
1:                                                                            jmp   n193_cmp_test_α
n192_coerce_numeric_β:  mov              r11, 193
                        add              rsp, 16;                             jmp   n191_coerce_numeric_β
                        .size            n192_coerce_numeric_bx, .-n192_coerce_numeric_bx
                        .type            n193_cmp_test_bx, @function
n193_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_cmp_test_α:        sub              rsp, 16
                        mov              r11, 194
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_622_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_622_239
                        add              rsp, 16;                             jmp   n192_coerce_numeric_β
.Lcmp_test_α_622_239:                                                         jmp   n194_var_α
.Lcmp_test_α_622_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_622_240
                        add              rsp, 16;                             jmp   n192_coerce_numeric_β
.Lcmp_test_α_622_240:                                                         jmp   n194_var_α
n193_cmp_test_β:        mov              r11, 194
                        add              rsp, 16;                             jmp   n192_coerce_numeric_β
                        .size            n193_cmp_test_bx, .-n193_cmp_test_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 195
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_lit_integer_α
n194_var_β:             mov              r11, 195
                        add              rsp, 16;                             jmp   n193_cmp_test_β
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_lit_integer_bx, @function
n195_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_624_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_binop_α
n195_lit_integer_β:     mov              r11, 196
                        add              rsp, 16;                             jmp   n194_var_β
.Llit_integer_α_624_0:  .quad            1
                        .size            n195_lit_integer_bx, .-n195_lit_integer_bx
                        .type            n196_binop_bx, @function
n196_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:           sub              rsp, 16
                        mov              r11, 197
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_625_2
                        add              rax, 1;                              jo    .Lbinop_α_625_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_625_7
.Lbinop_α_625_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_625_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_625_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_625_4
.Lbinop_α_625_3:        movq             xmm0, rsi
.Lbinop_α_625_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_625_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_625_7:                                                              jmp   n197_assign_α
.Lbinop_α_625_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_625_240
                        add              rsp, 16;                             jmp   n195_lit_integer_β
.Lbinop_α_625_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n197_assign_α
n196_binop_β:           mov              r11, 197
                        add              rsp, 16;                             jmp   n195_lit_integer_β
                        .size            n196_binop_bx, .-n196_binop_bx
                        .type            n197_assign_bx, @function
n197_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n198_statement_end_α
                        .size            n197_assign_bx, .-n197_assign_bx
                        .type            n198_statement_end_bx, @function
n198_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 199
                        add              rsp, 128;                            jmp   n178_stmt_mark_α
                        .size            n198_statement_end_bx, .-n198_statement_end_bx
                        .type            n199_stmt_mark_bx, @function
n199_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n199_stmt_mark_α:       mov              r11, 200
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n200_statement_begin_α
                        .size            n199_stmt_mark_bx, .-n199_stmt_mark_bx
                        .type            n200_statement_begin_bx, @function
n200_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 201;                            jmp   n201_lit_integer_α
n200_statement_begin_β: mov              r11, 201;                            jmp   n204_stmt_mark_α
                        .size            n200_statement_begin_bx, .-n200_statement_begin_bx
                        .type            n201_lit_integer_bx, @function
n201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_633_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_assign_α
.Llit_integer_α_633_0:  .quad            1
                        .size            n201_lit_integer_bx, .-n201_lit_integer_bx
                        .type            n202_assign_bx, @function
n202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              r11, 203
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n203_statement_end_α
                        .size            n202_assign_bx, .-n202_assign_bx
                        .type            n203_statement_end_bx, @function
n203_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 204
                        add              rsp, 16;                             jmp   n204_stmt_mark_α
                        .size            n203_statement_end_bx, .-n203_statement_end_bx
                        .type            n204_stmt_mark_bx, @function
n204_stmt_mark_bx:
#=======================================================================================================================
# strread census = census + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n204_stmt_mark_α:       mov              r11, 205
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n205_statement_begin_α
                        .size            n204_stmt_mark_bx, .-n204_stmt_mark_bx
                        .type            n205_statement_begin_bx, @function
n205_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 206;                            jmp   n206_var_α
n205_statement_begin_β: mov              r11, 206;                            jmp   n221_stmt_mark_α
                        .size            n205_statement_begin_bx, .-n205_statement_begin_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_var_α
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_var_bx, @function
n207_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_lit_string_α
n207_var_β:             mov              r11, 208
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
                        .size            n207_var_bx, .-n207_var_bx
                        .type            n208_lit_string_bx, @function
n208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_var_α
n208_lit_string_β:      mov              r11, 209
                        add              rsp, 16;                             jmp   n207_var_β
.Llit_string_α_643_0:   .quad            .Llit_string_α_643_0_s
.Llit_string_α_643_0_s: .string          "k"
                        .size            n208_lit_string_bx, .-n208_lit_string_bx
                        .type            n209_var_bx, @function
n209_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 210
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_binop_α
n209_var_β:             mov              r11, 210
                        add              rsp, 16;                             jmp   n208_lit_string_β
                        .size            n209_var_bx, .-n209_var_bx
                        .type            n210_binop_bx, @function
n210_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:           sub              rsp, 16
                        mov              r11, 211
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
1:                                                                            jmp   n211_subscript_α
n210_binop_β:           mov              r11, 211
                        add              rsp, 16;                             jmp   n209_var_β
                        .size            n210_binop_bx, .-n210_binop_bx
                        .type            n211_subscript_bx, @function
n211_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_subscript_α:       sub              rsp, 16
                        mov              r11, 212
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
                        cmp              al, 104;                             jne   .Lsubscript_α_646_240
                        add              rsp, 16;                             jmp   n210_binop_β
.Lsubscript_α_646_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n212_binop_α
n211_subscript_β:       mov              r11, 212
                        add              rsp, 16;                             jmp   n210_binop_β
                        .size            n211_subscript_bx, .-n211_subscript_bx
                        .type            n212_binop_bx, @function
n212_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_binop_α:           sub              rsp, 16
                        mov              r11, 213
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_647_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_647_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_647_7
.Lbinop_α_647_2:        and              edx, 1;                              jz    .Lbinop_α_647_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_647_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_647_4
.Lbinop_α_647_3:        movq             xmm0, rsi
.Lbinop_α_647_4:        cmp              cl, 5;                               je    .Lbinop_α_647_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_647_6
.Lbinop_α_647_5:        movq             xmm1, rdi
.Lbinop_α_647_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_647_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_647_7:                                                              jmp   n213_var_α
.Lbinop_α_647_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_647_240
                        add              rsp, 16;                             jmp   n211_subscript_β
.Lbinop_α_647_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n213_var_α
n212_binop_β:           mov              r11, 213
                        add              rsp, 16;                             jmp   n211_subscript_β
                        .size            n212_binop_bx, .-n212_binop_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 214
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_lit_string_α
n213_var_β:             mov              r11, 214
                        add              rsp, 16;                             jmp   n212_binop_β
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_lit_string_bx, @function
n214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_649_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_var_α
n214_lit_string_β:      mov              r11, 215
                        add              rsp, 16;                             jmp   n213_var_β
.Llit_string_α_649_0:   .quad            .Llit_string_α_649_0_s
.Llit_string_α_649_0_s: .string          "a_much_longer_key_"
                        .size            n214_lit_string_bx, .-n214_lit_string_bx
                        .type            n215_var_bx, @function
n215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_binop_α
n215_var_β:             mov              r11, 216
                        add              rsp, 16;                             jmp   n214_lit_string_β
                        .size            n215_var_bx, .-n215_var_bx
                        .type            n216_binop_bx, @function
n216_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:           sub              rsp, 16
                        mov              r11, 217
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
1:                                                                            jmp   n217_subscript_α
n216_binop_β:           mov              r11, 217
                        add              rsp, 16;                             jmp   n215_var_β
                        .size            n216_binop_bx, .-n216_binop_bx
                        .type            n217_subscript_bx, @function
n217_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_subscript_α:       sub              rsp, 16
                        mov              r11, 218
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
                        cmp              al, 104;                             jne   .Lsubscript_α_652_240
                        add              rsp, 16;                             jmp   n216_binop_β
.Lsubscript_α_652_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n218_binop_α
n217_subscript_β:       mov              r11, 218
                        add              rsp, 16;                             jmp   n216_binop_β
                        .size            n217_subscript_bx, .-n217_subscript_bx
                        .type            n218_binop_bx, @function
n218_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_binop_α:           sub              rsp, 16
                        mov              r11, 219
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_653_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_653_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_653_7
.Lbinop_α_653_2:        and              edx, 1;                              jz    .Lbinop_α_653_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_653_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_653_4
.Lbinop_α_653_3:        movq             xmm0, rsi
.Lbinop_α_653_4:        cmp              cl, 5;                               je    .Lbinop_α_653_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_653_6
.Lbinop_α_653_5:        movq             xmm1, rdi
.Lbinop_α_653_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_653_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_653_7:                                                              jmp   n219_assign_α
.Lbinop_α_653_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_653_240
                        add              rsp, 16;                             jmp   n217_subscript_β
.Lbinop_α_653_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n219_assign_α
n218_binop_β:           mov              r11, 219
                        add              rsp, 16;                             jmp   n217_subscript_β
                        .size            n218_binop_bx, .-n218_binop_bx
                        .type            n219_assign_bx, @function
n219_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n220_statement_end_α
                        .size            n219_assign_bx, .-n219_assign_bx
                        .type            n220_statement_end_bx, @function
n220_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_end_α:   mov              r11, 221
                        add              rsp, 208;                            jmp   n221_stmt_mark_α
                        .size            n220_statement_end_bx, .-n220_statement_end_bx
                        .type            n221_stmt_mark_bx, @function
n221_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n221_stmt_mark_α:       mov              r11, 222
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n222_statement_begin_α
                        .size            n221_stmt_mark_bx, .-n221_stmt_mark_bx
                        .type            n222_statement_begin_bx, @function
n222_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α: mov              r11, 223;                            jmp   n223_var_α
n222_statement_begin_β: mov              r11, 223;                            jmp   n233_stmt_mark_α
                        .size            n222_statement_begin_bx, .-n222_statement_begin_bx
                        .type            n223_var_bx, @function
n223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_lit_integer_α
                        .size            n223_var_bx, .-n223_var_bx
                        .type            n224_lit_integer_bx, @function
n224_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_coerce_numeric_α
n224_lit_integer_β:     mov              r11, 225
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n222_statement_begin_β
.Llit_integer_α_662_0:  .quad            20
                        .size            n224_lit_integer_bx, .-n224_lit_integer_bx
                        .type            n225_coerce_numeric_bx, @function
n225_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 226
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_664_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_664_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_664_0
.Lcoerce_numeric_α_664_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_coerce_numeric_α
.Lcoerce_numeric_α_664_0:
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
1:                                                                            jmp   n226_coerce_numeric_α
n225_coerce_numeric_β:  mov              r11, 226
                        add              rsp, 16;                             jmp   n224_lit_integer_β
                        .size            n225_coerce_numeric_bx, .-n225_coerce_numeric_bx
                        .type            n226_coerce_numeric_bx, @function
n226_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_666_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_666_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_666_0
.Lcoerce_numeric_α_666_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_cmp_test_α
.Lcoerce_numeric_α_666_0:
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
1:                                                                            jmp   n227_cmp_test_α
n226_coerce_numeric_β:  mov              r11, 227
                        add              rsp, 16;                             jmp   n225_coerce_numeric_β
                        .size            n226_coerce_numeric_bx, .-n226_coerce_numeric_bx
                        .type            n227_cmp_test_bx, @function
n227_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_cmp_test_α:        sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_668_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_668_239
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
.Lcmp_test_α_668_239:                                                         jmp   n228_var_α
.Lcmp_test_α_668_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_668_240
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
.Lcmp_test_α_668_240:                                                         jmp   n228_var_α
n227_cmp_test_β:        mov              r11, 228
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
                        .size            n227_cmp_test_bx, .-n227_cmp_test_bx
                        .type            n228_var_bx, @function
n228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_lit_integer_α
n228_var_β:             mov              r11, 229
                        add              rsp, 16;                             jmp   n227_cmp_test_β
                        .size            n228_var_bx, .-n228_var_bx
                        .type            n229_lit_integer_bx, @function
n229_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     sub              rsp, 16
                        mov              r11, 230
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_670_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_binop_α
n229_lit_integer_β:     mov              r11, 230
                        add              rsp, 16;                             jmp   n228_var_β
.Llit_integer_α_670_0:  .quad            1
                        .size            n229_lit_integer_bx, .-n229_lit_integer_bx
                        .type            n230_binop_bx, @function
n230_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           sub              rsp, 16
                        mov              r11, 231
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_671_2
                        add              rax, 1;                              jo    .Lbinop_α_671_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_671_7
.Lbinop_α_671_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_671_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_671_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_671_4
.Lbinop_α_671_3:        movq             xmm0, rsi
.Lbinop_α_671_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_671_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_671_7:                                                              jmp   n231_assign_α
.Lbinop_α_671_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_671_240
                        add              rsp, 16;                             jmp   n229_lit_integer_β
.Lbinop_α_671_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n231_assign_α
n230_binop_β:           mov              r11, 231
                        add              rsp, 16;                             jmp   n229_lit_integer_β
                        .size            n230_binop_bx, .-n230_binop_bx
                        .type            n231_assign_bx, @function
n231_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n232_statement_end_α
                        .size            n231_assign_bx, .-n231_assign_bx
                        .type            n232_statement_end_bx, @function
n232_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   mov              r11, 233
                        add              rsp, 128;                            jmp   n204_stmt_mark_α
                        .size            n232_statement_end_bx, .-n232_statement_end_bx
                        .type            n233_stmt_mark_bx, @function
n233_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n233_stmt_mark_α:       mov              r11, 234
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n234_statement_begin_α
                        .size            n233_stmt_mark_bx, .-n233_stmt_mark_bx
                        .type            n234_statement_begin_bx, @function
n234_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_begin_α: mov              r11, 235;                            jmp   n235_lit_integer_α
n234_statement_begin_β: mov              r11, 235;                            jmp   n238_stmt_mark_α
                        .size            n234_statement_begin_bx, .-n234_statement_begin_bx
                        .type            n235_lit_integer_bx, @function
n235_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     sub              rsp, 16
                        mov              r11, 236
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_679_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_assign_α
.Llit_integer_α_679_0:  .quad            1
                        .size            n235_lit_integer_bx, .-n235_lit_integer_bx
                        .type            n236_assign_bx, @function
n236_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              r11, 237
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n237_statement_end_α
                        .size            n236_assign_bx, .-n236_assign_bx
                        .type            n237_statement_end_bx, @function
n237_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   mov              r11, 238
                        add              rsp, 16;                             jmp   n238_stmt_mark_α
                        .size            n237_statement_end_bx, .-n237_statement_end_bx
                        .type            n238_stmt_mark_bx, @function
n238_stmt_mark_bx:
#=======================================================================================================================
# realrd  census = census + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n238_stmt_mark_α:       mov              r11, 239
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n239_statement_begin_α
                        .size            n238_stmt_mark_bx, .-n238_stmt_mark_bx
                        .type            n239_statement_begin_bx, @function
n239_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α: mov              r11, 240;                            jmp   n240_var_α
n239_statement_begin_β: mov              r11, 240;                            jmp   n249_stmt_mark_α
                        .size            n239_statement_begin_bx, .-n239_statement_begin_bx
                        .type            n240_var_bx, @function
n240_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 241
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_var_α
                        .size            n240_var_bx, .-n240_var_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 242
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
n241_var_β:             mov              r11, 242
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_lit_real_α
n242_var_β:             mov              r11, 243
                        add              rsp, 16;                             jmp   n241_var_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_lit_real_bx, @function
n243_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_real_α:        sub              rsp, 16
                        mov              r11, 244
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_690_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_binop_α
.Llit_real_α_690_0:     .quad            4611686018427387904
                        .size            n243_lit_real_bx, .-n243_lit_real_bx
                        .type            n244_binop_bx, @function
n244_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:           sub              rsp, 16
                        mov              r11, 245
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
                        cmp              al, 104;                             jne   .Lbinop_α_691_240
                        add              rsp, 32;                             jmp   n242_var_β
.Lbinop_α_691_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:317
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
1:                                                                            jmp   n245_subscript_α
n244_binop_β:           mov              r11, 245
                        add              rsp, 32;                             jmp   n242_var_β
                        .size            n244_binop_bx, .-n244_binop_bx
                        .type            n245_subscript_bx, @function
n245_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_subscript_α:       sub              rsp, 16
                        mov              r11, 246
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
                        cmp              al, 104;                             jne   .Lsubscript_α_692_240
                        add              rsp, 16;                             jmp   n244_binop_β
.Lsubscript_α_692_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n246_binop_α
n245_subscript_β:       mov              r11, 246
                        add              rsp, 16;                             jmp   n244_binop_β
                        .size            n245_subscript_bx, .-n245_subscript_bx
                        .type            n246_binop_bx, @function
n246_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           sub              rsp, 16
                        mov              r11, 247
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_693_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_693_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_693_7
.Lbinop_α_693_2:        and              edx, 1;                              jz    .Lbinop_α_693_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_693_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_693_4
.Lbinop_α_693_3:        movq             xmm0, rsi
.Lbinop_α_693_4:        cmp              cl, 5;                               je    .Lbinop_α_693_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_693_6
.Lbinop_α_693_5:        movq             xmm1, rdi
.Lbinop_α_693_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_693_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_693_7:                                                              jmp   n247_assign_α
.Lbinop_α_693_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_693_240
                        add              rsp, 16;                             jmp   n245_subscript_β
.Lbinop_α_693_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n247_assign_α
n246_binop_β:           mov              r11, 247
                        add              rsp, 16;                             jmp   n245_subscript_β
                        .size            n246_binop_bx, .-n246_binop_bx
                        .type            n247_assign_bx, @function
n247_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:          mov              r11, 248
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n248_statement_end_α
                        .size            n247_assign_bx, .-n247_assign_bx
                        .type            n248_statement_end_bx, @function
n248_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:   mov              r11, 249
                        add              rsp, 112;                            jmp   n249_stmt_mark_α
                        .size            n248_statement_end_bx, .-n248_statement_end_bx
                        .type            n249_stmt_mark_bx, @function
n249_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realrd)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n249_stmt_mark_α:       mov              r11, 250
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n250_statement_begin_α
                        .size            n249_stmt_mark_bx, .-n249_stmt_mark_bx
                        .type            n250_statement_begin_bx, @function
n250_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α: mov              r11, 251;                            jmp   n251_var_α
n250_statement_begin_β: mov              r11, 251;                            jmp   n261_stmt_mark_α
                        .size            n250_statement_begin_bx, .-n250_statement_begin_bx
                        .type            n251_var_bx, @function
n251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_lit_integer_α
                        .size            n251_var_bx, .-n251_var_bx
                        .type            n252_lit_integer_bx, @function
n252_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:     sub              rsp, 16
                        mov              r11, 253
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_702_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n253_coerce_numeric_α
n252_lit_integer_β:     mov              r11, 253
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n250_statement_begin_β
.Llit_integer_α_702_0:  .quad            12
                        .size            n252_lit_integer_bx, .-n252_lit_integer_bx
                        .type            n253_coerce_numeric_bx, @function
n253_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 254
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_704_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_704_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_704_0
.Lcoerce_numeric_α_704_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_coerce_numeric_α
.Lcoerce_numeric_α_704_0:
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
1:                                                                            jmp   n254_coerce_numeric_α
n253_coerce_numeric_β:  mov              r11, 254
                        add              rsp, 16;                             jmp   n252_lit_integer_β
                        .size            n253_coerce_numeric_bx, .-n253_coerce_numeric_bx
                        .type            n254_coerce_numeric_bx, @function
n254_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 255
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_706_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_706_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_706_0
.Lcoerce_numeric_α_706_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_cmp_test_α
.Lcoerce_numeric_α_706_0:
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
1:                                                                            jmp   n255_cmp_test_α
n254_coerce_numeric_β:  mov              r11, 255
                        add              rsp, 16;                             jmp   n253_coerce_numeric_β
                        .size            n254_coerce_numeric_bx, .-n254_coerce_numeric_bx
                        .type            n255_cmp_test_bx, @function
n255_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_cmp_test_α:        sub              rsp, 16
                        mov              r11, 256
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_708_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_708_239
                        add              rsp, 16;                             jmp   n254_coerce_numeric_β
.Lcmp_test_α_708_239:                                                         jmp   n256_var_α
.Lcmp_test_α_708_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_708_240
                        add              rsp, 16;                             jmp   n254_coerce_numeric_β
.Lcmp_test_α_708_240:                                                         jmp   n256_var_α
n255_cmp_test_β:        mov              r11, 256
                        add              rsp, 16;                             jmp   n254_coerce_numeric_β
                        .size            n255_cmp_test_bx, .-n255_cmp_test_bx
                        .type            n256_var_bx, @function
n256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 257
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_lit_integer_α
n256_var_β:             mov              r11, 257
                        add              rsp, 16;                             jmp   n255_cmp_test_β
                        .size            n256_var_bx, .-n256_var_bx
                        .type            n257_lit_integer_bx, @function
n257_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     sub              rsp, 16
                        mov              r11, 258
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_710_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_binop_α
n257_lit_integer_β:     mov              r11, 258
                        add              rsp, 16;                             jmp   n256_var_β
.Llit_integer_α_710_0:  .quad            1
                        .size            n257_lit_integer_bx, .-n257_lit_integer_bx
                        .type            n258_binop_bx, @function
n258_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_binop_α:           sub              rsp, 16
                        mov              r11, 259
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_711_2
                        add              rax, 1;                              jo    .Lbinop_α_711_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_711_7
.Lbinop_α_711_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_711_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_711_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_711_4
.Lbinop_α_711_3:        movq             xmm0, rsi
.Lbinop_α_711_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_711_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_711_7:                                                              jmp   n259_assign_α
.Lbinop_α_711_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_711_240
                        add              rsp, 16;                             jmp   n257_lit_integer_β
.Lbinop_α_711_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n259_assign_α
n258_binop_β:           mov              r11, 259
                        add              rsp, 16;                             jmp   n257_lit_integer_β
                        .size            n258_binop_bx, .-n258_binop_bx
                        .type            n259_assign_bx, @function
n259_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:          mov              r11, 260
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n260_statement_end_α
                        .size            n259_assign_bx, .-n259_assign_bx
                        .type            n260_statement_end_bx, @function
n260_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:   mov              r11, 261
                        add              rsp, 128;                            jmp   n238_stmt_mark_α
                        .size            n260_statement_end_bx, .-n260_statement_end_bx
                        .type            n261_stmt_mark_bx, @function
n261_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n261_stmt_mark_α:       mov              r11, 262
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n262_statement_begin_α
                        .size            n261_stmt_mark_bx, .-n261_stmt_mark_bx
                        .type            n262_statement_begin_bx, @function
n262_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α: mov              r11, 263;                            jmp   n263_var_α
n262_statement_begin_β: mov              r11, 263;                            jmp   n270_stmt_mark_α
                        .size            n262_statement_begin_bx, .-n262_statement_begin_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 264
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_var_α
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_var_bx, @function
n264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              r11, 265
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_lit_string_α
n264_var_β:             mov              r11, 265
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n262_statement_begin_β
                        .size            n264_var_bx, .-n264_var_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      sub              rsp, 16
                        mov              r11, 266
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_721_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_subscript_α
n265_lit_string_β:      mov              r11, 266
                        add              rsp, 16;                             jmp   n264_var_β
.Llit_string_α_721_0:   .quad            .Llit_string_α_721_0_s
.Llit_string_α_721_0_s: .string          ""
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_subscript_bx, @function
n266_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_subscript_α:       sub              rsp, 16
                        mov              r11, 267
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
                        cmp              al, 104;                             jne   .Lsubscript_α_722_240
                        add              rsp, 16;                             jmp   n265_lit_string_β
.Lsubscript_α_722_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n267_binop_α
n266_subscript_β:       mov              r11, 267
                        add              rsp, 16;                             jmp   n265_lit_string_β
                        .size            n266_subscript_bx, .-n266_subscript_bx
                        .type            n267_binop_bx, @function
n267_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:           sub              rsp, 16
                        mov              r11, 268
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_723_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_723_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_723_7
.Lbinop_α_723_2:        and              edx, 1;                              jz    .Lbinop_α_723_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
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
.Lbinop_α_723_7:                                                              jmp   n268_assign_α
.Lbinop_α_723_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_723_240
                        add              rsp, 16;                             jmp   n266_subscript_β
.Lbinop_α_723_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n268_assign_α
n267_binop_β:           mov              r11, 268
                        add              rsp, 16;                             jmp   n266_subscript_β
                        .size            n267_binop_bx, .-n267_binop_bx
                        .type            n268_assign_bx, @function
n268_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n269_statement_end_α
                        .size            n268_assign_bx, .-n268_assign_bx
                        .type            n269_statement_end_bx, @function
n269_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:   mov              r11, 270
                        add              rsp, 80;                             jmp   n270_stmt_mark_α
                        .size            n269_statement_end_bx, .-n269_statement_end_bx
                        .type            n270_stmt_mark_bx, @function
n270_stmt_mark_bx:
#=======================================================================================================================
#         census = census + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n270_stmt_mark_α:       mov              r11, 271
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n271_statement_begin_α
                        .size            n270_stmt_mark_bx, .-n270_stmt_mark_bx
                        .type            n271_statement_begin_bx, @function
n271_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_begin_α: mov              r11, 272;                            jmp   n272_var_α
n271_statement_begin_β: mov              r11, 272;                            jmp   n291_stmt_mark_α
                        .size            n271_statement_begin_bx, .-n271_statement_begin_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 273
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_var_α
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_var_bx, @function
n273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              r11, 274
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_lit_integer_α
n273_var_β:             mov              r11, 274
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n271_statement_begin_β
                        .size            n273_var_bx, .-n273_var_bx
                        .type            n274_lit_integer_bx, @function
n274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_733_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_subscript_α
n274_lit_integer_β:     mov              r11, 275
                        add              rsp, 16;                             jmp   n273_var_β
.Llit_integer_α_733_0:  .quad            9999
                        .size            n274_lit_integer_bx, .-n274_lit_integer_bx
                        .type            n275_subscript_bx, @function
n275_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:       sub              rsp, 16
                        mov              r11, 276
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
                        cmp              al, 104;                             jne   .Lsubscript_α_734_240
                        add              rsp, 16;                             jmp   n274_lit_integer_β
.Lsubscript_α_734_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n276_call_α
n275_subscript_β:       mov              r11, 276
                        add              rsp, 16;                             jmp   n274_lit_integer_β
                        .size            n275_subscript_bx, .-n275_subscript_bx
                        .type            n276_call_bx, @function
n276_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:            sub              rsp, 16
                        mov              r11, 277
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd736:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd736]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_735_240
                        add              rsp, 16;                             jmp   n275_subscript_β
.Lcall_α_735_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n277_binop_α
n276_call_β:            mov              r11, 277
                        add              rsp, 16;                             jmp   n275_subscript_β
                        .size            n276_call_bx, .-n276_call_bx
                        .type            n277_binop_bx, @function
n277_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:           sub              rsp, 16
                        mov              r11, 278
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_737_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_737_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_737_7
.Lbinop_α_737_2:        and              edx, 1;                              jz    .Lbinop_α_737_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_737_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_737_4
.Lbinop_α_737_3:        movq             xmm0, rsi
.Lbinop_α_737_4:        cmp              cl, 5;                               je    .Lbinop_α_737_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_737_6
.Lbinop_α_737_5:        movq             xmm1, rdi
.Lbinop_α_737_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_737_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_737_7:                                                              jmp   n278_var_α
.Lbinop_α_737_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_737_240
                        add              rsp, 32;                             jmp   n275_subscript_β
.Lbinop_α_737_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n278_var_α
n277_binop_β:           mov              r11, 278
                        add              rsp, 32;                             jmp   n275_subscript_β
                        .size            n277_binop_bx, .-n277_binop_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              r11, 279
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_lit_string_α
n278_var_β:             mov              r11, 279
                        add              rsp, 16;                             jmp   n277_binop_β
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      sub              rsp, 16
                        mov              r11, 280
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_739_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_subscript_α
n279_lit_string_β:      mov              r11, 280
                        add              rsp, 16;                             jmp   n278_var_β
.Llit_string_α_739_0:   .quad            .Llit_string_α_739_0_s
.Llit_string_α_739_0_s: .string          "absent"
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_subscript_bx, @function
n280_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_subscript_α:       sub              rsp, 16
                        mov              r11, 281
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
                        cmp              al, 104;                             jne   .Lsubscript_α_740_240
                        add              rsp, 16;                             jmp   n279_lit_string_β
.Lsubscript_α_740_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n281_call_α
n280_subscript_β:       mov              r11, 281
                        add              rsp, 16;                             jmp   n279_lit_string_β
                        .size            n280_subscript_bx, .-n280_subscript_bx
                        .type            n281_call_bx, @function
n281_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:            sub              rsp, 16
                        mov              r11, 282
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd742:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd742]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_741_240
                        add              rsp, 16;                             jmp   n280_subscript_β
.Lcall_α_741_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n282_binop_α
n281_call_β:            mov              r11, 282
                        add              rsp, 16;                             jmp   n280_subscript_β
                        .size            n281_call_bx, .-n281_call_bx
                        .type            n282_binop_bx, @function
n282_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_binop_α:           sub              rsp, 16
                        mov              r11, 283
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_743_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_743_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_743_7
.Lbinop_α_743_2:        and              edx, 1;                              jz    .Lbinop_α_743_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_743_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_743_4
.Lbinop_α_743_3:        movq             xmm0, rsi
.Lbinop_α_743_4:        cmp              cl, 5;                               je    .Lbinop_α_743_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_743_6
.Lbinop_α_743_5:        movq             xmm1, rdi
.Lbinop_α_743_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_743_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_743_7:                                                              jmp   n283_var_α
.Lbinop_α_743_0:        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_743_240
                        add              rsp, 32;                             jmp   n280_subscript_β
.Lbinop_α_743_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n283_var_α
n282_binop_β:           mov              r11, 283
                        add              rsp, 32;                             jmp   n280_subscript_β
                        .size            n282_binop_bx, .-n282_binop_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 284
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_lit_integer_α
n283_var_β:             mov              r11, 284
                        add              rsp, 16;                             jmp   n282_binop_β
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_lit_integer_bx, @function
n284_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     sub              rsp, 16
                        mov              r11, 285
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_745_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_unop_α
n284_lit_integer_β:     mov              r11, 285
                        add              rsp, 16;                             jmp   n283_var_β
.Llit_integer_α_745_0:  .quad            9999
                        .size            n284_lit_integer_bx, .-n284_lit_integer_bx
                        .type            n285_unop_bx, @function
n285_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_unop_α:            sub              rsp, 16
                        mov              r11, 286
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
1:                                                                            jmp   n286_subscript_α
n285_unop_β:            mov              r11, 286
                        add              rsp, 16;                             jmp   n284_lit_integer_β
                        .size            n285_unop_bx, .-n285_unop_bx
                        .type            n286_subscript_bx, @function
n286_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_subscript_α:       sub              rsp, 16
                        mov              r11, 287
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
                        cmp              al, 104;                             jne   .Lsubscript_α_747_240
                        add              rsp, 16;                             jmp   n285_unop_β
.Lsubscript_α_747_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n287_call_α
n286_subscript_β:       mov              r11, 287
                        add              rsp, 16;                             jmp   n285_unop_β
                        .size            n286_subscript_bx, .-n286_subscript_bx
                        .type            n287_call_bx, @function
n287_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            sub              rsp, 16
                        mov              r11, 288
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd749:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd749]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_748_240
                        add              rsp, 16;                             jmp   n286_subscript_β
.Lcall_α_748_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n288_binop_α
n287_call_β:            mov              r11, 288
                        add              rsp, 16;                             jmp   n286_subscript_β
                        .size            n287_call_bx, .-n287_call_bx
                        .type            n288_binop_bx, @function
n288_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_binop_α:           sub              rsp, 16
                        mov              r11, 289
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_750_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_750_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_750_7
.Lbinop_α_750_2:        and              edx, 1;                              jz    .Lbinop_α_750_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
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
.Lbinop_α_750_7:                                                              jmp   n289_assign_α
.Lbinop_α_750_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_750_240
                        add              rsp, 32;                             jmp   n286_subscript_β
.Lbinop_α_750_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n289_assign_α
n288_binop_β:           mov              r11, 289
                        add              rsp, 32;                             jmp   n286_subscript_β
                        .size            n288_binop_bx, .-n288_binop_bx
                        .type            n289_assign_bx, @function
n289_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n290_statement_end_α
                        .size            n289_assign_bx, .-n289_assign_bx
                        .type            n290_statement_end_bx, @function
n290_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:   mov              r11, 291
                        add              rsp, 272;                            jmp   n291_stmt_mark_α
                        .size            n290_statement_end_bx, .-n290_statement_end_bx
                        .type            n291_stmt_mark_bx, @function
n291_stmt_mark_bx:
#=======================================================================================================================
#         pass = LT(pass, 40) pass + 1                    :S(round)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n291_stmt_mark_α:       mov              r11, 292
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n292_statement_begin_α
                        .size            n291_stmt_mark_bx, .-n291_stmt_mark_bx
                        .type            n292_statement_begin_bx, @function
n292_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_begin_α: mov              r11, 293;                            jmp   n293_var_α
n292_statement_begin_β: mov              r11, 293;                            jmp   n303_stmt_mark_α
                        .size            n292_statement_begin_bx, .-n292_statement_begin_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 294
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_lit_integer_α
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_lit_integer_bx, @function
n294_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_integer_α:     sub              rsp, 16
                        mov              r11, 295
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_759_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n295_coerce_numeric_α
n294_lit_integer_β:     mov              r11, 295
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
.Llit_integer_α_759_0:  .quad            40
                        .size            n294_lit_integer_bx, .-n294_lit_integer_bx
                        .type            n295_coerce_numeric_bx, @function
n295_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 296
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_761_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
.Lcoerce_numeric_α_761_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_coerce_numeric_α
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
1:                                                                            jmp   n296_coerce_numeric_α
n295_coerce_numeric_β:  mov              r11, 296
                        add              rsp, 16;                             jmp   n294_lit_integer_β
                        .size            n295_coerce_numeric_bx, .-n295_coerce_numeric_bx
                        .type            n296_coerce_numeric_bx, @function
n296_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 297
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_763_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
.Lcoerce_numeric_α_763_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_cmp_test_α
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
1:                                                                            jmp   n297_cmp_test_α
n296_coerce_numeric_β:  mov              r11, 297
                        add              rsp, 16;                             jmp   n295_coerce_numeric_β
                        .size            n296_coerce_numeric_bx, .-n296_coerce_numeric_bx
                        .type            n297_cmp_test_bx, @function
n297_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_cmp_test_α:        sub              rsp, 16
                        mov              r11, 298
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_765_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_765_239
                        add              rsp, 16;                             jmp   n296_coerce_numeric_β
.Lcmp_test_α_765_239:                                                         jmp   n298_var_α
.Lcmp_test_α_765_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_765_240
                        add              rsp, 16;                             jmp   n296_coerce_numeric_β
.Lcmp_test_α_765_240:                                                         jmp   n298_var_α
n297_cmp_test_β:        mov              r11, 298
                        add              rsp, 16;                             jmp   n296_coerce_numeric_β
                        .size            n297_cmp_test_bx, .-n297_cmp_test_bx
                        .type            n298_var_bx, @function
n298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              r11, 299
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_lit_integer_α
n298_var_β:             mov              r11, 299
                        add              rsp, 16;                             jmp   n297_cmp_test_β
                        .size            n298_var_bx, .-n298_var_bx
                        .type            n299_lit_integer_bx, @function
n299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     sub              rsp, 16
                        mov              r11, 300
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_767_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_binop_α
n299_lit_integer_β:     mov              r11, 300
                        add              rsp, 16;                             jmp   n298_var_β
.Llit_integer_α_767_0:  .quad            1
                        .size            n299_lit_integer_bx, .-n299_lit_integer_bx
                        .type            n300_binop_bx, @function
n300_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 301
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_768_2
                        add              rax, 1;                              jo    .Lbinop_α_768_0
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
.Lbinop_α_768_7:                                                              jmp   n301_assign_α
.Lbinop_α_768_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_768_240
                        add              rsp, 16;                             jmp   n299_lit_integer_β
.Lbinop_α_768_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n301_assign_α
n300_binop_β:           mov              r11, 301
                        add              rsp, 16;                             jmp   n299_lit_integer_β
                        .size            n300_binop_bx, .-n300_binop_bx
                        .type            n301_assign_bx, @function
n301_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n302_statement_end_α
                        .size            n301_assign_bx, .-n301_assign_bx
                        .type            n302_statement_end_bx, @function
n302_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   mov              r11, 303
                        add              rsp, 128;                            jmp   n15_stmt_mark_α
                        .size            n302_statement_end_bx, .-n302_statement_end_bx
                        .type            n303_stmt_mark_bx, @function
n303_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' census
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n303_stmt_mark_α:       mov              r11, 304
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n304_statement_begin_α
                        .size            n303_stmt_mark_bx, .-n303_stmt_mark_bx
                        .type            n304_statement_begin_bx, @function
n304_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α: mov              r11, 305;                            jmp   n305_lit_string_α
n304_statement_begin_β: mov              r11, 305;                            jmp   n310_stmt_mark_α
                        .size            n304_statement_begin_bx, .-n304_statement_begin_bx
                        .type            n305_lit_string_bx, @function
n305_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      sub              rsp, 16
                        mov              r11, 306
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_776_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_var_α
.Llit_string_α_776_0:   .quad            .Llit_string_α_776_0_s
.Llit_string_α_776_0_s: .string          "census of 40 passes = "
                        .size            n305_lit_string_bx, .-n305_lit_string_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              r11, 307
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_binop_α
n306_var_β:             mov              r11, 307
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n304_statement_begin_β
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_binop_bx, @function
n307_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_binop_α:           sub              rsp, 16
                        mov              r11, 308
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
1:                                                                            jmp   n308_assign_α
n307_binop_β:           mov              r11, 308
                        add              rsp, 16;                             jmp   n306_var_β
                        .size            n307_binop_bx, .-n307_binop_bx
                        .type            n308_assign_bx, @function
n308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_assign_α:          mov              r11, 309
                        mov              rax, qword ptr [rsp + 0]             # binop
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
1:                                                                            jmp   n309_statement_end_α
.Lassign_α_779_0:       .quad            .Lassign_α_779_0_s
.Lassign_α_779_0_s:     .string          "OUTPUT"
                        .size            n308_assign_bx, .-n308_assign_bx
                        .type            n309_statement_end_bx, @function
n309_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_end_α:   mov              r11, 310
                        add              rsp, 48;                             jmp   n310_stmt_mark_α
                        .size            n309_statement_end_bx, .-n309_statement_end_bx
                        .type            n310_stmt_mark_bx, @function
n310_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n310_stmt_mark_α:       mov              r11, 311
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n311_statement_begin_α
                        .size            n310_stmt_mark_bx, .-n310_stmt_mark_bx
                        .type            n311_statement_begin_bx, @function
n311_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_begin_α: mov              r11, 312;                            jmp   n312_lit_string_α
n311_statement_begin_β: mov              r11, 312;                            jmp   main_γ
                        .size            n311_statement_begin_bx, .-n311_statement_begin_bx
                        .type            n312_lit_string_bx, @function
n312_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_var_α
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          "tab[17] = "
                        .size            n312_lit_string_bx, .-n312_lit_string_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 314
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_lit_integer_α
n313_var_β:             mov              r11, 314
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n311_statement_begin_β
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_lit_integer_bx, @function
n314_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_integer_α:     sub              rsp, 16
                        mov              r11, 315
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_788_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n315_subscript_α
n314_lit_integer_β:     mov              r11, 315
                        add              rsp, 16;                             jmp   n313_var_β
.Llit_integer_α_788_0:  .quad            17
                        .size            n314_lit_integer_bx, .-n314_lit_integer_bx
                        .type            n315_subscript_bx, @function
n315_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:       sub              rsp, 16
                        mov              r11, 316
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
                        cmp              al, 104;                             jne   .Lsubscript_α_789_240
                        add              rsp, 16;                             jmp   n314_lit_integer_β
.Lsubscript_α_789_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n316_binop_α
n315_subscript_β:       mov              r11, 316
                        add              rsp, 16;                             jmp   n314_lit_integer_β
                        .size            n315_subscript_bx, .-n315_subscript_bx
                        .type            n316_binop_bx, @function
n316_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              r11, 317
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
1:                                                                            jmp   n317_lit_string_α
n316_binop_β:           mov              r11, 317
                        add              rsp, 16;                             jmp   n315_subscript_β
                        .size            n316_binop_bx, .-n316_binop_bx
                        .type            n317_lit_string_bx, @function
n317_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      sub              rsp, 16
                        mov              r11, 318
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_791_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n318_binop_α
n317_lit_string_β:      mov              r11, 318
                        add              rsp, 16;                             jmp   n316_binop_β
.Llit_string_α_791_0:   .quad            .Llit_string_α_791_0_s
.Llit_string_α_791_0_s: .string          "   tab[\"17\"] = "
                        .size            n317_lit_string_bx, .-n317_lit_string_bx
                        .type            n318_binop_bx, @function
n318_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_binop_α:           sub              rsp, 16
                        mov              r11, 319
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
1:                                                                            jmp   n319_var_α
n318_binop_β:           mov              r11, 319
                        add              rsp, 16;                             jmp   n317_lit_string_β
                        .size            n318_binop_bx, .-n318_binop_bx
                        .type            n319_var_bx, @function
n319_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             sub              rsp, 16
                        mov              r11, 320
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_lit_string_α
n319_var_β:             mov              r11, 320
                        add              rsp, 16;                             jmp   n318_binop_β
                        .size            n319_var_bx, .-n319_var_bx
                        .type            n320_lit_string_bx, @function
n320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_794_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n321_subscript_α
n320_lit_string_β:      mov              r11, 321
                        add              rsp, 16;                             jmp   n319_var_β
.Llit_string_α_794_0:   .quad            .Llit_string_α_794_0_s
.Llit_string_α_794_0_s: .string          "17"
                        .size            n320_lit_string_bx, .-n320_lit_string_bx
                        .type            n321_subscript_bx, @function
n321_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_subscript_α:       sub              rsp, 16
                        mov              r11, 322
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
                        cmp              al, 104;                             jne   .Lsubscript_α_795_240
                        add              rsp, 16;                             jmp   n320_lit_string_β
.Lsubscript_α_795_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n322_binop_α
n321_subscript_β:       mov              r11, 322
                        add              rsp, 16;                             jmp   n320_lit_string_β
                        .size            n321_subscript_bx, .-n321_subscript_bx
                        .type            n322_binop_bx, @function
n322_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:           sub              rsp, 16
                        mov              r11, 323
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
1:                                                                            jmp   n323_lit_string_α
n322_binop_β:           mov              r11, 323
                        add              rsp, 16;                             jmp   n321_subscript_β
                        .size            n322_binop_bx, .-n322_binop_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_797_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_binop_α
n323_lit_string_β:      mov              r11, 324
                        add              rsp, 16;                             jmp   n322_binop_β
.Llit_string_α_797_0:   .quad            .Llit_string_α_797_0_s
.Llit_string_α_797_0_s: .string          "   tab[5] = "
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_binop_bx, @function
n324_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              r11, 325
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
1:                                                                            jmp   n325_var_α
n324_binop_β:           mov              r11, 325
                        add              rsp, 16;                             jmp   n323_lit_string_β
                        .size            n324_binop_bx, .-n324_binop_bx
                        .type            n325_var_bx, @function
n325_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:             sub              rsp, 16
                        mov              r11, 326
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_lit_integer_α
n325_var_β:             mov              r11, 326
                        add              rsp, 16;                             jmp   n324_binop_β
                        .size            n325_var_bx, .-n325_var_bx
                        .type            n326_lit_integer_bx, @function
n326_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     sub              rsp, 16
                        mov              r11, 327
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_800_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n327_subscript_α
n326_lit_integer_β:     mov              r11, 327
                        add              rsp, 16;                             jmp   n325_var_β
.Llit_integer_α_800_0:  .quad            5
                        .size            n326_lit_integer_bx, .-n326_lit_integer_bx
                        .type            n327_subscript_bx, @function
n327_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:       sub              rsp, 16
                        mov              r11, 328
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
                        cmp              al, 104;                             jne   .Lsubscript_α_801_240
                        add              rsp, 16;                             jmp   n326_lit_integer_β
.Lsubscript_α_801_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n328_binop_α
n327_subscript_β:       mov              r11, 328
                        add              rsp, 16;                             jmp   n326_lit_integer_β
                        .size            n327_subscript_bx, .-n327_subscript_bx
                        .type            n328_binop_bx, @function
n328_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_binop_α:           sub              rsp, 16
                        mov              r11, 329
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
1:                                                                            jmp   n329_assign_α
n328_binop_β:           mov              r11, 329
                        add              rsp, 16;                             jmp   n327_subscript_β
                        .size            n328_binop_bx, .-n328_binop_bx
                        .type            n329_assign_bx, @function
n329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:          mov              r11, 330
                        mov              rax, qword ptr [rsp + 0]             # binop
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
1:                                                                            jmp   n330_statement_end_α
.Lassign_α_803_0:       .quad            .Lassign_α_803_0_s
.Lassign_α_803_0_s:     .string          "OUTPUT"
                        .size            n329_assign_bx, .-n329_assign_bx
                        .type            n330_statement_end_bx, @function
n330_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 331
                        add              rsp, 272;                            jmp   main_γ
                        .size            n330_statement_end_bx, .-n330_statement_end_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:            mov              r11, 332;                            jmp   n15_stmt_mark_α
n331_goto_β:            mov              r11, 332;                            jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n27_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n53_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n99_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n178_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n204_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:            mov              r11, 338;                            jmp   n238_stmt_mark_α
n337_goto_β:            mov              r11, 338;                            jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
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
                        .quad            14157558664538
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            3280
                        .quad            1
                        .quad            3606398139105280
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
