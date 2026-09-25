                        .intel_syntax    noprefix
                        .text
                        .file            1 "array_sum.sno"
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
.Lgvan0:                .string          "pass"
.Lgvan1:                .string          "vec"
.Lgvan2:                .string          "i"
.Lgvan3:                .string          "sum"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "build"
.Llbln1:                .string          "fill"
.Llbln2:                .string          "read"
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
                        mov              qword ptr [rsp + 808], rax
                        mov              dword ptr [rsp + 800], 160
                        mov              dword ptr [rsp + 804], 816
                        mov              eax, 0
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_94_0:   .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_95_0:   .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "array_sum.sno"
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
.Lcall_α_rkfnzd98:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd98]
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
                        cmp              al, 104;                             jne   .Lcall_α_97_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_97_240:        mov              qword ptr [rsp + 0], rax             # result
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
                        mov              qword ptr [rax + 0], 3
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Llit_integer_α_103_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # pass
                        mov              qword ptr [r9 + 8], rdx;             jmp   n8_statement_end_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_statement_end_bx, @function
n8_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        add              rsp, 16;                             jmp   n9_stmt_mark_α
                        .size            n8_statement_end_bx, .-n8_statement_end_bx
                        .type            n9_stmt_mark_bx, @function
n9_stmt_mark_bx:
#=======================================================================================================================
# build   vec = ARRAY(500)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n9_stmt_mark_α:         mov              r11, 10
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n10_statement_begin_α
                        .size            n9_stmt_mark_bx, .-n9_stmt_mark_bx
                        .type            n10_statement_begin_bx, @function
n10_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:  mov              r11, 11;                             jmp   n11_lit_integer_α
n10_statement_begin_β:  mov              r11, 11;                             jmp   n15_stmt_mark_α
                        .size            n10_statement_begin_bx, .-n10_statement_begin_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_call_α
.Llit_integer_α_111_0:  .quad            500
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_call_bx, @function
n12_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:             sub              rsp, 16
                        mov              r11, 13
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd113:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd113]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376848
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_112_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lcall_α_112_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n13_assign_α
n12_call_β:             mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
                        .size            n12_call_bx, .-n12_call_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # vec
                        mov              qword ptr [r9 + 24], rdx;            jmp   n14_statement_end_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        add              rsp, 32;                             jmp   n15_stmt_mark_α
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_stmt_mark_bx, @function
n15_stmt_mark_bx:
#=======================================================================================================================
#         i = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n15_stmt_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n16_statement_begin_α
                        .size            n15_stmt_mark_bx, .-n15_stmt_mark_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 17;                             jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   n20_stmt_mark_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Llit_integer_α_121_0:  .quad            1
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # i
                        mov              qword ptr [r9 + 40], rdx;            jmp   n19_statement_end_α
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        add              rsp, 16;                             jmp   n20_stmt_mark_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_stmt_mark_bx, @function
n20_stmt_mark_bx:
#=======================================================================================================================
# fill    vec[i] = i * 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n20_stmt_mark_α:        mov              r11, 21
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n21_statement_begin_α
                        .size            n20_stmt_mark_bx, .-n20_stmt_mark_bx
                        .type            n21_statement_begin_bx, @function
n21_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22;                             jmp   n22_var_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n29_stmt_mark_α
                        .size            n21_statement_begin_bx, .-n21_statement_begin_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 23
                        mov              rax, qword ptr [r9 + 16]             # vec
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_var_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              sub              rsp, 16
                        mov              r11, 24
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_var_α
n23_var_β:              mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n21_statement_begin_β
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_var_bx, @function
n24_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              sub              rsp, 16
                        mov              r11, 25
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_lit_integer_α
n24_var_β:              mov              r11, 25
                        add              rsp, 16;                             jmp   n23_var_β
                        .size            n24_var_bx, .-n24_var_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_binop_α
n25_lit_integer_β:      mov              r11, 26
                        add              rsp, 16;                             jmp   n24_var_β
.Llit_integer_α_132_0:  .quad            2
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_binop_bx, @function
n26_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            sub              rsp, 16
                        mov              r11, 27
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_133_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_133_7
.Lbinop_α_133_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_133_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_133_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_133_4
.Lbinop_α_133_3:        movq             xmm0, rsi
.Lbinop_α_133_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_133_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_133_7:                                                              jmp   n27_assign_var_α
.Lbinop_α_133_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_133_240
                        add              rsp, 16;                             jmp   n25_lit_integer_β
.Lbinop_α_133_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n27_assign_var_α
n26_binop_β:            mov              r11, 27
                        add              rsp, 16;                             jmp   n25_lit_integer_β
                        .size            n26_binop_bx, .-n26_binop_bx
                        .type            n27_assign_var_bx, @function
n27_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_135_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_135_0
.Lassign_var_α_135_1:   test             rsi, rsi;                            je    .Lassign_var_α_135_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_135_238
                        add              rsp, 16;                             jmp   n26_binop_β
.Lassign_var_α_135_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n28_statement_end_α
.Lassign_var_α_135_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_135_239
                        add              rsp, 16;                             jmp   n26_binop_β
.Lassign_var_α_135_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_135_240
                        add              rsp, 16;                             jmp   n26_binop_β
.Lassign_var_α_135_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n28_statement_end_α
                        .size            n27_assign_var_bx, .-n27_assign_var_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        add              rsp, 96;                             jmp   n29_stmt_mark_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_stmt_mark_bx, @function
n29_stmt_mark_bx:
#=======================================================================================================================
#         i = LT(i, 500) i + 1                            :S(fill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n29_stmt_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n30_statement_begin_α
                        .size            n29_stmt_mark_bx, .-n29_stmt_mark_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31;                             jmp   n31_var_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n41_stmt_mark_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_lit_integer_α
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_coerce_numeric_α
n32_lit_integer_β:      mov              r11, 33
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
.Llit_integer_α_143_0:  .quad            500
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_coerce_numeric_bx, @function
n33_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 34
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_145_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_145_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_145_0
.Lcoerce_numeric_α_145_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_coerce_numeric_α
.Lcoerce_numeric_α_145_0:
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
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_147_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_147_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_147_0
.Lcoerce_numeric_α_147_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_cmp_test_α
.Lcoerce_numeric_α_147_0:
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_149_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_149_239
                        add              rsp, 16;                             jmp   n34_coerce_numeric_β
.Lcmp_test_α_149_239:                                                         jmp   n36_var_α
.Lcmp_test_α_149_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_149_240
                        add              rsp, 16;                             jmp   n34_coerce_numeric_β
.Lcmp_test_α_149_240:                                                         jmp   n36_var_α
n35_cmp_test_β:         mov              r11, 36
                        add              rsp, 16;                             jmp   n34_coerce_numeric_β
                        .size            n35_cmp_test_bx, .-n35_cmp_test_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_lit_integer_α
n36_var_β:              mov              r11, 37
                        add              rsp, 16;                             jmp   n35_cmp_test_β
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_binop_α
n37_lit_integer_β:      mov              r11, 38
                        add              rsp, 16;                             jmp   n36_var_β
.Llit_integer_α_151_0:  .quad            1
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_binop_bx, @function
n38_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:            sub              rsp, 16
                        mov              r11, 39
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_152_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_152_7
.Lbinop_α_152_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_152_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_152_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_152_4
.Lbinop_α_152_3:        movq             xmm0, rsi
.Lbinop_α_152_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_152_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_152_7:                                                              jmp   n39_assign_α
.Lbinop_α_152_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_152_240
                        add              rsp, 16;                             jmp   n37_lit_integer_β
.Lbinop_α_152_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n39_assign_α
n38_binop_β:            mov              r11, 39
                        add              rsp, 16;                             jmp   n37_lit_integer_β
                        .size            n38_binop_bx, .-n38_binop_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # i
                        mov              qword ptr [r9 + 40], rdx;            jmp   n40_statement_end_α
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        add              rsp, 128;                            jmp   n20_stmt_mark_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_stmt_mark_bx, @function
n41_stmt_mark_bx:
#=======================================================================================================================
#         sum = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n41_stmt_mark_α:        mov              r11, 42
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n42_statement_begin_α
                        .size            n41_stmt_mark_bx, .-n41_stmt_mark_bx
                        .type            n42_statement_begin_bx, @function
n42_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43;                             jmp   n43_lit_integer_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n46_stmt_mark_α
                        .size            n42_statement_begin_bx, .-n42_statement_begin_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_assign_α
.Llit_integer_α_160_0:  .quad            0
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_assign_bx, @function
n44_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # sum
                        mov              qword ptr [r9 + 56], rdx;            jmp   n45_statement_end_α
                        .size            n44_assign_bx, .-n44_assign_bx
                        .type            n45_statement_end_bx, @function
n45_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 46
                        add              rsp, 16;                             jmp   n46_stmt_mark_α
                        .size            n45_statement_end_bx, .-n45_statement_end_bx
                        .type            n46_stmt_mark_bx, @function
n46_stmt_mark_bx:
#=======================================================================================================================
#         i = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n46_stmt_mark_α:        mov              r11, 47
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n47_statement_begin_α
                        .size            n46_stmt_mark_bx, .-n46_stmt_mark_bx
                        .type            n47_statement_begin_bx, @function
n47_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48;                             jmp   n48_lit_integer_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n51_stmt_mark_α
                        .size            n47_statement_begin_bx, .-n47_statement_begin_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_assign_α
.Llit_integer_α_168_0:  .quad            1
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # i
                        mov              qword ptr [r9 + 40], rdx;            jmp   n50_statement_end_α
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        add              rsp, 16;                             jmp   n51_stmt_mark_α
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_stmt_mark_bx, @function
n51_stmt_mark_bx:
#=======================================================================================================================
# read    sum = sum + vec[i]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n51_stmt_mark_α:        mov              r11, 52
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n52_statement_begin_α
                        .size            n51_stmt_mark_bx, .-n51_stmt_mark_bx
                        .type            n52_statement_begin_bx, @function
n52_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 53;                             jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   n60_stmt_mark_α
                        .size            n52_statement_begin_bx, .-n52_statement_begin_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 48]             # sum
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_var_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 16]             # vec
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_var_α
n54_var_β:              mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_subscript_α
n55_var_β:              mov              r11, 56
                        add              rsp, 16;                             jmp   n54_var_β
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_subscript_bx, @function
n56_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        sub              rsp, 16
                        mov              r11, 57
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
                        cmp              al, 104;                             jne   .Lsubscript_α_179_240
                        add              rsp, 16;                             jmp   n55_var_β
.Lsubscript_α_179_240:  mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n57_binop_α
n56_subscript_β:        mov              r11, 57
                        add              rsp, 16;                             jmp   n55_var_β
                        .size            n56_subscript_bx, .-n56_subscript_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              r11, 58
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_180_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_180_7
.Lbinop_α_180_2:        and              edx, 1;                              jz    .Lbinop_α_180_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_180_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_180_4
.Lbinop_α_180_3:        movq             xmm0, rsi
.Lbinop_α_180_4:        cmp              cl, 5;                               je    .Lbinop_α_180_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_180_6
.Lbinop_α_180_5:        movq             xmm1, rdi
.Lbinop_α_180_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_180_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_180_7:                                                              jmp   n58_assign_α
.Lbinop_α_180_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_180_240
                        add              rsp, 16;                             jmp   n56_subscript_β
.Lbinop_α_180_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n58_assign_α
n57_binop_β:            mov              r11, 58
                        add              rsp, 16;                             jmp   n56_subscript_β
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_assign_bx, @function
n58_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # sum
                        mov              qword ptr [r9 + 56], rdx;            jmp   n59_statement_end_α
                        .size            n58_assign_bx, .-n58_assign_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        add              rsp, 80;                             jmp   n60_stmt_mark_α
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_stmt_mark_bx, @function
n60_stmt_mark_bx:
#=======================================================================================================================
#         i = LT(i, 500) i + 1                            :S(read)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n60_stmt_mark_α:        mov              r11, 61
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n61_statement_begin_α
                        .size            n60_stmt_mark_bx, .-n60_stmt_mark_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62;                             jmp   n62_var_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n72_stmt_mark_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_lit_integer_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_coerce_numeric_α
n63_lit_integer_β:      mov              r11, 64
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n61_statement_begin_β
.Llit_integer_α_189_0:  .quad            500
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_coerce_numeric_bx, @function
n64_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 65
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_191_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
.Lcoerce_numeric_α_191_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_coerce_numeric_α
.Lcoerce_numeric_α_191_0:
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
1:                                                                            jmp   n65_coerce_numeric_α
n64_coerce_numeric_β:   mov              r11, 65
                        add              rsp, 16;                             jmp   n63_lit_integer_β
                        .size            n64_coerce_numeric_bx, .-n64_coerce_numeric_bx
                        .type            n65_coerce_numeric_bx, @function
n65_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 66
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_193_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_193_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_193_0
.Lcoerce_numeric_α_193_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_cmp_test_α
.Lcoerce_numeric_α_193_0:
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
1:                                                                            jmp   n66_cmp_test_α
n65_coerce_numeric_β:   mov              r11, 66
                        add              rsp, 16;                             jmp   n64_coerce_numeric_β
                        .size            n65_coerce_numeric_bx, .-n65_coerce_numeric_bx
                        .type            n66_cmp_test_bx, @function
n66_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_cmp_test_α:         sub              rsp, 16
                        mov              r11, 67
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_195_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_195_239
                        add              rsp, 16;                             jmp   n65_coerce_numeric_β
.Lcmp_test_α_195_239:                                                         jmp   n67_var_α
.Lcmp_test_α_195_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_195_240
                        add              rsp, 16;                             jmp   n65_coerce_numeric_β
.Lcmp_test_α_195_240:                                                         jmp   n67_var_α
n66_cmp_test_β:         mov              r11, 67
                        add              rsp, 16;                             jmp   n65_coerce_numeric_β
                        .size            n66_cmp_test_bx, .-n66_cmp_test_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 32]             # i
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_lit_integer_α
n67_var_β:              mov              r11, 68
                        add              rsp, 16;                             jmp   n66_cmp_test_β
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_binop_α
n68_lit_integer_β:      mov              r11, 69
                        add              rsp, 16;                             jmp   n67_var_β
.Llit_integer_α_197_0:  .quad            1
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_binop_bx, @function
n69_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            sub              rsp, 16
                        mov              r11, 70
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_198_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_198_7
.Lbinop_α_198_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_198_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_198_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_198_4
.Lbinop_α_198_3:        movq             xmm0, rsi
.Lbinop_α_198_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_198_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_198_7:                                                              jmp   n70_assign_α
.Lbinop_α_198_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_198_240
                        add              rsp, 16;                             jmp   n68_lit_integer_β
.Lbinop_α_198_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n70_assign_α
n69_binop_β:            mov              r11, 70
                        add              rsp, 16;                             jmp   n68_lit_integer_β
                        .size            n69_binop_bx, .-n69_binop_bx
                        .type            n70_assign_bx, @function
n70_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 71
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # i
                        mov              qword ptr [r9 + 40], rdx;            jmp   n71_statement_end_α
                        .size            n70_assign_bx, .-n70_assign_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 72
                        add              rsp, 128;                            jmp   n51_stmt_mark_α
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_stmt_mark_bx, @function
n72_stmt_mark_bx:
#=======================================================================================================================
#         pass = LT(pass, 20) pass + 1                    :S(build)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n72_stmt_mark_α:        mov              r11, 73
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n73_statement_begin_α
                        .size            n72_stmt_mark_bx, .-n72_stmt_mark_bx
                        .type            n73_statement_begin_bx, @function
n73_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74;                             jmp   n74_var_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n84_stmt_mark_α
                        .size            n73_statement_begin_bx, .-n73_statement_begin_bx
                        .type            n74_var_bx, @function
n74_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              r11, 75
                        mov              rax, qword ptr [r9 + 0]              # pass
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_coerce_numeric_α
n75_lit_integer_β:      mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Llit_integer_α_207_0:  .quad            20
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_coerce_numeric_bx, @function
n76_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 77
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_209_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_209_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_209_0
.Lcoerce_numeric_α_209_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_coerce_numeric_α
.Lcoerce_numeric_α_209_0:
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
1:                                                                            jmp   n77_coerce_numeric_α
n76_coerce_numeric_β:   mov              r11, 77
                        add              rsp, 16;                             jmp   n75_lit_integer_β
                        .size            n76_coerce_numeric_bx, .-n76_coerce_numeric_bx
                        .type            n77_coerce_numeric_bx, @function
n77_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 78
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_211_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_211_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_211_0
.Lcoerce_numeric_α_211_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_cmp_test_α
.Lcoerce_numeric_α_211_0:
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
1:                                                                            jmp   n78_cmp_test_α
n77_coerce_numeric_β:   mov              r11, 78
                        add              rsp, 16;                             jmp   n76_coerce_numeric_β
                        .size            n77_coerce_numeric_bx, .-n77_coerce_numeric_bx
                        .type            n78_cmp_test_bx, @function
n78_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_cmp_test_α:         sub              rsp, 16
                        mov              r11, 79
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_213_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_213_239
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lcmp_test_α_213_239:                                                         jmp   n79_var_α
.Lcmp_test_α_213_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_213_240
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lcmp_test_α_213_240:                                                         jmp   n79_var_α
n78_cmp_test_β:         mov              r11, 79
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
                        .size            n78_cmp_test_bx, .-n78_cmp_test_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 0]              # pass
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
n79_var_β:              mov              r11, 80
                        add              rsp, 16;                             jmp   n78_cmp_test_β
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_binop_α
n80_lit_integer_β:      mov              r11, 81
                        add              rsp, 16;                             jmp   n79_var_β
.Llit_integer_α_215_0:  .quad            1
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_binop_bx, @function
n81_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            sub              rsp, 16
                        mov              r11, 82
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_216_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_216_7
.Lbinop_α_216_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_216_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_216_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_216_4
.Lbinop_α_216_3:        movq             xmm0, rsi
.Lbinop_α_216_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_216_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_216_7:                                                              jmp   n82_assign_α
.Lbinop_α_216_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_216_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lbinop_α_216_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n82_assign_α
n81_binop_β:            mov              r11, 82
                        add              rsp, 16;                             jmp   n80_lit_integer_β
                        .size            n81_binop_bx, .-n81_binop_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # pass
                        mov              qword ptr [r9 + 8], rdx;             jmp   n83_statement_end_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 84
                        add              rsp, 128;                            jmp   n9_stmt_mark_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_stmt_mark_bx, @function
n84_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'sum of 2,4,..,1000 after 20 rebuilds = ' sum
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n84_stmt_mark_α:        mov              r11, 85
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n85_statement_begin_α
                        .size            n84_stmt_mark_bx, .-n84_stmt_mark_bx
                        .type            n85_statement_begin_bx, @function
n85_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 86;                             jmp   n86_lit_string_α
n85_statement_begin_β:  mov              r11, 86;                             jmp   main_γ
                        .size            n85_statement_begin_bx, .-n85_statement_begin_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_var_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          "sum of 2,4,..,1000 after 20 rebuilds = "
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 48]             # sum
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_binop_α
n87_var_β:              mov              r11, 88
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n85_statement_begin_β
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_binop_bx, @function
n88_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            sub              rsp, 16
                        mov              r11, 89
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
1:                                                                            jmp   n89_assign_α
n88_binop_β:            mov              r11, 89
                        add              rsp, 16;                             jmp   n87_var_β
                        .size            n88_binop_bx, .-n88_binop_bx
                        .type            n89_assign_bx, @function
n89_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 90
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_227_0]
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
1:                                                                            jmp   n90_statement_end_α
.Lassign_α_227_0:       .quad            .Lassign_α_227_0_s
.Lassign_α_227_0_s:     .string          "OUTPUT"
                        .size            n89_assign_bx, .-n89_assign_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 91
                        add              rsp, 48;                             jmp   main_γ
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_goto_bx, @function
n91_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:             mov              r11, 92;                             jmp   n9_stmt_mark_α
n91_goto_β:             mov              r11, 92;                             jmp   main_ω
                        .size            n91_goto_bx, .-n91_goto_bx
                        .type            n92_goto_bx, @function
n92_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_goto_α:             mov              r11, 93;                             jmp   n20_stmt_mark_α
n92_goto_β:             mov              r11, 93;                             jmp   main_ω
                        .size            n92_goto_bx, .-n92_goto_bx
                        .type            n93_goto_bx, @function
n93_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_goto_α:             mov              r11, 94;                             jmp   n51_stmt_mark_α
n93_goto_β:             mov              r11, 94;                             jmp   main_ω
                        .size            n93_goto_bx, .-n93_goto_bx
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
                        .quad            3506039770458
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            800
                        .quad            1
                        .quad            879609302220800
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
