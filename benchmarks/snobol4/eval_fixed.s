                        .intel_syntax    noprefix
                        .text
                        .file            1 "eval_fixed.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
                        call             rt_label_table_install@PLT
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
.Lgvan0:                .string          "EVAL_FIXED"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "X"
.Lgvan3:                .string          "ZI"
.Lgvan4:                .string          "R"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "EVAL_FIXED"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "EVAL_FIXED_END"
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_97_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_97_0:   .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_98_0:   .quad            4
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_99_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_99_0:    .quad            .Llit_string_α_99_0_s
.Llit_string_α_99_0_s:  .string          "eval_fixed.sno"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_call_bx, @function
n3_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
                        mov              r11, 4
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lcall_α_rkfnzd101:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd101]
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
                        cmp              al, 104;                             jne   .Lcall_α_100_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_100_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_begin_α
n3_call_β:              mov              r11, 4
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
                        .size            n3_call_bx, .-n3_call_bx
                        .type            n4_statement_begin_bx, @function
n4_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 1;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5
                        add              rsp, 64;                             jmp   n8_lit_integer_α
                        .size            n4_statement_begin_bx, .-n4_statement_begin_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_104_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_104_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_105_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_105_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_105_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_105_0:
                        .quad            1
                        .size            n6_kw_assign_snobol4_bx, .-n6_kw_assign_snobol4_bx
                        .type            n7_statement_end_bx, @function
n7_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n8_lit_integer_α
                        .size            n7_statement_end_bx, .-n7_statement_end_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n8_lit_integer_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_108_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_109_0:  .quad            5
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_call_bx, @function
n10_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             sub              rsp, 16
                        mov              r11, 11
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd111:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd111]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_110_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_110_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_statement_begin_α
n10_call_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
                        .size            n10_call_bx, .-n10_call_bx
                        .type            n11_statement_begin_bx, @function
n11_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 12
                        mov              r10, 2;                              jmp   n12_lit_integer_α
n11_statement_begin_β:  mov              r11, 12
                        add              rsp, 48;                             jmp   n15_lit_integer_α
                        .size            n11_statement_begin_bx, .-n11_statement_begin_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_114_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_115_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_115_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_115_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_115_0:
                        .quad            0
                        .size            n13_kw_assign_snobol4_bx, .-n13_kw_assign_snobol4_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n15_lit_integer_α
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_118_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_118_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_119_0:  .quad            6
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             sub              rsp, 16
                        mov              r11, 18
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd121:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd121]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_120_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_120_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_statement_begin_α
n17_call_β:             mov              r11, 18
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 3;                              jmp   n19_lit_integer_α
n18_statement_begin_β:  mov              r11, 19
                        add              rsp, 48;                             jmp   n23_lit_integer_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_124_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_124_0:  .quad            1
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_unop_bx, @function
n20_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_unop_α:             sub              rsp, 16
                        mov              r11, 21
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_kw_assign_snobol4_α
n20_unop_β:             mov              r11, 21
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
                        .size            n20_unop_bx, .-n20_unop_bx
                        .type            n21_kw_assign_snobol4_bx, @function
n21_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_126_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_126_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_126_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_126_0:
                        .quad            10
                        .size            n21_kw_assign_snobol4_bx, .-n21_kw_assign_snobol4_bx
                        .type            n22_statement_end_bx, @function
n22_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 3
                        add              rsp, 96;                             jmp   n23_lit_integer_α
                        .size            n22_statement_end_bx, .-n22_statement_end_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#=======================================================================================================================
#         X = 10
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
.Llit_integer_α_129_0:  .quad            4
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Llit_integer_α_130_0:  .quad            7
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             sub              rsp, 16
                        mov              r11, 26
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd132:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd132]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_131_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n26_statement_begin_α
.Lcall_α_131_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_statement_begin_α
n25_call_β:             mov              r11, 26
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n26_statement_begin_α
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 4;                              jmp   n27_lit_integer_α
n26_statement_begin_β:  mov              r11, 27
                        add              rsp, 48;                             jmp   n30_statement_begin_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_135_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_assign_α
.Llit_integer_α_135_0:  .quad            10
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_assign_bx, @function
n28_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # X
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
                        mov              rdi, qword ptr [rip + .Lassign_α_136_0]
                        .section         .rodata
.Lassign_α_136_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_136_1_s]
                        mov              r8, 7
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
                        pop              rax;                                 jmp   n29_statement_end_α
.Lassign_α_136_0:       .quad            .Lassign_α_136_0_s
.Lassign_α_136_0_s:     .string          "X"
                        .size            n28_assign_bx, .-n28_assign_bx
                        .type            n29_statement_end_bx, @function
n29_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 30
                        mov              r10, 4
                        add              rsp, 64;                             jmp   n30_statement_begin_α
                        .size            n29_statement_end_bx, .-n29_statement_end_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('EVAL_FIXED(N)')                         :(EVAL_FIXED_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n30_statement_begin_α:  mov              r11, 31
                        mov              r10, 5;                              jmp   n31_define_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n33_lit_integer_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_define_bx, @function
n31_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_define_α:           mov              r11, 32
                        mov              rdi, qword ptr [rip + .Ldefine_α_142_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_142_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + EVAL_FIXED_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_142_0]
                        lea              rsi, [rip + EVAL_FIXED_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_statement_end_α
n31_define_β:           mov              r11, 32;                             jmp   n30_statement_begin_β
.Ldefine_α_142_0:       .quad            .Ldefine_α_142_0_s
.Ldefine_α_142_0_s:     .string          "EVAL_FIXED"
.Ldefine_α_142_1:       .quad            .Ldefine_α_142_1_s
.Ldefine_α_142_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_143_245
#-----------------------------------------------------------------------------------------------------------------------
EVAL_FIXED_α:           sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # EVAL_FIXED
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_143_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_143_41
.Ldefine_α_143_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_143_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_143_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_143_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
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
.Ldefine_α_143_230:                                                           jmp   .Ldefine_α_143_231
.Ldefine_α_143_232:     .quad            .Ldefine_α_143_232_s
.Ldefine_α_143_232_s:   .string          "EVAL_FIXED"
.Ldefine_α_143_231:     lea              rcx, [rip + EVAL_FIXED_γ]
                        lea              rax, [rip + EVAL_FIXED_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__EVAL_FIXED];        jmp   rax
EVAL_FIXED_γ:           mov              rdi, qword ptr [r9 + 0]              # EVAL_FIXED
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_143_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_143_110
.Ldefine_α_143_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_143_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_143_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_143_237]
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
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_143_235:                                                           jmp   .Ldefine_α_143_236
.Ldefine_α_143_237:     .quad            .Ldefine_α_143_237_s
.Ldefine_α_143_237_s:   .string          "EVAL_FIXED"
.Ldefine_α_143_236:     pop              rdx
                        pop              rax;                                 jmp   rcx
EVAL_FIXED_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # EVAL_FIXED
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_143_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_143_180
.Ldefine_α_143_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_143_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_143_245:
                        .size            n31_define_bx, .-n31_define_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 33
                        mov              r10, 5;                              jmp   n33_lit_integer_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#=======================================================================================================================
# EVAL_FIXED_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
.Llit_integer_α_146_0:  .quad            10
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_call_α
.Llit_integer_α_147_0:  .quad            13
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_call_bx, @function
n35_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             sub              rsp, 16
                        mov              r11, 36
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd149:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd149]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_148_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n69_statement_begin_α
.Lcall_α_148_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_statement_begin_α
n35_call_β:             mov              r11, 36
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n69_statement_begin_α
                        .size            n35_call_bx, .-n35_call_bx
                        .type            n36_statement_begin_bx, @function
n36_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 6;                              jmp   n37_lit_integer_α
n36_statement_begin_β:  mov              r11, 37
                        add              rsp, 48;                             jmp   n40_lit_integer_α
                        .size            n36_statement_begin_bx, .-n36_statement_begin_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_assign_α
.Llit_integer_α_152_0:  .quad            1
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_153_0]
                        .section         .rodata
.Lassign_α_153_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_153_1_s]
                        mov              r8, 13
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
                        pop              rax;                                 jmp   n39_statement_end_α
.Lassign_α_153_0:       .quad            .Lassign_α_153_0_s
.Lassign_α_153_0_s:     .string          "ZI"
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_statement_end_bx, @function
n39_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        mov              r10, 6
                        add              rsp, 64;                             jmp   n40_lit_integer_α
                        .size            n39_statement_end_bx, .-n39_statement_end_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#=======================================================================================================================
# ZBL     R = EVAL('X + 1')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_integer_α
.Llit_integer_α_156_0:  .quad            7
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
.Llit_integer_α_157_0:  .quad            10
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
                        mov              r11, 43
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd159:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd159]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_158_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
.Lcall_α_158_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_statement_begin_α
n42_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 7;                              jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 44
                        add              rsp, 48;                             jmp   n48_lit_integer_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_lit_string_bx, @function
n44_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
.Llit_string_α_162_0:   .quad            .Llit_string_α_162_0_s
.Llit_string_α_162_0_s: .string          "X + 1"
                        .size            n44_lit_string_bx, .-n44_lit_string_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        mov              r11, 46
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd164:     .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd164]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262169
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_163_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lcall_α_163_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_assign_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # R
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
                        mov              rdi, qword ptr [rip + .Lassign_α_165_0]
                        .section         .rodata
.Lassign_α_165_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_165_1_s]
                        mov              r8, 10
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
                        pop              rax;                                 jmp   n47_statement_end_α
.Lassign_α_165_0:       .quad            .Lassign_α_165_0_s
.Lassign_α_165_0_s:     .string          "R"
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        mov              r10, 7
                        add              rsp, 80;                             jmp   n48_lit_integer_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_integer_α
.Llit_integer_α_168_0:  .quad            8
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
.Llit_integer_α_169_0:  .quad            11
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 51
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd171:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd171]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_170_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n51_statement_begin_α
.Lcall_α_170_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_statement_begin_α
n50_call_β:             mov              r11, 51
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n51_statement_begin_α
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52
                        mov              r10, 8;                              jmp   n52_var_α
n51_statement_begin_β:  mov              r11, 52
                        add              rsp, 48;                             jmp   n62_lit_integer_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_var_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_coerce_numeric_α
n53_var_β:              mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_coerce_numeric_bx, @function
n54_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 55
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_177_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_177_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_177_0
.Lcoerce_numeric_α_177_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_coerce_numeric_α
.Lcoerce_numeric_α_177_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_coerce_numeric_α
n54_coerce_numeric_β:   mov              r11, 55
                        add              rsp, 16;                             jmp   n53_var_β
                        .size            n54_coerce_numeric_bx, .-n54_coerce_numeric_bx
                        .type            n55_coerce_numeric_bx, @function
n55_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 56
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_179_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_179_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_179_0
.Lcoerce_numeric_α_179_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_cmp_test_α
.Lcoerce_numeric_α_179_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_cmp_test_α
n55_coerce_numeric_β:   mov              r11, 56
                        add              rsp, 16;                             jmp   n54_coerce_numeric_β
                        .size            n55_coerce_numeric_bx, .-n55_coerce_numeric_bx
                        .type            n56_cmp_test_bx, @function
n56_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_cmp_test_α:         sub              rsp, 16
                        mov              r11, 57
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_181_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_181_239
                        add              rsp, 16;                             jmp   n55_coerce_numeric_β
.Lcmp_test_α_181_239:                                                         jmp   n57_var_α
.Lcmp_test_α_181_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_181_240
                        add              rsp, 16;                             jmp   n55_coerce_numeric_β
.Lcmp_test_α_181_240:                                                         jmp   n57_var_α
n56_cmp_test_β:         mov              r11, 57
                        add              rsp, 16;                             jmp   n55_coerce_numeric_β
                        .size            n56_cmp_test_bx, .-n56_cmp_test_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_lit_integer_α
n57_var_β:              mov              r11, 58
                        add              rsp, 16;                             jmp   n56_cmp_test_β
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
n58_lit_integer_β:      mov              r11, 59
                        add              rsp, 16;                             jmp   n57_var_β
.Llit_integer_α_183_0:  .quad            1
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_184_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_184_7
.Lbinop_α_184_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_184_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_184_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_184_4
.Lbinop_α_184_3:        movq             xmm0, rsi
.Lbinop_α_184_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_184_7:                                                              jmp   n60_assign_α
.Lbinop_α_184_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_184_240
                        add              rsp, 16;                             jmp   n58_lit_integer_β
.Lbinop_α_184_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_185_0]
                        .section         .rodata
.Lassign_α_185_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_185_1_s]
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
                        pop              rax;                                 jmp   n61_statement_end_α
.Lassign_α_185_0:       .quad            .Lassign_α_185_0_s
.Lassign_α_185_0_s:     .string          "ZI"
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 8
                        add              rsp, 176;                            jmp   n40_lit_integer_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#=======================================================================================================================
#         EVAL_FIXED = R                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_integer_α
.Llit_integer_α_188_0:  .quad            9
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
.Llit_integer_α_189_0:  .quad            12
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_call_bx, @function
n64_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             sub              rsp, 16
                        mov              r11, 65
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd191:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd191]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_190_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
.Lcall_α_190_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_statement_begin_α
n64_call_β:             mov              r11, 65
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
                        .size            n64_call_bx, .-n64_call_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 9;                              jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66
                        add              rsp, 48;                             jmp   RETURN
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 64]             # R
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EVAL_FIXED
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
                        mov              rdi, qword ptr [rip + .Lassign_α_195_0]
                        .section         .rodata
.Lassign_α_195_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_195_1_s]
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
                        pop              rax;                                 jmp   n68_statement_end_α
.Lassign_α_195_0:       .quad            .Lassign_α_195_0_s
.Lassign_α_195_0_s:     .string          "EVAL_FIXED"
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 9
                        add              rsp, 64;                             jmp   RETURN
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 10;                             jmp   n70_statement_end_α
n69_statement_begin_β:  mov              r11, 70
                        add              rsp, 48;                             jmp   n71_lit_integer_α
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 71
                        mov              r10, 10
                        add              rsp, 48;                             jmp   n71_lit_integer_α
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'X = ' X
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_202_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_lit_integer_α
.Llit_integer_α_202_0:  .quad            11
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_call_α
.Llit_integer_α_203_0:  .quad            15
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_call_bx, @function
n73_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             sub              rsp, 16
                        mov              r11, 74
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd205:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd205]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_204_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n74_statement_begin_α
.Lcall_α_204_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_statement_begin_α
n73_call_β:             mov              r11, 74
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n74_statement_begin_α
                        .size            n73_call_bx, .-n73_call_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:  mov              r11, 75
                        mov              r10, 11;                             jmp   n75_lit_string_α
n74_statement_begin_β:  mov              r11, 75
                        add              rsp, 48;                             jmp   n80_lit_integer_α
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_lit_string_bx, @function
n75_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_var_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          "X = "
                        .size            n75_lit_string_bx, .-n75_lit_string_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_binop_α
n76_var_β:              mov              r11, 77
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n74_statement_begin_β
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_binop_bx, @function
n77_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            sub              rsp, 16
                        mov              r11, 78
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_assign_α
                        .size            n77_binop_bx, .-n77_binop_bx
                        .type            n78_assign_bx, @function
n78_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 79
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
                        mov              rdi, qword ptr [rip + .Lassign_α_211_0]
                        .section         .rodata
.Lassign_α_211_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_211_1_s]
                        mov              r8, 15
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_211_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_statement_end_α
.Lassign_α_211_0:       .quad            .Lassign_α_211_0_s
.Lassign_α_211_0_s:     .string          "OUTPUT"
                        .size            n78_assign_bx, .-n78_assign_bx
                        .type            n79_statement_end_bx, @function
n79_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 80
                        mov              r10, 11
                        add              rsp, 96;                             jmp   n80_lit_integer_α
                        .size            n79_statement_end_bx, .-n79_statement_end_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = "EVAL('X + 1') = " EVAL_FIXED(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_lit_integer_α
.Llit_integer_α_214_0:  .quad            12
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_call_α
.Llit_integer_α_215_0:  .quad            16
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             sub              rsp, 16
                        mov              r11, 83
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd217:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd217]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_216_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n83_statement_begin_α
.Lcall_α_216_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_statement_begin_α
n82_call_β:             mov              r11, 83
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n83_statement_begin_α
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_statement_begin_bx, @function
n83_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 84
                        mov              r10, 12;                             jmp   n84_lit_string_α
n83_statement_begin_β:  mov              r11, 84
                        add              rsp, 48;                             jmp   main_γ
                        .size            n83_statement_begin_bx, .-n83_statement_begin_bx
                        .type            n84_lit_string_bx, @function
n84_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_integer_α
.Llit_string_α_220_0:   .quad            .Llit_string_α_220_0_s
.Llit_string_α_220_0_s: .string          "EVAL('X + 1') = "
                        .size            n84_lit_string_bx, .-n84_lit_string_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_α
n85_lit_integer_β:      mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Llit_integer_α_221_0:  .quad            1000
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             sub              rsp, 16
                        mov              r11, 87
                        lea              rcx, [rip + .Lcall_α_sig223z]
                        lea              rax, [rip + EVAL_FIXED_α];           jmp   rax
.Lcall_α_sig223z:       .quad            1
                        .quad            .Lcall_α_223_2
                        .quad            .Lcall_α_223_2
                        .quad            16
.Lcall_α_223_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_223_29
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
.Lcall_α_223_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_223_240
                        add              rsp, 16;                             jmp   n85_lit_integer_β
.Lcall_α_223_240:                                                             jmp   n87_binop_α
n86_call_β:             mov              r11, 87;                             jmp   n85_lit_integer_β
.Lcall_β_223_0:         .quad            .Lcall_β_223_0_s
.Lcall_β_223_0_s:       .string          "EVAL_FIXED"
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_binop_bx, @function
n87_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:            sub              rsp, 16
                        mov              r11, 88
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_assign_α
                        .size            n87_binop_bx, .-n87_binop_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 89
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
                        mov              rdi, qword ptr [rip + .Lassign_α_225_0]
                        .section         .rodata
.Lassign_α_225_1_s:     .string          "eval_fixed.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_225_1_s]
                        mov              r8, 16
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_225_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_statement_end_α
.Lassign_α_225_0:       .quad            .Lassign_α_225_0_s
.Lassign_α_225_0_s:     .string          "OUTPUT"
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 12
                        add              rsp, 112;                            jmp   main_γ
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_goto_bx, @function
n90_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_goto_α:             mov              r11, 91;                             jmp   LBL__EVAL_FIXED
n90_goto_β:             mov              r11, 91;                             jmp   main_ω
                        .size            n90_goto_bx, .-n90_goto_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#=======================================================================================================================
# EVAL_FIXED  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
LBL__EVAL_FIXED:        sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__EVAL_FIXED_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_lit_integer_α
.LLBL__EVAL_FIXED_α_229_0:
                        .quad            6
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_call_α
.Llit_integer_α_230_0:  .quad            9
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
                        mov              r11, 94
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd232:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd232]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_231_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_statement_begin_α
.Lcall_α_231_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_statement_begin_α
n93_call_β:             mov              r11, 94
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_statement_begin_α
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_goto_bx, @function
n94_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_goto_α:             mov              r11, 95;                             jmp   n40_lit_integer_α
n94_goto_β:             mov              r11, 95;                             jmp   main_ω
                        .size            n94_goto_bx, .-n94_goto_bx
                        .type            n95_goto_bx, @function
n95_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_goto_α:             mov              r11, 96;                             jmp   n33_lit_integer_α
n95_goto_β:             mov              r11, 96;                             jmp   main_ω
                        .size            n95_goto_bx, .-n95_goto_bx
                        .type            n96_define_bx, @function
n96_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 97
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
                        .size            n96_define_bx, .-n96_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__EVAL_FIXED"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__EVAL_FIXED
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1632
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "EVAL_FIXED"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            EVAL_FIXED_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + EVAL_FIXED_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
