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
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_184_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_185_0:  .quad            4
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_186_0:   .quad            .Llit_string_α_186_0_s
.Llit_string_α_186_0_s: .string          "var_access.sno"
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
.Lcall_α_rkfnzd188:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd188]
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
                        cmp              al, 104;                             jne   .Lcall_α_187_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_187_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_191_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_192_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_192_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_192_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_192_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_195_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_195_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_196_0:  .quad            5
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
.Lcall_α_rkfnzd198:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd198]
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
                        cmp              al, 104;                             jne   .Lcall_α_197_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_197_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_201_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_202_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_202_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_202_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_202_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_205_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_206_0:  .quad            6
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
.Lcall_α_rkfnzd208:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd208]
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
                        cmp              al, 104;                             jne   .Lcall_α_207_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_207_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_211_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_213_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_213_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_213_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_213_0:
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
#         DEFINE('VAR_ACCESS(N)')                         :(VAR_ACCESS_END)
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_219_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_219_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + VAR_ACCESS_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_219_0]
                        lea              rsi, [rip + VAR_ACCESS_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_statement_end_α
n24_define_β:           mov              r11, 25;                             jmp   n23_statement_begin_β
.Ldefine_α_219_0:       .quad            .Ldefine_α_219_0_s
.Ldefine_α_219_0_s:     .string          "VAR_ACCESS"
.Ldefine_α_219_1:       .quad            .Ldefine_α_219_1_s
.Ldefine_α_219_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_220_245
#-----------------------------------------------------------------------------------------------------------------------
VAR_ACCESS_α:           sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # VAR_ACCESS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_220_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_220_41
.Ldefine_α_220_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_220_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_220_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_220_232]
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
.Ldefine_α_220_230:                                                           jmp   .Ldefine_α_220_231
.Ldefine_α_220_232:     .quad            .Ldefine_α_220_232_s
.Ldefine_α_220_232_s:   .string          "VAR_ACCESS"
.Ldefine_α_220_231:     lea              rcx, [rip + VAR_ACCESS_γ]
                        lea              rax, [rip + VAR_ACCESS_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__VAR_ACCESS];        jmp   rax
VAR_ACCESS_γ:           mov              rdi, qword ptr [r9 + 0]              # VAR_ACCESS
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_220_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_220_110
.Ldefine_α_220_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_220_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_220_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_220_237]
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
.Ldefine_α_220_235:                                                           jmp   .Ldefine_α_220_236
.Ldefine_α_220_237:     .quad            .Ldefine_α_220_237_s
.Ldefine_α_220_237_s:   .string          "VAR_ACCESS"
.Ldefine_α_220_236:     pop              rdx
                        pop              rax;                                 jmp   rcx
VAR_ACCESS_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # VAR_ACCESS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_220_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_220_180
.Ldefine_α_220_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_220_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_220_245:
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
# VAR_ACCESS_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_lit_integer_α
.Llit_integer_α_223_0:  .quad            18
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_α
.Llit_integer_α_224_0:  .quad            21
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
.Lcall_α_rkfnzd226:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd226]
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
                        cmp              al, 104;                             jne   .Lcall_α_225_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n134_statement_begin_α
.Lcall_α_225_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_statement_begin_α
n28_call_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n134_statement_begin_α
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30
                        mov              r10, 5;                              jmp   n30_lit_integer_α
n29_statement_begin_β:  mov              r11, 30
                        add              rsp, 48;                             jmp   n33_lit_integer_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Llit_integer_α_229_0:  .quad            1
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
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
                        mov              rdi, qword ptr [rip + .Lassign_α_230_0]
                        .section         .rodata
.Lassign_α_230_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_230_1_s]
                        mov              r8, 21
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
                        pop              rax;                                 jmp   n32_statement_end_α
.Lassign_α_230_0:       .quad            .Lassign_α_230_0_s
.Lassign_α_230_0_s:     .string          "A"
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 33
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n33_lit_integer_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#=======================================================================================================================
#         B = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
.Llit_integer_α_233_0:  .quad            6
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_call_α
.Llit_integer_α_234_0:  .quad            9
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
.Lcall_α_rkfnzd236:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd236]
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
                        cmp              al, 104;                             jne   .Lcall_α_235_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_statement_begin_α
.Lcall_α_235_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_statement_begin_α
n35_call_β:             mov              r11, 36
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_assign_α
.Llit_integer_α_239_0:  .quad            2
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # B
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
                        mov              rdi, qword ptr [rip + .Lassign_α_240_0]
                        .section         .rodata
.Lassign_α_240_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_240_1_s]
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
                        pop              rax;                                 jmp   n39_statement_end_α
.Lassign_α_240_0:       .quad            .Lassign_α_240_0_s
.Lassign_α_240_0_s:     .string          "B"
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
#         C = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_integer_α
.Llit_integer_α_243_0:  .quad            7
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
.Llit_integer_α_244_0:  .quad            10
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
.Lcall_α_rkfnzd246:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd246]
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
                        cmp              al, 104;                             jne   .Lcall_α_245_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
.Lcall_α_245_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_statement_begin_α
n42_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 7;                              jmp   n44_lit_integer_α
n43_statement_begin_β:  mov              r11, 44
                        add              rsp, 48;                             jmp   n47_lit_integer_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Llit_integer_α_249_0:  .quad            0
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # C
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
                        mov              rdi, qword ptr [rip + .Lassign_α_250_0]
                        .section         .rodata
.Lassign_α_250_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_250_1_s]
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
                        pop              rax;                                 jmp   n46_statement_end_α
.Lassign_α_250_0:       .quad            .Lassign_α_250_0_s
.Lassign_α_250_0_s:     .string          "C"
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 7
                        add              rsp, 64;                             jmp   n47_lit_integer_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#=======================================================================================================================
#         D = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n47_lit_integer_α:      sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_lit_integer_α
.Llit_integer_α_253_0:  .quad            8
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_call_α
.Llit_integer_α_254_0:  .quad            11
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
.Lcall_α_rkfnzd256:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd256]
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
                        cmp              al, 104;                             jne   .Lcall_α_255_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
.Lcall_α_255_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_statement_begin_α
n49_call_β:             mov              r11, 50
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n50_statement_begin_α
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51
                        mov              r10, 8;                              jmp   n51_lit_integer_α
n50_statement_begin_β:  mov              r11, 51
                        add              rsp, 48;                             jmp   n54_lit_integer_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_assign_α
.Llit_integer_α_259_0:  .quad            0
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_assign_bx, @function
n52_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # D
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
                        mov              rdi, qword ptr [rip + .Lassign_α_260_0]
                        .section         .rodata
.Lassign_α_260_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_260_1_s]
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
                        pop              rax;                                 jmp   n53_statement_end_α
.Lassign_α_260_0:       .quad            .Lassign_α_260_0_s
.Lassign_α_260_0_s:     .string          "D"
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        mov              r10, 8
                        add              rsp, 64;                             jmp   n54_lit_integer_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#=======================================================================================================================
#         E = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n54_lit_integer_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_lit_integer_α
.Llit_integer_α_263_0:  .quad            9
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_call_α
.Llit_integer_α_264_0:  .quad            12
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
.Lcall_α_rkfnzd266:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd266]
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
                        cmp              al, 104;                             jne   .Lcall_α_265_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n57_statement_begin_α
.Lcall_α_265_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_statement_begin_α
n56_call_β:             mov              r11, 57
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n57_statement_begin_α
                        .size            n56_call_bx, .-n56_call_bx
                        .type            n57_statement_begin_bx, @function
n57_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 9;                              jmp   n58_lit_integer_α
n57_statement_begin_β:  mov              r11, 58
                        add              rsp, 48;                             jmp   n61_lit_integer_α
                        .size            n57_statement_begin_bx, .-n57_statement_begin_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Llit_integer_α_269_0:  .quad            0
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # E
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
                        mov              rdi, qword ptr [rip + .Lassign_α_270_0]
                        .section         .rodata
.Lassign_α_270_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_270_1_s]
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
                        pop              rax;                                 jmp   n60_statement_end_α
.Lassign_α_270_0:       .quad            .Lassign_α_270_0_s
.Lassign_α_270_0_s:     .string          "E"
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 9
                        add              rsp, 64;                             jmp   n61_lit_integer_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_lit_integer_α
.Llit_integer_α_273_0:  .quad            10
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_274_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_call_α
.Llit_integer_α_274_0:  .quad            13
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             sub              rsp, 16
                        mov              r11, 64
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
.Lcall_α_rkfnzd276:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd276]
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
                        cmp              al, 104;                             jne   .Lcall_α_275_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n64_statement_begin_α
.Lcall_α_275_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_statement_begin_α
n63_call_β:             mov              r11, 64
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n64_statement_begin_α
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65
                        mov              r10, 10;                             jmp   n65_lit_integer_α
n64_statement_begin_β:  mov              r11, 65
                        add              rsp, 48;                             jmp   n68_lit_integer_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_assign_α
.Llit_integer_α_279_0:  .quad            1
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_assign_bx, @function
n66_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_280_0]
                        .section         .rodata
.Lassign_α_280_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_280_1_s]
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
                        pop              rax;                                 jmp   n67_statement_end_α
.Lassign_α_280_0:       .quad            .Lassign_α_280_0_s
.Lassign_α_280_0_s:     .string          "ZI"
                        .size            n66_assign_bx, .-n66_assign_bx
                        .type            n67_statement_end_bx, @function
n67_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 68
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n68_lit_integer_α
                        .size            n67_statement_end_bx, .-n67_statement_end_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#=======================================================================================================================
# ZBL     A = A + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_lit_integer_α
.Llit_integer_α_283_0:  .quad            11
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_call_α
.Llit_integer_α_284_0:  .quad            14
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_call_bx, @function
n70_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:             sub              rsp, 16
                        mov              r11, 71
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
.Lcall_α_rkfnzd286:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd286]
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
                        cmp              al, 104;                             jne   .Lcall_α_285_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n71_statement_begin_α
.Lcall_α_285_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_statement_begin_α
n70_call_β:             mov              r11, 71
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n71_statement_begin_α
                        .size            n70_call_bx, .-n70_call_bx
                        .type            n71_statement_begin_bx, @function
n71_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 72
                        mov              r10, 11;                             jmp   n72_var_α
n71_statement_begin_β:  mov              r11, 72
                        add              rsp, 48;                             jmp   n77_lit_integer_α
                        .size            n71_statement_begin_bx, .-n71_statement_begin_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_lit_integer_α
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_lit_integer_bx, @function
n73_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_binop_α
n73_lit_integer_β:      mov              r11, 74
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n71_statement_begin_β
.Llit_integer_α_290_0:  .quad            1
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_binop_bx, @function
n74_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 75
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_291_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_291_7
.Lbinop_α_291_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_291_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_291_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_291_4
.Lbinop_α_291_3:        movq             xmm0, rsi
.Lbinop_α_291_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_291_7:                                                              jmp   n75_assign_α
.Lbinop_α_291_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_291_240
                        add              rsp, 16;                             jmp   n73_lit_integer_β
.Lbinop_α_291_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_assign_α
                        .size            n74_binop_bx, .-n74_binop_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 76
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
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
                        mov              rdi, qword ptr [rip + .Lassign_α_292_0]
                        .section         .rodata
.Lassign_α_292_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_292_1_s]
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
                        pop              rax;                                 jmp   n76_statement_end_α
.Lassign_α_292_0:       .quad            .Lassign_α_292_0_s
.Lassign_α_292_0_s:     .string          "A"
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_statement_end_bx, @function
n76_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 77
                        mov              r10, 11
                        add              rsp, 96;                             jmp   n77_lit_integer_α
                        .size            n76_statement_end_bx, .-n76_statement_end_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#=======================================================================================================================
#         B = B + 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_lit_integer_α
.Llit_integer_α_295_0:  .quad            12
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_lit_integer_bx, @function
n78_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_call_α
.Llit_integer_α_296_0:  .quad            15
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_call_bx, @function
n79_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        mov              r11, 80
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
.Lcall_α_rkfnzd298:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd298]
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
                        cmp              al, 104;                             jne   .Lcall_α_297_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n80_statement_begin_α
.Lcall_α_297_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_statement_begin_α
n79_call_β:             mov              r11, 80
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n80_statement_begin_α
                        .size            n79_call_bx, .-n79_call_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 81
                        mov              r10, 12;                             jmp   n81_var_α
n80_statement_begin_β:  mov              r11, 81
                        add              rsp, 48;                             jmp   n86_lit_integer_α
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_integer_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_binop_α
n82_lit_integer_β:      mov              r11, 83
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Llit_integer_α_302_0:  .quad            2
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              r11, 84
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_303_2
                        add              rax, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_303_7
.Lbinop_α_303_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_303_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_303_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_303_4
.Lbinop_α_303_3:        movq             xmm0, rsi
.Lbinop_α_303_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_303_7:                                                              jmp   n84_assign_α
.Lbinop_α_303_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_303_240
                        add              rsp, 16;                             jmp   n82_lit_integer_β
.Lbinop_α_303_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_assign_α
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_assign_bx, @function
n84_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 85
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # B
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
                        mov              rdi, qword ptr [rip + .Lassign_α_304_0]
                        .section         .rodata
.Lassign_α_304_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_304_1_s]
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
                        pop              rax;                                 jmp   n85_statement_end_α
.Lassign_α_304_0:       .quad            .Lassign_α_304_0_s
.Lassign_α_304_0_s:     .string          "B"
                        .size            n84_assign_bx, .-n84_assign_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86
                        mov              r10, 12
                        add              rsp, 96;                             jmp   n86_lit_integer_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#=======================================================================================================================
#         C = A + B
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_lit_integer_α
.Llit_integer_α_307_0:  .quad            13
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_308_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_call_α
.Llit_integer_α_308_0:  .quad            16
                        .size            n87_lit_integer_bx, .-n87_lit_integer_bx
                        .type            n88_call_bx, @function
n88_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:             sub              rsp, 16
                        mov              r11, 89
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
.Lcall_α_rkfnzd310:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd310]
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
                        cmp              al, 104;                             jne   .Lcall_α_309_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n89_statement_begin_α
.Lcall_α_309_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_statement_begin_α
n88_call_β:             mov              r11, 89
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n89_statement_begin_α
                        .size            n88_call_bx, .-n88_call_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90
                        mov              r10, 13;                             jmp   n90_var_α
n89_statement_begin_β:  mov              r11, 90
                        add              rsp, 48;                             jmp   n95_lit_integer_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_var_α
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              r11, 92
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_binop_α
n91_var_β:              mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_binop_bx, @function
n92_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            sub              rsp, 16
                        mov              r11, 93
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_315_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_315_7
.Lbinop_α_315_2:        and              edx, 1;                              jz    .Lbinop_α_315_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_315_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_315_4
.Lbinop_α_315_3:        movq             xmm0, rsi
.Lbinop_α_315_4:        cmp              cl, 5;                               je    .Lbinop_α_315_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_315_6
.Lbinop_α_315_5:        movq             xmm1, rdi
.Lbinop_α_315_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_315_7:                                                              jmp   n93_assign_α
.Lbinop_α_315_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_315_240
                        add              rsp, 16;                             jmp   n91_var_β
.Lbinop_α_315_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_assign_α
                        .size            n92_binop_bx, .-n92_binop_bx
                        .type            n93_assign_bx, @function
n93_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # C
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
                        mov              rdi, qword ptr [rip + .Lassign_α_316_0]
                        .section         .rodata
.Lassign_α_316_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_316_1_s]
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
                        pop              rax;                                 jmp   n94_statement_end_α
.Lassign_α_316_0:       .quad            .Lassign_α_316_0_s
.Lassign_α_316_0_s:     .string          "C"
                        .size            n93_assign_bx, .-n93_assign_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 95
                        mov              r10, 13
                        add              rsp, 96;                             jmp   n95_lit_integer_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#=======================================================================================================================
#         D = C + A
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_319_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_lit_integer_α
.Llit_integer_α_319_0:  .quad            14
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_320_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_call_α
.Llit_integer_α_320_0:  .quad            17
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
.Lcall_α_rkfnzd322:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd322]
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
                        cmp              al, 104;                             jne   .Lcall_α_321_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n98_statement_begin_α
.Lcall_α_321_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_statement_begin_α
n97_call_β:             mov              r11, 98
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n98_statement_begin_α
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_statement_begin_bx, @function
n98_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:  mov              r11, 99
                        mov              r10, 14;                             jmp   n99_var_α
n98_statement_begin_β:  mov              r11, 99
                        add              rsp, 48;                             jmp   n104_lit_integer_α
                        .size            n98_statement_begin_bx, .-n98_statement_begin_bx
                        .type            n99_var_bx, @function
n99_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 64]             # C
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_var_α
                        .size            n99_var_bx, .-n99_var_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_binop_α
n100_var_β:             mov              r11, 101
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_binop_bx, @function
n101_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:           sub              rsp, 16
                        mov              r11, 102
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_327_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_327_7
.Lbinop_α_327_2:        and              edx, 1;                              jz    .Lbinop_α_327_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_327_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_327_4
.Lbinop_α_327_3:        movq             xmm0, rsi
.Lbinop_α_327_4:        cmp              cl, 5;                               je    .Lbinop_α_327_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_327_6
.Lbinop_α_327_5:        movq             xmm1, rdi
.Lbinop_α_327_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_327_7:                                                              jmp   n102_assign_α
.Lbinop_α_327_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_327_240
                        add              rsp, 16;                             jmp   n100_var_β
.Lbinop_α_327_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
                        .size            n101_binop_bx, .-n101_binop_bx
                        .type            n102_assign_bx, @function
n102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 103
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # D
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
                        mov              rdi, qword ptr [rip + .Lassign_α_328_0]
                        .section         .rodata
.Lassign_α_328_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_328_1_s]
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
                        pop              rax;                                 jmp   n103_statement_end_α
.Lassign_α_328_0:       .quad            .Lassign_α_328_0_s
.Lassign_α_328_0_s:     .string          "D"
                        .size            n102_assign_bx, .-n102_assign_bx
                        .type            n103_statement_end_bx, @function
n103_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 104
                        mov              r10, 14
                        add              rsp, 96;                             jmp   n104_lit_integer_α
                        .size            n103_statement_end_bx, .-n103_statement_end_bx
                        .type            n104_lit_integer_bx, @function
n104_lit_integer_bx:
#=======================================================================================================================
#         E = D + B
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n104_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_lit_integer_α
.Llit_integer_α_331_0:  .quad            15
                        .size            n104_lit_integer_bx, .-n104_lit_integer_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_call_α
.Llit_integer_α_332_0:  .quad            18
                        .size            n105_lit_integer_bx, .-n105_lit_integer_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        mov              r11, 107
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
.Lcall_α_rkfnzd334:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd334]
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
                        cmp              al, 104;                             jne   .Lcall_α_333_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n107_statement_begin_α
.Lcall_α_333_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_statement_begin_α
n106_call_β:            mov              r11, 107
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n107_statement_begin_α
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 108
                        mov              r10, 15;                             jmp   n108_var_α
n107_statement_begin_β: mov              r11, 108
                        add              rsp, 48;                             jmp   n113_lit_integer_α
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_var_bx, @function
n108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              r11, 109
                        mov              rax, qword ptr [r9 + 80]             # D
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_var_α
                        .size            n108_var_bx, .-n108_var_bx
                        .type            n109_var_bx, @function
n109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_binop_α
n109_var_β:             mov              r11, 110
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
                        .size            n109_var_bx, .-n109_var_bx
                        .type            n110_binop_bx, @function
n110_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:           sub              rsp, 16
                        mov              r11, 111
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_339_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_339_7
.Lbinop_α_339_2:        and              edx, 1;                              jz    .Lbinop_α_339_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_339_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_339_4
.Lbinop_α_339_3:        movq             xmm0, rsi
.Lbinop_α_339_4:        cmp              cl, 5;                               je    .Lbinop_α_339_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_339_6
.Lbinop_α_339_5:        movq             xmm1, rdi
.Lbinop_α_339_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_339_7:                                                              jmp   n111_assign_α
.Lbinop_α_339_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_339_240
                        add              rsp, 16;                             jmp   n109_var_β
.Lbinop_α_339_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_assign_α
                        .size            n110_binop_bx, .-n110_binop_bx
                        .type            n111_assign_bx, @function
n111_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              r11, 112
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # E
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
                        mov              rdi, qword ptr [rip + .Lassign_α_340_0]
                        .section         .rodata
.Lassign_α_340_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_340_1_s]
                        mov              r8, 18
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
                        pop              rax;                                 jmp   n112_statement_end_α
.Lassign_α_340_0:       .quad            .Lassign_α_340_0_s
.Lassign_α_340_0_s:     .string          "E"
                        .size            n111_assign_bx, .-n111_assign_bx
                        .type            n112_statement_end_bx, @function
n112_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   mov              r11, 113
                        mov              r10, 15
                        add              rsp, 96;                             jmp   n113_lit_integer_α
                        .size            n112_statement_end_bx, .-n112_statement_end_bx
                        .type            n113_lit_integer_bx, @function
n113_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n113_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_lit_integer_α
.Llit_integer_α_343_0:  .quad            16
                        .size            n113_lit_integer_bx, .-n113_lit_integer_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_call_α
.Llit_integer_α_344_0:  .quad            19
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_call_bx, @function
n115_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        mov              r11, 116
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
.Lcall_α_rkfnzd346:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd346]
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
                        cmp              al, 104;                             jne   .Lcall_α_345_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n116_statement_begin_α
.Lcall_α_345_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_statement_begin_α
n115_call_β:            mov              r11, 116
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n116_statement_begin_α
                        .size            n115_call_bx, .-n115_call_bx
                        .type            n116_statement_begin_bx, @function
n116_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α: mov              r11, 117
                        mov              r10, 16;                             jmp   n117_var_α
n116_statement_begin_β: mov              r11, 117
                        add              rsp, 48;                             jmp   n127_lit_integer_α
                        .size            n116_statement_begin_bx, .-n116_statement_begin_bx
                        .type            n117_var_bx, @function
n117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
                        .size            n117_var_bx, .-n117_var_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_coerce_numeric_α
n118_var_β:             mov              r11, 119
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n116_statement_begin_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_coerce_numeric_bx, @function
n119_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_352_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_352_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_352_0
.Lcoerce_numeric_α_352_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
.Lcoerce_numeric_α_352_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_coerce_numeric_α
n119_coerce_numeric_β:  mov              r11, 120
                        add              rsp, 16;                             jmp   n118_var_β
                        .size            n119_coerce_numeric_bx, .-n119_coerce_numeric_bx
                        .type            n120_coerce_numeric_bx, @function
n120_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 121
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_354_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_354_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_354_0
.Lcoerce_numeric_α_354_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_cmp_test_α
.Lcoerce_numeric_α_354_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_cmp_test_α
n120_coerce_numeric_β:  mov              r11, 121
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
                        .size            n120_coerce_numeric_bx, .-n120_coerce_numeric_bx
                        .type            n121_cmp_test_bx, @function
n121_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_cmp_test_α:        sub              rsp, 16
                        mov              r11, 122
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_356_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_356_239
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
.Lcmp_test_α_356_239:                                                         jmp   n122_var_α
.Lcmp_test_α_356_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_356_240
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
.Lcmp_test_α_356_240:                                                         jmp   n122_var_α
n121_cmp_test_β:        mov              r11, 122
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
                        .size            n121_cmp_test_bx, .-n121_cmp_test_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_lit_integer_α
n122_var_β:             mov              r11, 123
                        add              rsp, 16;                             jmp   n121_cmp_test_β
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_lit_integer_bx, @function
n123_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_binop_α
n123_lit_integer_β:     mov              r11, 124
                        add              rsp, 16;                             jmp   n122_var_β
.Llit_integer_α_358_0:  .quad            1
                        .size            n123_lit_integer_bx, .-n123_lit_integer_bx
                        .type            n124_binop_bx, @function
n124_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
                        mov              r11, 125
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_359_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_359_7
.Lbinop_α_359_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_359_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_359_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_359_4
.Lbinop_α_359_3:        movq             xmm0, rsi
.Lbinop_α_359_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_359_7:                                                              jmp   n125_assign_α
.Lbinop_α_359_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_359_240
                        add              rsp, 16;                             jmp   n123_lit_integer_β
.Lbinop_α_359_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_assign_α
                        .size            n124_binop_bx, .-n124_binop_bx
                        .type            n125_assign_bx, @function
n125_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
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
                        mov              rdi, qword ptr [rip + .Lassign_α_360_0]
                        .section         .rodata
.Lassign_α_360_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_360_1_s]
                        mov              r8, 19
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
                        pop              rax;                                 jmp   n126_statement_end_α
.Lassign_α_360_0:       .quad            .Lassign_α_360_0_s
.Lassign_α_360_0_s:     .string          "ZI"
                        .size            n125_assign_bx, .-n125_assign_bx
                        .type            n126_statement_end_bx, @function
n126_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 127
                        mov              r10, 16
                        add              rsp, 176;                            jmp   n68_lit_integer_α
                        .size            n126_statement_end_bx, .-n126_statement_end_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#=======================================================================================================================
#         VAR_ACCESS = E                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_363_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_lit_integer_α
.Llit_integer_α_363_0:  .quad            17
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_364_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_call_α
.Llit_integer_α_364_0:  .quad            20
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_call_bx, @function
n129_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:            sub              rsp, 16
                        mov              r11, 130
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
.Lcall_α_rkfnzd366:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd366]
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
                        cmp              al, 104;                             jne   .Lcall_α_365_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n130_statement_begin_α
.Lcall_α_365_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_statement_begin_α
n129_call_β:            mov              r11, 130
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n130_statement_begin_α
                        .size            n129_call_bx, .-n129_call_bx
                        .type            n130_statement_begin_bx, @function
n130_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 131
                        mov              r10, 17;                             jmp   n131_var_α
n130_statement_begin_β: mov              r11, 131
                        add              rsp, 48;                             jmp   RETURN
                        .size            n130_statement_begin_bx, .-n130_statement_begin_bx
                        .type            n131_var_bx, @function
n131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 96]             # E
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_assign_α
                        .size            n131_var_bx, .-n131_var_bx
                        .type            n132_assign_bx, @function
n132_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # VAR_ACCESS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_370_0]
                        .section         .rodata
.Lassign_α_370_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_370_1_s]
                        mov              r8, 20
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
                        pop              rax;                                 jmp   n133_statement_end_α
.Lassign_α_370_0:       .quad            .Lassign_α_370_0_s
.Lassign_α_370_0_s:     .string          "VAR_ACCESS"
                        .size            n132_assign_bx, .-n132_assign_bx
                        .type            n133_statement_end_bx, @function
n133_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   mov              r11, 134
                        mov              r10, 17
                        add              rsp, 64;                             jmp   RETURN
                        .size            n133_statement_end_bx, .-n133_statement_end_bx
                        .type            n134_statement_begin_bx, @function
n134_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α: mov              r11, 135
                        mov              r10, 18;                             jmp   n135_statement_end_α
n134_statement_begin_β: mov              r11, 135
                        add              rsp, 48;                             jmp   n136_lit_integer_α
                        .size            n134_statement_begin_bx, .-n134_statement_begin_bx
                        .type            n135_statement_end_bx, @function
n135_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        mov              r10, 18
                        add              rsp, 48;                             jmp   n136_lit_integer_α
                        .size            n135_statement_end_bx, .-n135_statement_end_bx
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'E after 1 step    = ' VAR_ACCESS(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n136_lit_integer_α:     sub              rsp, 16
                        mov              r11, 137
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_377_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_lit_integer_α
.Llit_integer_α_377_0:  .quad            19
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_lit_integer_bx, @function
n137_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_call_α
.Llit_integer_α_378_0:  .quad            23
                        .size            n137_lit_integer_bx, .-n137_lit_integer_bx
                        .type            n138_call_bx, @function
n138_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:            sub              rsp, 16
                        mov              r11, 139
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
.Lcall_α_rkfnzd380:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd380]
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
                        cmp              al, 104;                             jne   .Lcall_α_379_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n139_statement_begin_α
.Lcall_α_379_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_statement_begin_α
n138_call_β:            mov              r11, 139
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n139_statement_begin_α
                        .size            n138_call_bx, .-n138_call_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 140
                        mov              r10, 19;                             jmp   n140_lit_string_α
n139_statement_begin_β: mov              r11, 140
                        add              rsp, 48;                             jmp   n146_lit_integer_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_lit_string_bx, @function
n140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_lit_integer_α
.Llit_string_α_383_0:   .quad            .Llit_string_α_383_0_s
.Llit_string_α_383_0_s: .string          "E after 1 step    = "
                        .size            n140_lit_string_bx, .-n140_lit_string_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_call_α
n141_lit_integer_β:     mov              r11, 142
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
.Llit_integer_α_384_0:  .quad            1
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        mov              r11, 143
                        lea              rcx, [rip + .Lcall_α_sig386z]
                        lea              rax, [rip + VAR_ACCESS_α];           jmp   rax
.Lcall_α_sig386z:       .quad            1
                        .quad            .Lcall_α_386_2
                        .quad            .Lcall_α_386_2
                        .quad            16
.Lcall_α_386_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_386_29
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
.Lcall_α_386_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_386_240
                        add              rsp, 16;                             jmp   n141_lit_integer_β
.Lcall_α_386_240:                                                             jmp   n143_binop_α
n142_call_β:            mov              r11, 143;                            jmp   n141_lit_integer_β
.Lcall_β_386_0:         .quad            .Lcall_β_386_0_s
.Lcall_β_386_0_s:       .string          "VAR_ACCESS"
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_binop_bx, @function
n143_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           sub              rsp, 16
                        mov              r11, 144
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_assign_α
                        .size            n143_binop_bx, .-n143_binop_bx
                        .type            n144_assign_bx, @function
n144_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              r11, 145
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
                        mov              rdi, qword ptr [rip + .Lassign_α_388_0]
                        .section         .rodata
.Lassign_α_388_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_388_1_s]
                        mov              r8, 23
                        mov              r9, 19
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
                        mov              rdi, qword ptr [rip + .Lassign_α_388_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_statement_end_α
.Lassign_α_388_0:       .quad            .Lassign_α_388_0_s
.Lassign_α_388_0_s:     .string          "OUTPUT"
                        .size            n144_assign_bx, .-n144_assign_bx
                        .type            n145_statement_end_bx, @function
n145_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 146
                        mov              r10, 19
                        add              rsp, 112;                            jmp   n146_lit_integer_α
                        .size            n145_statement_end_bx, .-n145_statement_end_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'E after 1000 steps = ' VAR_ACCESS(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n146_lit_integer_α:     sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_391_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_lit_integer_α
.Llit_integer_α_391_0:  .quad            20
                        .size            n146_lit_integer_bx, .-n146_lit_integer_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_call_α
.Llit_integer_α_392_0:  .quad            24
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_call_bx, @function
n148_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            sub              rsp, 16
                        mov              r11, 149
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
.Lcall_α_rkfnzd394:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd394]
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
                        cmp              al, 104;                             jne   .Lcall_α_393_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n149_statement_begin_α
.Lcall_α_393_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_statement_begin_α
n148_call_β:            mov              r11, 149
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n149_statement_begin_α
                        .size            n148_call_bx, .-n148_call_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α: mov              r11, 150
                        mov              r10, 20;                             jmp   n150_lit_string_α
n149_statement_begin_β: mov              r11, 150
                        add              rsp, 48;                             jmp   n156_lit_integer_α
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_lit_string_bx, @function
n150_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Llit_string_α_397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_lit_integer_α
.Llit_string_α_397_0:   .quad            .Llit_string_α_397_0_s
.Llit_string_α_397_0_s: .string          "E after 1000 steps = "
                        .size            n150_lit_string_bx, .-n150_lit_string_bx
                        .type            n151_lit_integer_bx, @function
n151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     sub              rsp, 16
                        mov              r11, 152
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_398_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_call_α
n151_lit_integer_β:     mov              r11, 152
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
.Llit_integer_α_398_0:  .quad            1000
                        .size            n151_lit_integer_bx, .-n151_lit_integer_bx
                        .type            n152_call_bx, @function
n152_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_α:            sub              rsp, 16
                        mov              r11, 153
                        lea              rcx, [rip + .Lcall_α_sig400z]
                        lea              rax, [rip + VAR_ACCESS_α];           jmp   rax
.Lcall_α_sig400z:       .quad            1
                        .quad            .Lcall_α_400_2
                        .quad            .Lcall_α_400_2
                        .quad            16
.Lcall_α_400_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_400_29
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
.Lcall_α_400_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_400_240
                        add              rsp, 16;                             jmp   n151_lit_integer_β
.Lcall_α_400_240:                                                             jmp   n153_binop_α
n152_call_β:            mov              r11, 153;                            jmp   n151_lit_integer_β
.Lcall_β_400_0:         .quad            .Lcall_β_400_0_s
.Lcall_β_400_0_s:       .string          "VAR_ACCESS"
                        .size            n152_call_bx, .-n152_call_bx
                        .type            n153_binop_bx, @function
n153_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:           sub              rsp, 16
                        mov              r11, 154
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_assign_α
                        .size            n153_binop_bx, .-n153_binop_bx
                        .type            n154_assign_bx, @function
n154_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 155
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
                        mov              rdi, qword ptr [rip + .Lassign_α_402_0]
                        .section         .rodata
.Lassign_α_402_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_402_1_s]
                        mov              r8, 24
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_402_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_statement_end_α
.Lassign_α_402_0:       .quad            .Lassign_α_402_0_s
.Lassign_α_402_0_s:     .string          "OUTPUT"
                        .size            n154_assign_bx, .-n154_assign_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 156
                        mov              r10, 20
                        add              rsp, 112;                            jmp   n156_lit_integer_α
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_lit_integer_bx, @function
n156_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'A=' A ' B=' B ' C=' C ' D=' D
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n156_lit_integer_α:     sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_405_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_lit_integer_α
.Llit_integer_α_405_0:  .quad            21
                        .size            n156_lit_integer_bx, .-n156_lit_integer_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_406_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_call_α
.Llit_integer_α_406_0:  .quad            25
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_call_bx, @function
n158_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 159
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
.Lcall_α_rkfnzd408:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd408]
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
                        cmp              al, 104;                             jne   .Lcall_α_407_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n159_statement_begin_α
.Lcall_α_407_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_statement_begin_α
n158_call_β:            mov              r11, 159
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n159_statement_begin_α
                        .size            n158_call_bx, .-n158_call_bx
                        .type            n159_statement_begin_bx, @function
n159_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 160
                        mov              r10, 21;                             jmp   n160_lit_string_α
n159_statement_begin_β: mov              r11, 160
                        add              rsp, 48;                             jmp   main_γ
                        .size            n159_statement_begin_bx, .-n159_statement_begin_bx
                        .type            n160_lit_string_bx, @function
n160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_411_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_var_α
.Llit_string_α_411_0:   .quad            .Llit_string_α_411_0_s
.Llit_string_α_411_0_s: .string          "A="
                        .size            n160_lit_string_bx, .-n160_lit_string_bx
                        .type            n161_var_bx, @function
n161_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_binop_α
n161_var_β:             mov              r11, 162
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
                        .size            n161_var_bx, .-n161_var_bx
                        .type            n162_binop_bx, @function
n162_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:           sub              rsp, 16
                        mov              r11, 163
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_lit_string_α
n162_binop_β:           mov              r11, 163
                        add              rsp, 16;                             jmp   n161_var_β
                        .size            n162_binop_bx, .-n162_binop_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_binop_α
n163_lit_string_β:      mov              r11, 164
                        add              rsp, 16;                             jmp   n162_binop_β
.Llit_string_α_414_0:   .quad            .Llit_string_α_414_0_s
.Llit_string_α_414_0_s: .string          " B="
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_binop_bx, @function
n164_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:           sub              rsp, 16
                        mov              r11, 165
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_var_α
n164_binop_β:           mov              r11, 165
                        add              rsp, 16;                             jmp   n163_lit_string_β
                        .size            n164_binop_bx, .-n164_binop_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 48]             # B
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_binop_α
n165_var_β:             mov              r11, 166
                        add              rsp, 16;                             jmp   n164_binop_β
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_binop_bx, @function
n166_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           sub              rsp, 16
                        mov              r11, 167
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_lit_string_α
n166_binop_β:           mov              r11, 167
                        add              rsp, 16;                             jmp   n165_var_β
                        .size            n166_binop_bx, .-n166_binop_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_418_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_binop_α
n167_lit_string_β:      mov              r11, 168
                        add              rsp, 16;                             jmp   n166_binop_β
.Llit_string_α_418_0:   .quad            .Llit_string_α_418_0_s
.Llit_string_α_418_0_s: .string          " C="
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_binop_bx, @function
n168_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_var_α
n168_binop_β:           mov              r11, 169
                        add              rsp, 16;                             jmp   n167_lit_string_β
                        .size            n168_binop_bx, .-n168_binop_bx
                        .type            n169_var_bx, @function
n169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 64]             # C
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_binop_α
n169_var_β:             mov              r11, 170
                        add              rsp, 16;                             jmp   n168_binop_β
                        .size            n169_var_bx, .-n169_var_bx
                        .type            n170_binop_bx, @function
n170_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:           sub              rsp, 16
                        mov              r11, 171
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_lit_string_α
n170_binop_β:           mov              r11, 171
                        add              rsp, 16;                             jmp   n169_var_β
                        .size            n170_binop_bx, .-n170_binop_bx
                        .type            n171_lit_string_bx, @function
n171_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_422_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_binop_α
n171_lit_string_β:      mov              r11, 172
                        add              rsp, 16;                             jmp   n170_binop_β
.Llit_string_α_422_0:   .quad            .Llit_string_α_422_0_s
.Llit_string_α_422_0_s: .string          " D="
                        .size            n171_lit_string_bx, .-n171_lit_string_bx
                        .type            n172_binop_bx, @function
n172_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:           sub              rsp, 16
                        mov              r11, 173
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_var_α
n172_binop_β:           mov              r11, 173
                        add              rsp, 16;                             jmp   n171_lit_string_β
                        .size            n172_binop_bx, .-n172_binop_bx
                        .type            n173_var_bx, @function
n173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 80]             # D
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_binop_α
n173_var_β:             mov              r11, 174
                        add              rsp, 16;                             jmp   n172_binop_β
                        .size            n173_var_bx, .-n173_var_bx
                        .type            n174_binop_bx, @function
n174_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_assign_α
                        .size            n174_binop_bx, .-n174_binop_bx
                        .type            n175_assign_bx, @function
n175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              r11, 176
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
                        mov              rdi, qword ptr [rip + .Lassign_α_426_0]
                        .section         .rodata
.Lassign_α_426_1_s:     .string          "var_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_426_1_s]
                        mov              r8, 25
                        mov              r9, 21
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
                        mov              rdi, qword ptr [rip + .Lassign_α_426_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_statement_end_α
.Lassign_α_426_0:       .quad            .Lassign_α_426_0_s
.Lassign_α_426_0_s:     .string          "OUTPUT"
                        .size            n175_assign_bx, .-n175_assign_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 177
                        mov              r10, 21
                        add              rsp, 288;                            jmp   main_γ
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_goto_bx, @function
n177_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_goto_α:            mov              r11, 178;                            jmp   LBL__VAR_ACCESS
n177_goto_β:            mov              r11, 178;                            jmp   main_ω
                        .size            n177_goto_bx, .-n177_goto_bx
                        .type            n178_lit_integer_bx, @function
n178_lit_integer_bx:
#=======================================================================================================================
# VAR_ACCESS  A = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
LBL__VAR_ACCESS:        sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__VAR_ACCESS_α_430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_lit_integer_α
.LLBL__VAR_ACCESS_α_430_0:
                        .quad            5
                        .size            n178_lit_integer_bx, .-n178_lit_integer_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     sub              rsp, 16
                        mov              r11, 180
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_call_α
.Llit_integer_α_431_0:  .quad            8
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            sub              rsp, 16
                        mov              r11, 181
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
.Lcall_α_rkfnzd433:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd433]
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
                        cmp              al, 104;                             jne   .Lcall_α_432_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n29_statement_begin_α
.Lcall_α_432_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_statement_begin_α
n180_call_β:            mov              r11, 181
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n29_statement_begin_α
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_goto_bx, @function
n181_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_goto_α:            mov              r11, 182;                            jmp   n68_lit_integer_α
n181_goto_β:            mov              r11, 182;                            jmp   main_ω
                        .size            n181_goto_bx, .-n181_goto_bx
                        .type            n182_goto_bx, @function
n182_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_goto_α:            mov              r11, 183;                            jmp   n26_lit_integer_α
n182_goto_β:            mov              r11, 183;                            jmp   main_ω
                        .size            n182_goto_bx, .-n182_goto_bx
                        .type            n183_define_bx, @function
n183_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 184
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
                        .size            n183_define_bx, .-n183_define_bx
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
                        .long            3024
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
                        .section         .note.GNU-stack,"",@progbits
