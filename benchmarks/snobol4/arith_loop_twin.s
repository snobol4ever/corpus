                        .intel_syntax    noprefix
                        .text
                        .file            1 "arith_loop_twin.sno"
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
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
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
.Lgvan0:                .string          "N"
.Lgvan1:                .string          "I"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "LOOP"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 360], rax
                        mov              dword ptr [rsp + 352], 160
                        mov              dword ptr [rsp + 356], 368
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
1:                      cmp              al, 104;                             jne   .Lcall_α_43_240
                        add              rsp, 16;                             jmp   n1_lit_integer_α
.Lcall_α_43_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n1_lit_integer_α
n0_call_β:              mov              r11, 1
                        add              rsp, 16;                             jmp   n1_lit_integer_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#=======================================================================================================================
# 	N = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_44_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Llit_integer_α_44_0:   .quad            18446744073709551615
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_45_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_string_α
.Llit_integer_α_45_0:   .quad            0
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Llit_string_α_46_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_call_α
.Llit_string_α_46_0:    .quad            .Llit_string_α_46_0_s
.Llit_string_α_46_0_s:  .string          "arith_loop_twin.sno"
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
.Lcall_α_rkfnzd48:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd48]
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
                        cmp              al, 104;                             jne   .Lcall_α_47_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n5_stmt_mark_α
.Lcall_α_47_240:        mov              qword ptr [rsp + 0], rax             # result
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
                        mov              qword ptr [rax + 0], 6
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_53_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_assign_α
.Llit_integer_α_53_0:   .quad            0
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # N
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
# 	I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n10_stmt_mark_α:        mov              r11, 11
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_61_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
.Llit_integer_α_61_0:   .quad            1
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
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
# LOOP	N = N + I
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n15_stmt_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n16_statement_begin_α
                        .size            n15_stmt_mark_bx, .-n15_stmt_mark_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 17;                             jmp   n17_var_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   n22_stmt_mark_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              sub              rsp, 16
                        mov              r11, 18
                        mov              rax, qword ptr [r9 + 0]              # N
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_var_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              sub              rsp, 16
                        mov              r11, 19
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_binop_α
n18_var_β:              mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            sub              rsp, 16
                        mov              r11, 20
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_71_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_71_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_71_7
.Lbinop_α_71_2:         and              edx, 1;                              jz    .Lbinop_α_71_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_71_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_71_4
.Lbinop_α_71_3:         movq             xmm0, rsi
.Lbinop_α_71_4:         cmp              cl, 5;                               je    .Lbinop_α_71_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_71_6
.Lbinop_α_71_5:         movq             xmm1, rdi
.Lbinop_α_71_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_71_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_71_7:                                                               jmp   n20_assign_α
.Lbinop_α_71_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_71_240
                        add              rsp, 16;                             jmp   n18_var_β
.Lbinop_α_71_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n20_assign_α
n19_binop_β:            mov              r11, 20
                        add              rsp, 16;                             jmp   n18_var_β
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # N
                        mov              qword ptr [r9 + 8], rdx;             jmp   n21_statement_end_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22
                        add              rsp, 48;                             jmp   n22_stmt_mark_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_stmt_mark_bx, @function
n22_stmt_mark_bx:
#=======================================================================================================================
# 	I = I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n22_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n23_statement_begin_α
                        .size            n22_stmt_mark_bx, .-n22_stmt_mark_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24;                             jmp   n24_var_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n29_stmt_mark_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_var_bx, @function
n24_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              sub              rsp, 16
                        mov              r11, 25
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_lit_integer_α
                        .size            n24_var_bx, .-n24_var_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_80_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_binop_α
n25_lit_integer_β:      mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
.Llit_integer_α_80_0:   .quad            1
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_binop_bx, @function
n26_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            sub              rsp, 16
                        mov              r11, 27
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_81_2
                        add              rax, 1;                              jo    .Lbinop_α_81_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_81_7
.Lbinop_α_81_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_81_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_81_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_81_4
.Lbinop_α_81_3:         movq             xmm0, rsi
.Lbinop_α_81_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_81_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_81_7:                                                               jmp   n27_assign_α
.Lbinop_α_81_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_81_240
                        add              rsp, 16;                             jmp   n25_lit_integer_β
.Lbinop_α_81_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n27_assign_α
n26_binop_β:            mov              r11, 27
                        add              rsp, 16;                             jmp   n25_lit_integer_β
                        .size            n26_binop_bx, .-n26_binop_bx
                        .type            n27_assign_bx, @function
n27_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n28_statement_end_α
                        .size            n27_assign_bx, .-n27_assign_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        add              rsp, 48;                             jmp   n29_stmt_mark_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_stmt_mark_bx, @function
n29_stmt_mark_bx:
#=======================================================================================================================
# 	LE(I, 300000)					:S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n29_stmt_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n30_statement_begin_α
                        .size            n29_stmt_mark_bx, .-n29_stmt_mark_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31;                             jmp   n31_var_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n37_stmt_mark_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_lit_integer_α
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_90_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_coerce_numeric_α
n32_lit_integer_β:      mov              r11, 33
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
.Llit_integer_α_90_0:   .quad            300000
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_coerce_numeric_bx, @function
n33_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 34
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_92_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_92_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_92_0
.Lcoerce_numeric_α_92_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_coerce_numeric_α
.Lcoerce_numeric_α_92_0:
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
1:                                                                            jmp   n34_coerce_numeric_α
n33_coerce_numeric_β:   mov              r11, 34
                        add              rsp, 16;                             jmp   n32_lit_integer_β
                        .size            n33_coerce_numeric_bx, .-n33_coerce_numeric_bx
                        .type            n34_coerce_numeric_bx, @function
n34_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 35
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_94_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_94_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_94_0
.Lcoerce_numeric_α_94_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_cmp_test_α
.Lcoerce_numeric_α_94_0:
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
1:                                                                            jmp   n35_cmp_test_α
n34_coerce_numeric_β:   mov              r11, 35
                        add              rsp, 16;                             jmp   n33_coerce_numeric_β
                        .size            n34_coerce_numeric_bx, .-n34_coerce_numeric_bx
                        .type            n35_cmp_test_bx, @function
n35_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_cmp_test_α:         sub              rsp, 16
                        mov              r11, 36
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_96_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_96_239
                        add              rsp, 16;                             jmp   n34_coerce_numeric_β
.Lcmp_test_α_96_239:                                                          jmp   n36_statement_end_α
.Lcmp_test_α_96_0:      lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_96_240
                        add              rsp, 16;                             jmp   n34_coerce_numeric_β
.Lcmp_test_α_96_240:                                                          jmp   n36_statement_end_α
                        .size            n35_cmp_test_bx, .-n35_cmp_test_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        add              rsp, 80;                             jmp   n15_stmt_mark_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_stmt_mark_bx, @function
n37_stmt_mark_bx:
#=======================================================================================================================
# 	OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n37_stmt_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n38_statement_begin_α
                        .size            n37_stmt_mark_bx, .-n37_stmt_mark_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39;                             jmp   n39_var_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   main_γ
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 0]              # N
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_assign_α
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_assign_bx, @function
n40_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_104_0]
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
1:                                                                            jmp   n41_statement_end_α
.Lassign_α_104_0:       .quad            .Lassign_α_104_0_s
.Lassign_α_104_0_s:     .string          "OUTPUT"
                        .size            n40_assign_bx, .-n40_assign_bx
                        .type            n41_statement_end_bx, @function
n41_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        add              rsp, 16;                             jmp   main_γ
                        .size            n41_statement_end_bx, .-n41_statement_end_bx
                        .type            n42_goto_bx, @function
n42_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:             mov              r11, 43;                             jmp   n15_stmt_mark_α
n42_goto_β:             mov              r11, 43;                             jmp   main_ω
                        .size            n42_goto_bx, .-n42_goto_bx
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
                        .quad            1581894421850
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            352
                        .quad            1
                        .quad            387028092977152
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
