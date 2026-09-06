                        .intel_syntax    noprefix
                        .text
                        .file            1 "func_call.sno"
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
                        mov              esi, 6
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
.Lgvan0:                .string          "INC"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "FUNC_CALL"
.Lgvan3:                .string          "R"
.Lgvan4:                .string          "ZI"
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
.Llbln0:                .string          "INC"
.Llbln1:                .string          "INCE"
.Llbln2:                .string          "FUNC_CALL"
.Llbln3:                .string          "ZBL"
.Llbln4:                .string          "FUNC_CALL_END"
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_117_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_117_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_118_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_118_0:  .quad            4
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_119_0:   .quad            .Llit_string_α_119_0_s
.Llit_string_α_119_0_s: .string          "func_call.sno"
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
.Lcall_α_rkfnzd121:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd121]
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
                        cmp              al, 104;                             jne   .Lcall_α_120_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_120_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_124_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_124_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_125_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_125_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_125_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_125_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_128_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_129_0:  .quad            5
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
.Lcall_α_rkfnzd131:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd131]
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
                        cmp              al, 104;                             jne   .Lcall_α_130_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_130_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_134_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_135_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_135_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_135_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_135_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_138_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_139_0:  .quad            6
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
.Lcall_α_rkfnzd141:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd141]
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
                        cmp              al, 104;                             jne   .Lcall_α_140_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_140_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 48;                             jmp   n23_statement_begin_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_144_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_146_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_146_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_146_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_146_0:
                        .quad            10
                        .size            n21_kw_assign_snobol4_bx, .-n21_kw_assign_snobol4_bx
                        .type            n22_statement_end_bx, @function
n22_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 3
                        add              rsp, 96;                             jmp   n23_statement_begin_α
                        .size            n22_statement_end_bx, .-n22_statement_end_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('INC(N)')                                :(INCE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n23_statement_begin_α:  mov              r11, 24
                        mov              r10, 4;                              jmp   n24_define_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n26_lit_integer_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_define_bx, @function
n24_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_define_α:           mov              r11, 25
                        mov              rdi, qword ptr [rip + .Ldefine_α_152_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_152_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + INC_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_152_0]
                        lea              rsi, [rip + INC_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_statement_end_α
n24_define_β:           mov              r11, 25;                             jmp   n23_statement_begin_β
.Ldefine_α_152_0:       .quad            .Ldefine_α_152_0_s
.Ldefine_α_152_0_s:     .string          "INC"
.Ldefine_α_152_1:       .quad            .Ldefine_α_152_1_s
.Ldefine_α_152_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_153_245
#-----------------------------------------------------------------------------------------------------------------------
INC_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # INC
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_153_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_153_41
.Ldefine_α_153_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_153_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_153_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_153_232]
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
.Ldefine_α_153_230:                                                           jmp   .Ldefine_α_153_231
.Ldefine_α_153_232:     .quad            .Ldefine_α_153_232_s
.Ldefine_α_153_232_s:   .string          "INC"
.Ldefine_α_153_231:     lea              rcx, [rip + INC_γ]
                        lea              rax, [rip + INC_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__INC];               jmp   rax
INC_γ:                  mov              rdi, qword ptr [r9 + 0]              # INC
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_153_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_153_110
.Ldefine_α_153_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_153_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_153_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_153_237]
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
.Ldefine_α_153_235:                                                           jmp   .Ldefine_α_153_236
.Ldefine_α_153_237:     .quad            .Ldefine_α_153_237_s
.Ldefine_α_153_237_s:   .string          "INC"
.Ldefine_α_153_236:     pop              rdx
                        pop              rax;                                 jmp   rcx
INC_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # INC
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_153_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_153_180
.Ldefine_α_153_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_153_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_153_245:
                        .size            n24_define_bx, .-n24_define_bx
                        .type            n25_statement_end_bx, @function
n25_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 4;                              jmp   n26_lit_integer_α
                        .size            n25_statement_end_bx, .-n25_statement_end_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#=======================================================================================================================
# INCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_lit_integer_α
.Llit_integer_α_156_0:  .quad            6
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_α
.Llit_integer_α_157_0:  .quad            9
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_call_bx, @function
n28_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             sub              rsp, 16
                        mov              r11, 29
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
                        add              rsp, -16;                            jmp   n35_statement_begin_α
.Lcall_α_158_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_statement_begin_α
n28_call_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n35_statement_begin_α
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30
                        mov              r10, 5;                              jmp   n30_var_α
n29_statement_begin_β:  mov              r11, 30
                        add              rsp, 48;                             jmp   RETURN
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_lit_integer_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_163_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_binop_α
n31_lit_integer_β:      mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Llit_integer_α_163_0:  .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_binop_bx, @function
n32_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              r11, 33
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_164_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_164_7
.Lbinop_α_164_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_164_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_164_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_164_4
.Lbinop_α_164_3:        movq             xmm0, rsi
.Lbinop_α_164_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_164_7:                                                              jmp   n33_assign_α
.Lbinop_α_164_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_164_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lbinop_α_164_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_assign_α
                        .size            n32_binop_bx, .-n32_binop_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # INC
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
                        mov              rdi, qword ptr [rip + .Lassign_α_165_0]
                        .section         .rodata
.Lassign_α_165_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_165_1_s]
                        mov              r8, 9
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
                        pop              rax;                                 jmp   n34_statement_end_α
.Lassign_α_165_0:       .quad            .Lassign_α_165_0_s
.Lassign_α_165_0_s:     .string          "INC"
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 35
                        mov              r10, 5
                        add              rsp, 96;                             jmp   RETURN
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 36
                        mov              r10, 6;                              jmp   n36_statement_end_α
n35_statement_begin_β:  mov              r11, 36
                        add              rsp, 48;                             jmp   n37_statement_begin_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 6
                        add              rsp, 48;                             jmp   n37_statement_begin_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('FUNC_CALL(N)')                          :(FUNC_CALL_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n37_statement_begin_α:  mov              r11, 38
                        mov              r10, 7;                              jmp   n38_define_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n40_lit_integer_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_define_bx, @function
n38_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_define_α:           mov              r11, 39
                        mov              rdi, qword ptr [rip + .Ldefine_α_175_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_175_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FUNC_CALL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_175_0]
                        lea              rsi, [rip + FUNC_CALL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_statement_end_α
n38_define_β:           mov              r11, 39;                             jmp   n37_statement_begin_β
.Ldefine_α_175_0:       .quad            .Ldefine_α_175_0_s
.Ldefine_α_175_0_s:     .string          "FUNC_CALL"
.Ldefine_α_175_1:       .quad            .Ldefine_α_175_1_s
.Ldefine_α_175_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_176_245
#-----------------------------------------------------------------------------------------------------------------------
FUNC_CALL_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # FUNC_CALL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_176_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_176_41
.Ldefine_α_176_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_176_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_176_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_176_232]
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
.Ldefine_α_176_230:                                                           jmp   .Ldefine_α_176_231
.Ldefine_α_176_232:     .quad            .Ldefine_α_176_232_s
.Ldefine_α_176_232_s:   .string          "FUNC_CALL"
.Ldefine_α_176_231:     lea              rcx, [rip + FUNC_CALL_γ]
                        lea              rax, [rip + FUNC_CALL_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__FUNC_CALL];         jmp   rax
FUNC_CALL_γ:            mov              rdi, qword ptr [r9 + 32]             # FUNC_CALL
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_176_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_176_110
.Ldefine_α_176_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_176_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_176_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_176_237]
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
.Ldefine_α_176_235:                                                           jmp   .Ldefine_α_176_236
.Ldefine_α_176_237:     .quad            .Ldefine_α_176_237_s
.Ldefine_α_176_237_s:   .string          "FUNC_CALL"
.Ldefine_α_176_236:     pop              rdx
                        pop              rax;                                 jmp   rcx
FUNC_CALL_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # FUNC_CALL
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_176_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_176_180
.Ldefine_α_176_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_176_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_176_245:
                        .size            n38_define_bx, .-n38_define_bx
                        .type            n39_statement_end_bx, @function
n39_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        mov              r10, 7;                              jmp   n40_lit_integer_α
                        .size            n39_statement_end_bx, .-n39_statement_end_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#=======================================================================================================================
# FUNC_CALL_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_integer_α
.Llit_integer_α_179_0:  .quad            13
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
.Llit_integer_α_180_0:  .quad            16
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
.Lcall_α_rkfnzd182:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd182]
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
                        cmp              al, 104;                             jne   .Lcall_α_181_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n83_statement_begin_α
.Lcall_α_181_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_statement_begin_α
n42_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n83_statement_begin_α
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 8;                              jmp   n44_lit_integer_α
n43_statement_begin_β:  mov              r11, 44
                        add              rsp, 48;                             jmp   n47_lit_integer_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Llit_integer_α_185_0:  .quad            0
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # R
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
                        mov              rdi, qword ptr [rip + .Lassign_α_186_0]
                        .section         .rodata
.Lassign_α_186_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_186_1_s]
                        mov              r8, 16
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
                        pop              rax;                                 jmp   n46_statement_end_α
.Lassign_α_186_0:       .quad            .Lassign_α_186_0_s
.Lassign_α_186_0_s:     .string          "R"
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 8
                        add              rsp, 64;                             jmp   n47_lit_integer_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n47_lit_integer_α:      sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_lit_integer_α
.Llit_integer_α_189_0:  .quad            9
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_call_α
.Llit_integer_α_190_0:  .quad            12
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             sub              rsp, 16
                        mov              r11, 50
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
.Lcall_α_rkfnzd192:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd192]
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
                        cmp              al, 104;                             jne   .Lcall_α_191_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
.Lcall_α_191_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_statement_begin_α
n49_call_β:             mov              r11, 50
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51
                        mov              r10, 9;                              jmp   n51_lit_integer_α
n50_statement_begin_β:  mov              r11, 51
                        add              rsp, 48;                             jmp   n54_lit_integer_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_195_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_assign_α
.Llit_integer_α_195_0:  .quad            1
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_assign_bx, @function
n52_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_196_0]
                        .section         .rodata
.Lassign_α_196_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_196_1_s]
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
                        pop              rax;                                 jmp   n53_statement_end_α
.Lassign_α_196_0:       .quad            .Lassign_α_196_0_s
.Lassign_α_196_0_s:     .string          "ZI"
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        mov              r10, 9
                        add              rsp, 64;                             jmp   n54_lit_integer_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#=======================================================================================================================
# ZBL     R = INC(R)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n54_lit_integer_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_lit_integer_α
.Llit_integer_α_199_0:  .quad            10
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_call_α
.Llit_integer_α_200_0:  .quad            13
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_call_bx, @function
n56_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             sub              rsp, 16
                        mov              r11, 57
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
.Lcall_α_rkfnzd202:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd202]
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
                        cmp              al, 104;                             jne   .Lcall_α_201_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n57_statement_begin_α
.Lcall_α_201_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_statement_begin_α
n56_call_β:             mov              r11, 57
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n57_statement_begin_α
                        .size            n56_call_bx, .-n56_call_bx
                        .type            n57_statement_begin_bx, @function
n57_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 10;                             jmp   n58_var_α
n57_statement_begin_β:  mov              r11, 58
                        add              rsp, 48;                             jmp   n62_lit_integer_α
                        .size            n57_statement_begin_bx, .-n57_statement_begin_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 48]             # R
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_call_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             sub              rsp, 16
                        mov              r11, 60
                        lea              rcx, [rip + .Lcall_α_sig207z]
                        lea              rax, [rip + INC_α];                  jmp   rax
.Lcall_α_sig207z:       .quad            1
                        .quad            .Lcall_α_207_2
                        .quad            .Lcall_α_207_2
                        .quad            16
.Lcall_α_207_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_207_29
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
.Lcall_α_207_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_207_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
.Lcall_α_207_240:                                                             jmp   n60_assign_α
n59_call_β:             mov              r11, 60;                             jmp   n57_statement_begin_β
.Lcall_β_207_0:         .quad            .Lcall_β_207_0_s
.Lcall_β_207_0_s:       .string          "INC"
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # R
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
                        mov              rdi, qword ptr [rip + .Lassign_α_208_0]
                        .section         .rodata
.Lassign_α_208_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_208_1_s]
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
                        pop              rax;                                 jmp   n61_statement_end_α
.Lassign_α_208_0:       .quad            .Lassign_α_208_0_s
.Lassign_α_208_0_s:     .string          "R"
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 10
                        add              rsp, 80;                             jmp   n62_lit_integer_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_integer_α
.Llit_integer_α_211_0:  .quad            11
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
.Llit_integer_α_212_0:  .quad            14
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
.Lcall_α_rkfnzd214:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd214]
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
                        cmp              al, 104;                             jne   .Lcall_α_213_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
.Lcall_α_213_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_statement_begin_α
n64_call_β:             mov              r11, 65
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
                        .size            n64_call_bx, .-n64_call_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 11;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66
                        add              rsp, 48;                             jmp   n76_lit_integer_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 64]             # ZI
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_var_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_coerce_numeric_α
n67_var_β:              mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_coerce_numeric_bx, @function
n68_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 69
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_220_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
.Lcoerce_numeric_α_220_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_coerce_numeric_α
.Lcoerce_numeric_α_220_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_coerce_numeric_α
n68_coerce_numeric_β:   mov              r11, 69
                        add              rsp, 16;                             jmp   n67_var_β
                        .size            n68_coerce_numeric_bx, .-n68_coerce_numeric_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 70
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_222_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
.Lcoerce_numeric_α_222_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_cmp_test_α
.Lcoerce_numeric_α_222_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_cmp_test_α
n69_coerce_numeric_β:   mov              r11, 70
                        add              rsp, 16;                             jmp   n68_coerce_numeric_β
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_cmp_test_bx, @function
n70_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_cmp_test_α:         sub              rsp, 16
                        mov              r11, 71
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_224_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_224_239
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lcmp_test_α_224_239:                                                         jmp   n71_var_α
.Lcmp_test_α_224_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_224_240
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lcmp_test_α_224_240:                                                         jmp   n71_var_α
n70_cmp_test_β:         mov              r11, 71
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
                        .size            n70_cmp_test_bx, .-n70_cmp_test_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # ZI
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
n71_var_β:              mov              r11, 72
                        add              rsp, 16;                             jmp   n70_cmp_test_β
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      mov              r11, 73
                        add              rsp, 16;                             jmp   n71_var_β
.Llit_integer_α_226_0:  .quad            1
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_227_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_227_7
.Lbinop_α_227_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_227_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_227_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_227_4
.Lbinop_α_227_3:        movq             xmm0, rsi
.Lbinop_α_227_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_227_7:                                                              jmp   n74_assign_α
.Lbinop_α_227_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_227_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lbinop_α_227_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_228_0]
                        .section         .rodata
.Lassign_α_228_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_228_1_s]
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
                        pop              rax;                                 jmp   n75_statement_end_α
.Lassign_α_228_0:       .quad            .Lassign_α_228_0_s
.Lassign_α_228_0_s:     .string          "ZI"
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 11
                        add              rsp, 176;                            jmp   n54_lit_integer_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#=======================================================================================================================
#         FUNC_CALL = R                                   :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n76_lit_integer_α:      sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_lit_integer_α
.Llit_integer_α_231_0:  .quad            12
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Llit_integer_α_232_0:  .quad            15
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        mov              r11, 79
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
.Lcall_α_rkfnzd234:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd234]
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
                        cmp              al, 104;                             jne   .Lcall_α_233_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_statement_begin_α
.Lcall_α_233_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_statement_begin_α
n78_call_β:             mov              r11, 79
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_statement_begin_α
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_statement_begin_bx, @function
n79_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 80
                        mov              r10, 12;                             jmp   n80_var_α
n79_statement_begin_β:  mov              r11, 80
                        add              rsp, 48;                             jmp   RETURN
                        .size            n79_statement_begin_bx, .-n79_statement_begin_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 48]             # R
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_assign_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # FUNC_CALL
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
                        mov              rdi, qword ptr [rip + .Lassign_α_238_0]
                        .section         .rodata
.Lassign_α_238_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_238_1_s]
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
                        pop              rax;                                 jmp   n82_statement_end_α
.Lassign_α_238_0:       .quad            .Lassign_α_238_0_s
.Lassign_α_238_0_s:     .string          "FUNC_CALL"
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        mov              r10, 12
                        add              rsp, 64;                             jmp   RETURN
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_statement_begin_bx, @function
n83_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 84
                        mov              r10, 13;                             jmp   n84_statement_end_α
n83_statement_begin_β:  mov              r11, 84
                        add              rsp, 48;                             jmp   n85_lit_integer_α
                        .size            n83_statement_begin_bx, .-n83_statement_begin_bx
                        .type            n84_statement_end_bx, @function
n84_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 85
                        mov              r10, 13
                        add              rsp, 48;                             jmp   n85_lit_integer_α
                        .size            n84_statement_end_bx, .-n84_statement_end_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'INC(0) = ' INC(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_lit_integer_α
.Llit_integer_α_245_0:  .quad            14
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_call_α
.Llit_integer_α_246_0:  .quad            18
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             sub              rsp, 16
                        mov              r11, 88
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
.Lcall_α_rkfnzd248:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd248]
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
                        cmp              al, 104;                             jne   .Lcall_α_247_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n88_statement_begin_α
.Lcall_α_247_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_statement_begin_α
n87_call_β:             mov              r11, 88
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n88_statement_begin_α
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89
                        mov              r10, 14;                             jmp   n89_lit_string_α
n88_statement_begin_β:  mov              r11, 89
                        add              rsp, 48;                             jmp   n95_lit_integer_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_lit_integer_α
.Llit_string_α_251_0:   .quad            .Llit_string_α_251_0_s
.Llit_string_α_251_0_s: .string          "INC(0) = "
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_lit_integer_bx, @function
n90_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_α
n90_lit_integer_β:      mov              r11, 91
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n88_statement_begin_β
.Llit_integer_α_252_0:  .quad            0
                        .size            n90_lit_integer_bx, .-n90_lit_integer_bx
                        .type            n91_call_bx, @function
n91_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             sub              rsp, 16
                        mov              r11, 92
                        lea              rcx, [rip + .Lcall_α_sig254z]
                        lea              rax, [rip + INC_α];                  jmp   rax
.Lcall_α_sig254z:       .quad            1
                        .quad            .Lcall_α_254_2
                        .quad            .Lcall_α_254_2
                        .quad            16
.Lcall_α_254_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_254_29
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
.Lcall_α_254_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_254_240
                        add              rsp, 16;                             jmp   n90_lit_integer_β
.Lcall_α_254_240:                                                             jmp   n92_binop_α
n91_call_β:             mov              r11, 92;                             jmp   n90_lit_integer_β
.Lcall_β_254_0:         .quad            .Lcall_β_254_0_s
.Lcall_β_254_0_s:       .string          "INC"
                        .size            n91_call_bx, .-n91_call_bx
                        .type            n92_binop_bx, @function
n92_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            sub              rsp, 16
                        mov              r11, 93
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_assign_α
                        .size            n92_binop_bx, .-n92_binop_bx
                        .type            n93_assign_bx, @function
n93_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 94
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
                        mov              rdi, qword ptr [rip + .Lassign_α_256_0]
                        .section         .rodata
.Lassign_α_256_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_256_1_s]
                        mov              r8, 18
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_256_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_statement_end_α
.Lassign_α_256_0:       .quad            .Lassign_α_256_0_s
.Lassign_α_256_0_s:     .string          "OUTPUT"
                        .size            n93_assign_bx, .-n93_assign_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 95
                        mov              r10, 14
                        add              rsp, 112;                            jmp   n95_lit_integer_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '1000 chained calls = ' FUNC_CALL(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_lit_integer_α
.Llit_integer_α_259_0:  .quad            15
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_260_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_call_α
.Llit_integer_α_260_0:  .quad            19
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 98
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
.Lcall_α_rkfnzd262:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd262]
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
                        cmp              al, 104;                             jne   .Lcall_α_261_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n98_statement_begin_α
.Lcall_α_261_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_statement_begin_α
n97_call_β:             mov              r11, 98
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n98_statement_begin_α
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_statement_begin_bx, @function
n98_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:  mov              r11, 99
                        mov              r10, 15;                             jmp   n99_lit_string_α
n98_statement_begin_β:  mov              r11, 99
                        add              rsp, 48;                             jmp   main_γ
                        .size            n98_statement_begin_bx, .-n98_statement_begin_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Llit_string_α_265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_lit_integer_α
.Llit_string_α_265_0:   .quad            .Llit_string_α_265_0_s
.Llit_string_α_265_0_s: .string          "1000 chained calls = "
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_call_α
n100_lit_integer_β:     mov              r11, 101
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
.Llit_integer_α_266_0:  .quad            1000
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            sub              rsp, 16
                        mov              r11, 102
                        lea              rcx, [rip + .Lcall_α_sig268z]
                        lea              rax, [rip + FUNC_CALL_α];            jmp   rax
.Lcall_α_sig268z:       .quad            1
                        .quad            .Lcall_α_268_2
                        .quad            .Lcall_α_268_2
                        .quad            16
.Lcall_α_268_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_268_29
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
.Lcall_α_268_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_268_240
                        add              rsp, 16;                             jmp   n100_lit_integer_β
.Lcall_α_268_240:                                                             jmp   n102_binop_α
n101_call_β:            mov              r11, 102;                            jmp   n100_lit_integer_β
.Lcall_β_268_0:         .quad            .Lcall_β_268_0_s
.Lcall_β_268_0_s:       .string          "FUNC_CALL"
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_binop_bx, @function
n102_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              r11, 103
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_assign_α
                        .size            n102_binop_bx, .-n102_binop_bx
                        .type            n103_assign_bx, @function
n103_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
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
                        mov              rdi, qword ptr [rip + .Lassign_α_270_0]
                        .section         .rodata
.Lassign_α_270_1_s:     .string          "func_call.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_270_1_s]
                        mov              r8, 19
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_270_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_statement_end_α
.Lassign_α_270_0:       .quad            .Lassign_α_270_0_s
.Lassign_α_270_0_s:     .string          "OUTPUT"
                        .size            n103_assign_bx, .-n103_assign_bx
                        .type            n104_statement_end_bx, @function
n104_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 15
                        add              rsp, 112;                            jmp   main_γ
                        .size            n104_statement_end_bx, .-n104_statement_end_bx
                        .type            n105_goto_bx, @function
n105_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_goto_α:            mov              r11, 106;                            jmp   LBL__INC
n105_goto_β:            mov              r11, 106;                            jmp   main_ω
                        .size            n105_goto_bx, .-n105_goto_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#=======================================================================================================================
# INC     INC = N + 1                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
LBL__INC:               sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__INC_α_274_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_lit_integer_α
.LLBL__INC_α_274_0:     .quad            5
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_call_α
.Llit_integer_α_275_0:  .quad            8
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        mov              r11, 109
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
.Lcall_α_rkfnzd277:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd277]
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
                        cmp              al, 104;                             jne   .Lcall_α_276_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n29_statement_begin_α
.Lcall_α_276_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_statement_begin_α
n108_call_β:            mov              r11, 109
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n29_statement_begin_α
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_goto_bx, @function
n109_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_goto_α:            mov              r11, 110;                            jmp   n26_lit_integer_α
n109_goto_β:            mov              r11, 110;                            jmp   main_ω
                        .size            n109_goto_bx, .-n109_goto_bx
                        .type            n110_goto_bx, @function
n110_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_goto_α:            mov              r11, 111;                            jmp   LBL__FUNC_CALL
n110_goto_β:            mov              r11, 111;                            jmp   main_ω
                        .size            n110_goto_bx, .-n110_goto_bx
                        .type            n111_lit_integer_bx, @function
n111_lit_integer_bx:
#=======================================================================================================================
# FUNC_CALL  R = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
LBL__FUNC_CALL:         sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__FUNC_CALL_α_280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_lit_integer_α
.LLBL__FUNC_CALL_α_280_0:
                        .quad            8
                        .size            n111_lit_integer_bx, .-n111_lit_integer_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_call_α
.Llit_integer_α_281_0:  .quad            11
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            sub              rsp, 16
                        mov              r11, 114
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
.Lcall_α_rkfnzd283:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd283]
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
                        cmp              al, 104;                             jne   .Lcall_α_282_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
.Lcall_α_282_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_statement_begin_α
n113_call_β:            mov              r11, 114
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
                        .size            n113_call_bx, .-n113_call_bx
                        .type            n114_goto_bx, @function
n114_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_goto_α:            mov              r11, 115;                            jmp   n54_lit_integer_α
n114_goto_β:            mov              r11, 115;                            jmp   main_ω
                        .size            n114_goto_bx, .-n114_goto_bx
                        .type            n115_goto_bx, @function
n115_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_goto_α:            mov              r11, 116;                            jmp   n40_lit_integer_α
n115_goto_β:            mov              r11, 116;                            jmp   main_ω
                        .size            n115_goto_bx, .-n115_goto_bx
                        .type            n116_define_bx, @function
n116_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 117
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
                        .size            n116_define_bx, .-n116_define_bx
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
.Lstartup_pname0:       .string          "LBL__INC"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__INC
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1920
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__FUNC_CALL"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__FUNC_CALL
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1920
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala2:               .string          "INC"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            INC_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + INC_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "FUNC_CALL"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            FUNC_CALL_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + FUNC_CALL_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
