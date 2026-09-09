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
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_171_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_172_0:  .quad            4
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_173_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_173_0:   .quad            .Llit_string_α_173_0_s
.Llit_string_α_173_0_s: .string          "table_access.sno"
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
.Lcall_α_rkfnzd175:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd175]
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
                        cmp              al, 104;                             jne   .Lcall_α_174_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_174_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_178_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_179_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_179_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_179_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_179_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_182_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_183_0:  .quad            5
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
.Lcall_α_rkfnzd185:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd185]
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
                        cmp              al, 104;                             jne   .Lcall_α_184_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_184_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_188_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_189_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_189_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_189_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_189_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_192_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_193_0:  .quad            6
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
.Lcall_α_rkfnzd195:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd195]
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
                        cmp              al, 104;                             jne   .Lcall_α_194_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_194_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_198_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_200_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_200_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_200_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_200_0:
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
#         DEFINE('TABLE_ACCESS(N)')                       :(TABLE_ACCESS_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
.Llit_integer_α_203_0:  .quad            4
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Llit_integer_α_204_0:  .quad            7
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
.Lcall_α_rkfnzd206:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd206]
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
                        cmp              al, 104;                             jne   .Lcall_α_205_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n26_statement_begin_α
.Lcall_α_205_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_statement_begin_α
n25_call_β:             mov              r11, 26
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n26_statement_begin_α
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 4;                              jmp   n27_define_α
n26_statement_begin_β:  mov              r11, 27
                        add              rsp, 48;                             jmp   n29_lit_integer_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_define_bx, @function
n27_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_define_α:           mov              r11, 28
                        mov              rdi, qword ptr [rip + .Ldefine_α_210_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_210_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + TABLE_ACCESS_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_210_0]
                        lea              rsi, [rip + TABLE_ACCESS_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__TABLE_ACCESS]
                        mov              rcx, qword ptr [rip + body_cell$TABLE_ACCESS@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n28_statement_end_α
n27_define_β:           mov              r11, 28;                             jmp   n26_statement_begin_β
.Ldefine_α_210_0:       .quad            .Ldefine_α_210_0_s
.Ldefine_α_210_0_s:     .string          "TABLE_ACCESS"
.Ldefine_α_210_1:       .quad            .Ldefine_α_210_1_s
.Ldefine_α_210_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_211_245
#-----------------------------------------------------------------------------------------------------------------------
TABLE_ACCESS_α:         sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # TABLE_ACCESS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_211_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_211_41
.Ldefine_α_211_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_211_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_211_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_211_230
.Ldefine_α_211_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_211_232]
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
.Ldefine_α_211_230:                                                           jmp   .Ldefine_α_211_231
.Ldefine_α_211_232:     .quad            .Ldefine_α_211_232_s
.Ldefine_α_211_232_s:   .string          "TABLE_ACCESS"
.Ldefine_α_211_231:     lea              rcx, [rip + TABLE_ACCESS_γ]
                        lea              rax, [rip + TABLE_ACCESS_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$TABLE_ACCESS: .quad            LBL__TABLE_ACCESS
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$TABLE_ACCESS@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
TABLE_ACCESS_γ:         mov              rdi, qword ptr [r9 + 0]              # TABLE_ACCESS
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_211_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_211_235
.Ldefine_α_211_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_211_237]
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
.Ldefine_α_211_235:                                                           jmp   .Ldefine_α_211_236
.Ldefine_α_211_237:     .quad            .Ldefine_α_211_237_s
.Ldefine_α_211_237_s:   .string          "TABLE_ACCESS"
.Ldefine_α_211_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_211_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_211_110
.Ldefine_α_211_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_211_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_211_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_211_180
.Ldefine_α_211_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_211_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_211_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_211_249
.Ldefine_α_211_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_211_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_211_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_211_245:
                        .size            n27_define_bx, .-n27_define_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        mov              r10, 4
                        add              rsp, 48;                             jmp   n29_lit_integer_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#=======================================================================================================================
# TABLE_ACCESS_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Llit_integer_α_214_0:  .quad            16
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_215_0:  .quad            19
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_call_bx, @function
n31_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        mov              r11, 32
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
                        add              rsp, -16;                            jmp   n137_statement_begin_α
.Lcall_α_216_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_statement_begin_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n137_statement_begin_α
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 5;                              jmp   n33_lit_integer_α
n32_statement_begin_β:  mov              r11, 33
                        add              rsp, 48;                             jmp   n36_lit_integer_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Llit_integer_α_220_0:  .quad            1
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
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
                        mov              rdi, qword ptr [rip + .Lassign_α_221_0]
                        .section         .rodata
.Lassign_α_221_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_221_1_s]
                        mov              r8, 19
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
                        pop              rax;                                 jmp   n35_statement_end_α
.Lassign_α_221_0:       .quad            .Lassign_α_221_0_s
.Lassign_α_221_0_s:     .string          "ZI"
                        .size            n34_assign_bx, .-n34_assign_bx
                        .type            n35_statement_end_bx, @function
n35_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n36_lit_integer_α
                        .size            n35_statement_end_bx, .-n35_statement_end_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#=======================================================================================================================
# ZBL     T = TABLE(512)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
.Llit_integer_α_224_0:  .quad            6
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Llit_integer_α_225_0:  .quad            9
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 39
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
.Lcall_α_rkfnzd227:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd227]
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
                        cmp              al, 104;                             jne   .Lcall_α_226_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_statement_begin_α
.Lcall_α_226_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_statement_begin_α
n38_call_β:             mov              r11, 39
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_statement_begin_α
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 40
                        mov              r10, 6;                              jmp   n40_lit_integer_α
n39_statement_begin_β:  mov              r11, 40
                        add              rsp, 48;                             jmp   n44_lit_integer_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_call_α
.Llit_integer_α_230_0:  .quad            512
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
                        mov              r11, 42
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd232:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd232]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_231_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
.Lcall_α_231_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_assign_α
n41_call_β:             mov              r11, 42
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_assign_bx, @function
n42_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 43
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
                        mov              rdi, qword ptr [rip + .Lassign_α_233_0]
                        .section         .rodata
.Lassign_α_233_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_233_1_s]
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
                        pop              rax;                                 jmp   n43_statement_end_α
.Lassign_α_233_0:       .quad            .Lassign_α_233_0_s
.Lassign_α_233_0_s:     .string          "T"
                        .size            n42_assign_bx, .-n42_assign_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 44
                        mov              r10, 6
                        add              rsp, 80;                             jmp   n44_lit_integer_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_lit_integer_α
.Llit_integer_α_236_0:  .quad            7
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_call_α
.Llit_integer_α_237_0:  .quad            10
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             sub              rsp, 16
                        mov              r11, 47
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
.Lcall_α_rkfnzd239:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd239]
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
                        cmp              al, 104;                             jne   .Lcall_α_238_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n47_statement_begin_α
.Lcall_α_238_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_statement_begin_α
n46_call_β:             mov              r11, 47
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n47_statement_begin_α
                        .size            n46_call_bx, .-n46_call_bx
                        .type            n47_statement_begin_bx, @function
n47_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 7;                              jmp   n48_lit_integer_α
n47_statement_begin_β:  mov              r11, 48
                        add              rsp, 48;                             jmp   n51_lit_integer_α
                        .size            n47_statement_begin_bx, .-n47_statement_begin_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_242_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_assign_α
.Llit_integer_α_242_0:  .quad            1
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
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
                        mov              rdi, qword ptr [rip + .Lassign_α_243_0]
                        .section         .rodata
.Lassign_α_243_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_243_1_s]
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
                        pop              rax;                                 jmp   n50_statement_end_α
.Lassign_α_243_0:       .quad            .Lassign_α_243_0_s
.Lassign_α_243_0_s:     .string          "I"
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        mov              r10, 7
                        add              rsp, 64;                             jmp   n51_lit_integer_α
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#=======================================================================================================================
# ZFILL   T[I] = I * 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_lit_integer_α
.Llit_integer_α_246_0:  .quad            8
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_247_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_call_α
.Llit_integer_α_247_0:  .quad            11
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_call_bx, @function
n53_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             sub              rsp, 16
                        mov              r11, 54
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
.Lcall_α_rkfnzd249:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd249]
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
                        cmp              al, 104;                             jne   .Lcall_α_248_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n54_statement_begin_α
.Lcall_α_248_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_statement_begin_α
n53_call_β:             mov              r11, 54
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n54_statement_begin_α
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55
                        mov              r10, 8;                              jmp   n55_var_α
n54_statement_begin_β:  mov              r11, 55
                        add              rsp, 48;                             jmp   n62_lit_integer_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 48]             # T
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_var_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_var_α
n56_var_β:              mov              r11, 57
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_lit_integer_α
n57_var_β:              mov              r11, 58
                        add              rsp, 16;                             jmp   n56_var_β
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
n58_lit_integer_β:      mov              r11, 59
                        add              rsp, 16;                             jmp   n57_var_β
.Llit_integer_α_255_0:  .quad            2
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_256_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_256_7
.Lbinop_α_256_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_256_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_256_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_256_4
.Lbinop_α_256_3:        movq             xmm0, rsi
.Lbinop_α_256_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_256_7:                                                              jmp   n60_assign_var_α
.Lbinop_α_256_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_256_240
                        add              rsp, 16;                             jmp   n58_lit_integer_β
.Lbinop_α_256_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_var_α
n59_binop_β:            mov              r11, 60
                        add              rsp, 16;                             jmp   n58_lit_integer_β
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_var_bx, @function
n60_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_var_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_258_0
                        test             rsi, rsi;                            je    .Lassign_var_α_258_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_258_238
                        add              rsp, 16;                             jmp   n59_binop_β
.Lassign_var_α_258_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_statement_end_α
.Lassign_var_α_258_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_258_239
                        add              rsp, 16;                             jmp   n59_binop_β
.Lassign_var_α_258_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_258_240
                        add              rsp, 16;                             jmp   n59_binop_β
.Lassign_var_α_258_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_statement_end_α
                        .size            n60_assign_var_bx, .-n60_assign_var_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 8
                        add              rsp, 144;                            jmp   n62_lit_integer_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_integer_α
.Llit_integer_α_261_0:  .quad            9
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
.Llit_integer_α_262_0:  .quad            12
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
.Lcall_α_rkfnzd264:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd264]
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
                        cmp              al, 104;                             jne   .Lcall_α_263_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
.Lcall_α_263_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 48;                             jmp   n76_lit_integer_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_lit_integer_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_lit_integer_bx, @function
n67_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_268_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_coerce_numeric_α
n67_lit_integer_β:      mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
.Llit_integer_α_268_0:  .quad            500
                        .size            n67_lit_integer_bx, .-n67_lit_integer_bx
                        .type            n68_coerce_numeric_bx, @function
n68_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 69
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_270_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
.Lcoerce_numeric_α_270_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_coerce_numeric_α
.Lcoerce_numeric_α_270_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
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
                        add              rsp, 16;                             jmp   n67_lit_integer_β
                        .size            n68_coerce_numeric_bx, .-n68_coerce_numeric_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 70
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_272_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_272_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_272_0
.Lcoerce_numeric_α_272_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_cmp_test_α
.Lcoerce_numeric_α_272_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_274_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_274_239
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lcmp_test_α_274_239:                                                         jmp   n71_var_α
.Lcmp_test_α_274_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_274_240
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lcmp_test_α_274_240:                                                         jmp   n71_var_α
n70_cmp_test_β:         mov              r11, 71
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
                        .size            n70_cmp_test_bx, .-n70_cmp_test_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # I
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      mov              r11, 73
                        add              rsp, 16;                             jmp   n71_var_β
.Llit_integer_α_276_0:  .quad            1
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
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
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_277_7:                                                              jmp   n74_assign_α
.Lbinop_α_277_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_277_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lbinop_α_277_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
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
                        mov              rdi, qword ptr [rip + .Lassign_α_278_0]
                        .section         .rodata
.Lassign_α_278_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_278_1_s]
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
                        pop              rax;                                 jmp   n75_statement_end_α
.Lassign_α_278_0:       .quad            .Lassign_α_278_0_s
.Lassign_α_278_0_s:     .string          "I"
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 9
                        add              rsp, 176;                            jmp   n51_lit_integer_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#=======================================================================================================================
#         SUM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n76_lit_integer_α:      sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_lit_integer_α
.Llit_integer_α_281_0:  .quad            10
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Llit_integer_α_282_0:  .quad            13
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
.Lcall_α_rkfnzd284:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd284]
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
                        cmp              al, 104;                             jne   .Lcall_α_283_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_statement_begin_α
.Lcall_α_283_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_statement_begin_α
n78_call_β:             mov              r11, 79
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_statement_begin_α
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_statement_begin_bx, @function
n79_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 80
                        mov              r10, 10;                             jmp   n80_lit_integer_α
n79_statement_begin_β:  mov              r11, 80
                        add              rsp, 48;                             jmp   n83_lit_integer_α
                        .size            n79_statement_begin_bx, .-n79_statement_begin_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_assign_α
.Llit_integer_α_287_0:  .quad            0
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
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
                        mov              rdi, qword ptr [rip + .Lassign_α_288_0]
                        .section         .rodata
.Lassign_α_288_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_288_1_s]
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
                        pop              rax;                                 jmp   n82_statement_end_α
.Lassign_α_288_0:       .quad            .Lassign_α_288_0_s
.Lassign_α_288_0_s:     .string          "SUM"
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n83_lit_integer_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#=======================================================================================================================
#         I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n83_lit_integer_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_lit_integer_α
.Llit_integer_α_291_0:  .quad            11
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_call_α
.Llit_integer_α_292_0:  .quad            14
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_call_bx, @function
n85_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             sub              rsp, 16
                        mov              r11, 86
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
.Lcall_α_rkfnzd294:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd294]
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
                        cmp              al, 104;                             jne   .Lcall_α_293_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n86_statement_begin_α
.Lcall_α_293_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_statement_begin_α
n85_call_β:             mov              r11, 86
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n86_statement_begin_α
                        .size            n85_call_bx, .-n85_call_bx
                        .type            n86_statement_begin_bx, @function
n86_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 87
                        mov              r10, 11;                             jmp   n87_lit_integer_α
n86_statement_begin_β:  mov              r11, 87
                        add              rsp, 48;                             jmp   n90_lit_integer_α
                        .size            n86_statement_begin_bx, .-n86_statement_begin_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_assign_α
.Llit_integer_α_297_0:  .quad            1
                        .size            n87_lit_integer_bx, .-n87_lit_integer_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 89
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
                        mov              rdi, qword ptr [rip + .Lassign_α_298_0]
                        .section         .rodata
.Lassign_α_298_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_298_1_s]
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
                        pop              rax;                                 jmp   n89_statement_end_α
.Lassign_α_298_0:       .quad            .Lassign_α_298_0_s
.Lassign_α_298_0_s:     .string          "I"
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n90_lit_integer_α
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_lit_integer_bx, @function
n90_lit_integer_bx:
#=======================================================================================================================
# ZREAD   SUM = SUM + T[I]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n90_lit_integer_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_lit_integer_α
.Llit_integer_α_301_0:  .quad            12
                        .size            n90_lit_integer_bx, .-n90_lit_integer_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_call_α
.Llit_integer_α_302_0:  .quad            15
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             sub              rsp, 16
                        mov              r11, 93
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
.Lcall_α_rkfnzd304:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd304]
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
                        cmp              al, 104;                             jne   .Lcall_α_303_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n93_statement_begin_α
.Lcall_α_303_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_statement_begin_α
n92_call_β:             mov              r11, 93
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n93_statement_begin_α
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_statement_begin_bx, @function
n93_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94
                        mov              r10, 12;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 94
                        add              rsp, 48;                             jmp   n102_lit_integer_α
                        .size            n93_statement_begin_bx, .-n93_statement_begin_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 80]             # SUM
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_var_α
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 48]             # T
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
n95_var_β:              mov              r11, 96
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_subscript_α
n96_var_β:              mov              r11, 97
                        add              rsp, 16;                             jmp   n95_var_β
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_subscript_bx, @function
n97_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_subscript_α:        sub              rsp, 16
                        mov              r11, 98
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_310_240
                        add              rsp, 16;                             jmp   n96_var_β
.Lsubscript_α_310_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_deref_α
n97_subscript_β:        mov              r11, 98
                        add              rsp, 16;                             jmp   n96_var_β
                        .size            n97_subscript_bx, .-n97_subscript_bx
                        .type            n98_deref_bx, @function
n98_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_deref_α:            sub              rsp, 16
                        mov              r11, 99
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
                        cmp              al, 104;                             jne   .Lderef_α_311_240
                        add              rsp, 16;                             jmp   n97_subscript_β
.Lderef_α_311_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_binop_α
n98_deref_β:            mov              r11, 99
                        add              rsp, 16;                             jmp   n97_subscript_β
                        .size            n98_deref_bx, .-n98_deref_bx
                        .type            n99_binop_bx, @function
n99_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:            sub              rsp, 16
                        mov              r11, 100
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_312_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_312_7
.Lbinop_α_312_2:        and              edx, 1;                              jz    .Lbinop_α_312_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_312_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_312_4
.Lbinop_α_312_3:        movq             xmm0, rsi
.Lbinop_α_312_4:        cmp              cl, 5;                               je    .Lbinop_α_312_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_312_6
.Lbinop_α_312_5:        movq             xmm1, rdi
.Lbinop_α_312_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_312_7:                                                              jmp   n100_assign_α
.Lbinop_α_312_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_312_240
                        add              rsp, 16;                             jmp   n98_deref_β
.Lbinop_α_312_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_assign_α
                        .size            n99_binop_bx, .-n99_binop_bx
                        .type            n100_assign_bx, @function
n100_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:          mov              r11, 101
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
                        mov              rdi, qword ptr [rip + .Lassign_α_313_0]
                        .section         .rodata
.Lassign_α_313_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_313_1_s]
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
                        pop              rax;                                 jmp   n101_statement_end_α
.Lassign_α_313_0:       .quad            .Lassign_α_313_0_s
.Lassign_α_313_0_s:     .string          "SUM"
                        .size            n100_assign_bx, .-n100_assign_bx
                        .type            n101_statement_end_bx, @function
n101_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   mov              r11, 102
                        mov              r10, 12
                        add              rsp, 144;                            jmp   n102_lit_integer_α
                        .size            n101_statement_end_bx, .-n101_statement_end_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#=======================================================================================================================
#         I = LT(I, 500) I + 1                            :S(ZREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n102_lit_integer_α:     sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_lit_integer_α
.Llit_integer_α_316_0:  .quad            13
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_lit_integer_bx, @function
n103_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_call_α
.Llit_integer_α_317_0:  .quad            16
                        .size            n103_lit_integer_bx, .-n103_lit_integer_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            sub              rsp, 16
                        mov              r11, 105
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
.Lcall_α_rkfnzd319:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd319]
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
                        cmp              al, 104;                             jne   .Lcall_α_318_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n105_statement_begin_α
.Lcall_α_318_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_statement_begin_α
n104_call_β:            mov              r11, 105
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n105_statement_begin_α
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106
                        mov              r10, 13;                             jmp   n106_var_α
n105_statement_begin_β: mov              r11, 106
                        add              rsp, 48;                             jmp   n116_lit_integer_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_integer_α
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_coerce_numeric_α
n107_lit_integer_β:     mov              r11, 108
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
.Llit_integer_α_323_0:  .quad            500
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_coerce_numeric_bx, @function
n108_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 109
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_325_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_325_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_325_0
.Lcoerce_numeric_α_325_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_coerce_numeric_α
.Lcoerce_numeric_α_325_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_coerce_numeric_α
n108_coerce_numeric_β:  mov              r11, 109
                        add              rsp, 16;                             jmp   n107_lit_integer_β
                        .size            n108_coerce_numeric_bx, .-n108_coerce_numeric_bx
                        .type            n109_coerce_numeric_bx, @function
n109_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 110
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_cmp_test_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_cmp_test_α
n109_coerce_numeric_β:  mov              r11, 110
                        add              rsp, 16;                             jmp   n108_coerce_numeric_β
                        .size            n109_coerce_numeric_bx, .-n109_coerce_numeric_bx
                        .type            n110_cmp_test_bx, @function
n110_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_cmp_test_α:        sub              rsp, 16
                        mov              r11, 111
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_329_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_329_239
                        add              rsp, 16;                             jmp   n109_coerce_numeric_β
.Lcmp_test_α_329_239:                                                         jmp   n111_var_α
.Lcmp_test_α_329_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_329_240
                        add              rsp, 16;                             jmp   n109_coerce_numeric_β
.Lcmp_test_α_329_240:                                                         jmp   n111_var_α
n110_cmp_test_β:        mov              r11, 111
                        add              rsp, 16;                             jmp   n109_coerce_numeric_β
                        .size            n110_cmp_test_bx, .-n110_cmp_test_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_lit_integer_α
n111_var_β:             mov              r11, 112
                        add              rsp, 16;                             jmp   n110_cmp_test_β
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_binop_α
n112_lit_integer_β:     mov              r11, 113
                        add              rsp, 16;                             jmp   n111_var_β
.Llit_integer_α_331_0:  .quad            1
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_binop_bx, @function
n113_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:           sub              rsp, 16
                        mov              r11, 114
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_332_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_332_7
.Lbinop_α_332_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_332_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_332_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_332_4
.Lbinop_α_332_3:        movq             xmm0, rsi
.Lbinop_α_332_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_332_7:                                                              jmp   n114_assign_α
.Lbinop_α_332_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_332_240
                        add              rsp, 16;                             jmp   n112_lit_integer_β
.Lbinop_α_332_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_assign_α
                        .size            n113_binop_bx, .-n113_binop_bx
                        .type            n114_assign_bx, @function
n114_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              r11, 115
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
                        mov              rdi, qword ptr [rip + .Lassign_α_333_0]
                        .section         .rodata
.Lassign_α_333_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_333_1_s]
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
                        pop              rax;                                 jmp   n115_statement_end_α
.Lassign_α_333_0:       .quad            .Lassign_α_333_0_s
.Lassign_α_333_0_s:     .string          "I"
                        .size            n114_assign_bx, .-n114_assign_bx
                        .type            n115_statement_end_bx, @function
n115_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 116
                        mov              r10, 13
                        add              rsp, 176;                            jmp   n90_lit_integer_α
                        .size            n115_statement_end_bx, .-n115_statement_end_bx
                        .type            n116_lit_integer_bx, @function
n116_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n116_lit_integer_α:     sub              rsp, 16
                        mov              r11, 117
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_lit_integer_α
.Llit_integer_α_336_0:  .quad            14
                        .size            n116_lit_integer_bx, .-n116_lit_integer_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_call_α
.Llit_integer_α_337_0:  .quad            17
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
                        mov              r11, 119
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
.Lcall_α_rkfnzd339:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd339]
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
                        cmp              al, 104;                             jne   .Lcall_α_338_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n119_statement_begin_α
.Lcall_α_338_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_statement_begin_α
n118_call_β:            mov              r11, 119
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n119_statement_begin_α
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_statement_begin_bx, @function
n119_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α: mov              r11, 120
                        mov              r10, 14;                             jmp   n120_var_α
n119_statement_begin_β: mov              r11, 120
                        add              rsp, 48;                             jmp   n130_lit_integer_α
                        .size            n119_statement_begin_bx, .-n119_statement_begin_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 121
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_var_α
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_coerce_numeric_α
n121_var_β:             mov              r11, 122
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_coerce_numeric_bx, @function
n122_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 123
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_345_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_345_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_345_0
.Lcoerce_numeric_α_345_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_coerce_numeric_α
.Lcoerce_numeric_α_345_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_coerce_numeric_α
n122_coerce_numeric_β:  mov              r11, 123
                        add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_coerce_numeric_bx, .-n122_coerce_numeric_bx
                        .type            n123_coerce_numeric_bx, @function
n123_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 124
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_347_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_347_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_347_0
.Lcoerce_numeric_α_347_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_cmp_test_α
.Lcoerce_numeric_α_347_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_cmp_test_α
n123_coerce_numeric_β:  mov              r11, 124
                        add              rsp, 16;                             jmp   n122_coerce_numeric_β
                        .size            n123_coerce_numeric_bx, .-n123_coerce_numeric_bx
                        .type            n124_cmp_test_bx, @function
n124_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_cmp_test_α:        sub              rsp, 16
                        mov              r11, 125
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_349_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_349_239
                        add              rsp, 16;                             jmp   n123_coerce_numeric_β
.Lcmp_test_α_349_239:                                                         jmp   n125_var_α
.Lcmp_test_α_349_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_349_240
                        add              rsp, 16;                             jmp   n123_coerce_numeric_β
.Lcmp_test_α_349_240:                                                         jmp   n125_var_α
n124_cmp_test_β:        mov              r11, 125
                        add              rsp, 16;                             jmp   n123_coerce_numeric_β
                        .size            n124_cmp_test_bx, .-n124_cmp_test_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_lit_integer_α
n125_var_β:             mov              r11, 126
                        add              rsp, 16;                             jmp   n124_cmp_test_β
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_351_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_binop_α
n126_lit_integer_β:     mov              r11, 127
                        add              rsp, 16;                             jmp   n125_var_β
.Llit_integer_α_351_0:  .quad            1
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_binop_bx, @function
n127_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:           sub              rsp, 16
                        mov              r11, 128
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_352_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_352_7
.Lbinop_α_352_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_352_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_352_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_352_4
.Lbinop_α_352_3:        movq             xmm0, rsi
.Lbinop_α_352_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_352_7:                                                              jmp   n128_assign_α
.Lbinop_α_352_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_352_240
                        add              rsp, 16;                             jmp   n126_lit_integer_β
.Lbinop_α_352_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_assign_α
                        .size            n127_binop_bx, .-n127_binop_bx
                        .type            n128_assign_bx, @function
n128_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              r11, 129
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
                        mov              rdi, qword ptr [rip + .Lassign_α_353_0]
                        .section         .rodata
.Lassign_α_353_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_353_1_s]
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
                        pop              rax;                                 jmp   n129_statement_end_α
.Lassign_α_353_0:       .quad            .Lassign_α_353_0_s
.Lassign_α_353_0_s:     .string          "ZI"
                        .size            n128_assign_bx, .-n128_assign_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 130
                        mov              r10, 14
                        add              rsp, 176;                            jmp   n36_lit_integer_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#=======================================================================================================================
#         TABLE_ACCESS = SUM                              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n130_lit_integer_α:     sub              rsp, 16
                        mov              r11, 131
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_lit_integer_α
.Llit_integer_α_356_0:  .quad            15
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_call_α
.Llit_integer_α_357_0:  .quad            18
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_call_bx, @function
n132_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        mov              r11, 133
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
.Lcall_α_rkfnzd359:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd359]
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
                        cmp              al, 104;                             jne   .Lcall_α_358_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n133_statement_begin_α
.Lcall_α_358_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_statement_begin_α
n132_call_β:            mov              r11, 133
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n133_statement_begin_α
                        .size            n132_call_bx, .-n132_call_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 134
                        mov              r10, 15;                             jmp   n134_var_α
n133_statement_begin_β: mov              r11, 134
                        add              rsp, 48;                             jmp   RETURN
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 80]             # SUM
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_assign_bx, @function
n135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 136
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
                        mov              rdi, qword ptr [rip + .Lassign_α_363_0]
                        .section         .rodata
.Lassign_α_363_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_363_1_s]
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
                        pop              rax;                                 jmp   n136_statement_end_α
.Lassign_α_363_0:       .quad            .Lassign_α_363_0_s
.Lassign_α_363_0_s:     .string          "TABLE_ACCESS"
                        .size            n135_assign_bx, .-n135_assign_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_statement_begin_bx, @function
n137_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 138
                        mov              r10, 16;                             jmp   n138_statement_end_α
n137_statement_begin_β: mov              r11, 138
                        add              rsp, 48;                             jmp   n139_lit_integer_α
                        .size            n137_statement_begin_bx, .-n137_statement_begin_bx
                        .type            n138_statement_end_bx, @function
n138_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 139
                        mov              r10, 16
                        add              rsp, 48;                             jmp   n139_lit_integer_α
                        .size            n138_statement_end_bx, .-n138_statement_end_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'sum of T[1..500] = ' TABLE_ACCESS(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_lit_integer_α
.Llit_integer_α_370_0:  .quad            17
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_call_α
.Llit_integer_α_371_0:  .quad            21
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_call_bx, @function
n141_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:            sub              rsp, 16
                        mov              r11, 142
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
.Lcall_α_rkfnzd373:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd373]
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
                        cmp              al, 104;                             jne   .Lcall_α_372_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n142_statement_begin_α
.Lcall_α_372_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_statement_begin_α
n141_call_β:            mov              r11, 142
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n142_statement_begin_α
                        .size            n141_call_bx, .-n141_call_bx
                        .type            n142_statement_begin_bx, @function
n142_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α: mov              r11, 143
                        mov              r10, 17;                             jmp   n143_lit_string_α
n142_statement_begin_β: mov              r11, 143
                        add              rsp, 48;                             jmp   n149_lit_integer_α
                        .size            n142_statement_begin_bx, .-n142_statement_begin_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      sub              rsp, 16
                        mov              r11, 144
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Llit_string_α_376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_lit_integer_α
.Llit_string_α_376_0:   .quad            .Llit_string_α_376_0_s
.Llit_string_α_376_0_s: .string          "sum of T[1..500] = "
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 145
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_377_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_call_α
n144_lit_integer_β:     mov              r11, 145
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
.Llit_integer_α_377_0:  .quad            1
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            sub              rsp, 16
                        mov              r11, 146
                        lea              rcx, [rip + .Lcall_α_sig379z]
                        lea              rax, [rip + TABLE_ACCESS_α];         jmp   rax
.Lcall_α_sig379z:       .quad            1
                        .quad            .Lcall_α_379_2
                        .quad            .Lcall_α_379_2
                        .quad            16
.Lcall_α_379_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_379_29
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
.Lcall_α_379_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_379_240
                        add              rsp, 16;                             jmp   n144_lit_integer_β
.Lcall_α_379_240:                                                             jmp   n146_binop_α
n145_call_β:            mov              r11, 146;                            jmp   n144_lit_integer_β
.Lcall_β_379_0:         .quad            .Lcall_β_379_0_s
.Lcall_β_379_0_s:       .string          "TABLE_ACCESS"
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_binop_bx, @function
n146_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:           sub              rsp, 16
                        mov              r11, 147
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_assign_α
                        .size            n146_binop_bx, .-n146_binop_bx
                        .type            n147_assign_bx, @function
n147_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              r11, 148
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
                        mov              rdi, qword ptr [rip + .Lassign_α_381_0]
                        .section         .rodata
.Lassign_α_381_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_381_1_s]
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
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_381_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_statement_end_α
.Lassign_α_381_0:       .quad            .Lassign_α_381_0_s
.Lassign_α_381_0_s:     .string          "OUTPUT"
                        .size            n147_assign_bx, .-n147_assign_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 149
                        mov              r10, 17
                        add              rsp, 112;                            jmp   n149_lit_integer_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_lit_integer_bx, @function
n149_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'after 20 rebuilds = ' TABLE_ACCESS(20)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n149_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_lit_integer_α
.Llit_integer_α_384_0:  .quad            18
                        .size            n149_lit_integer_bx, .-n149_lit_integer_bx
                        .type            n150_lit_integer_bx, @function
n150_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_call_α
.Llit_integer_α_385_0:  .quad            22
                        .size            n150_lit_integer_bx, .-n150_lit_integer_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            sub              rsp, 16
                        mov              r11, 152
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
.Lcall_α_rkfnzd387:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd387]
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
                        cmp              al, 104;                             jne   .Lcall_α_386_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n152_statement_begin_α
.Lcall_α_386_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_statement_begin_α
n151_call_β:            mov              r11, 152
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n152_statement_begin_α
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 153
                        mov              r10, 18;                             jmp   n153_lit_string_α
n152_statement_begin_β: mov              r11, 153
                        add              rsp, -64;                            jmp   n159_lit_integer_α
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_lit_string_bx, @function
n153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_390_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_lit_integer_α
.Llit_string_α_390_0:   .quad            .Llit_string_α_390_0_s
.Llit_string_α_390_0_s: .string          "after 20 rebuilds = "
                        .size            n153_lit_string_bx, .-n153_lit_string_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_391_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_call_α
n154_lit_integer_β:     mov              r11, 155
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Llit_integer_α_391_0:  .quad            20
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_call_bx, @function
n155_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:            sub              rsp, 16
                        mov              r11, 156
                        lea              rcx, [rip + .Lcall_α_sig393z]
                        lea              rax, [rip + TABLE_ACCESS_α];         jmp   rax
.Lcall_α_sig393z:       .quad            1
                        .quad            .Lcall_α_393_2
                        .quad            .Lcall_α_393_2
                        .quad            16
.Lcall_α_393_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_393_29
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
.Lcall_α_393_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_393_240
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lcall_α_393_240:                                                             jmp   n156_binop_α
n155_call_β:            mov              r11, 156;                            jmp   n154_lit_integer_β
.Lcall_β_393_0:         .quad            .Lcall_β_393_0_s
.Lcall_β_393_0_s:       .string          "TABLE_ACCESS"
                        .size            n155_call_bx, .-n155_call_bx
                        .type            n156_binop_bx, @function
n156_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              r11, 157
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_assign_α
                        .size            n156_binop_bx, .-n156_binop_bx
                        .type            n157_assign_bx, @function
n157_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              r11, 158
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
                        mov              rdi, qword ptr [rip + .Lassign_α_395_0]
                        .section         .rodata
.Lassign_α_395_1_s:     .string          "table_access.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_395_1_s]
                        mov              r8, 22
                        mov              r9, 18
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
                        mov              rdi, qword ptr [rip + .Lassign_α_395_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_statement_end_α
.Lassign_α_395_0:       .quad            .Lassign_α_395_0_s
.Lassign_α_395_0_s:     .string          "OUTPUT"
                        .size            n157_assign_bx, .-n157_assign_bx
                        .type            n158_statement_end_bx, @function
n158_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   mov              r11, 159
                        mov              r10, 18;                             jmp   n159_lit_integer_α
                        .size            n158_statement_end_bx, .-n158_statement_end_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_398_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_lit_integer_α
.Llit_integer_α_398_0:  .quad            19
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_call_α
.Llit_integer_α_399_0:  .quad            23
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_call_bx, @function
n161_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:            sub              rsp, 16
                        mov              r11, 162
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
.Lcall_α_rkfnzd401:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd401]
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
                        cmp              al, 104;                             jne   .Lcall_α_400_240
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
.Lcall_α_400_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160;                            jmp   main_γ
n161_call_β:            mov              r11, 162
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
                        .size            n161_call_bx, .-n161_call_bx
                        .type            n162_goto_bx, @function
n162_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_α:            mov              r11, 163;                            jmp   LBL__TABLE_ACCESS
n162_goto_β:            mov              r11, 163;                            jmp   main_ω
                        .size            n162_goto_bx, .-n162_goto_bx
                        .type            n163_lit_integer_bx, @function
n163_lit_integer_bx:
#=======================================================================================================================
# TABLE_ACCESS  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
LBL__TABLE_ACCESS:      sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__TABLE_ACCESS_α_403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_lit_integer_α
.LLBL__TABLE_ACCESS_α_403_0:
                        .quad            5
                        .size            n163_lit_integer_bx, .-n163_lit_integer_bx
                        .type            n164_lit_integer_bx, @function
n164_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_call_α
.Llit_integer_α_404_0:  .quad            8
                        .size            n164_lit_integer_bx, .-n164_lit_integer_bx
                        .type            n165_call_bx, @function
n165_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:            sub              rsp, 16
                        mov              r11, 166
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
.Lcall_α_rkfnzd406:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd406]
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
                        cmp              al, 104;                             jne   .Lcall_α_405_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
.Lcall_α_405_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_statement_begin_α
n165_call_β:            mov              r11, 166
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
                        .size            n165_call_bx, .-n165_call_bx
                        .type            n166_goto_bx, @function
n166_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_goto_α:            mov              r11, 167;                            jmp   n36_lit_integer_α
n166_goto_β:            mov              r11, 167;                            jmp   main_ω
                        .size            n166_goto_bx, .-n166_goto_bx
                        .type            n167_goto_bx, @function
n167_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_goto_α:            mov              r11, 168;                            jmp   n51_lit_integer_α
n167_goto_β:            mov              r11, 168;                            jmp   main_ω
                        .size            n167_goto_bx, .-n167_goto_bx
                        .type            n168_goto_bx, @function
n168_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_goto_α:            mov              r11, 169;                            jmp   n90_lit_integer_α
n168_goto_β:            mov              r11, 169;                            jmp   main_ω
                        .size            n168_goto_bx, .-n168_goto_bx
                        .type            n169_goto_bx, @function
n169_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_goto_α:            mov              r11, 170;                            jmp   n29_lit_integer_α
n169_goto_β:            mov              r11, 170;                            jmp   main_ω
                        .size            n169_goto_bx, .-n169_goto_bx
                        .type            n170_define_bx, @function
n170_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 171
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
                        .size            n170_define_bx, .-n170_define_bx
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
                        .long            2896
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
                        .section         .note.GNU-stack,"",@progbits
