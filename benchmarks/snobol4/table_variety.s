                        .intel_syntax    noprefix
                        .text
                        .file            1 "table_variety.sno"
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
                        mov              esi, 10
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
.Lgvan0:                .string          "TABLE_VARIETY"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZI"
.Lgvan3:                .string          "ZS"
.Lgvan4:                .string          "tab"
.Lgvan5:                .string          "ix"
.Lgvan6:                .string          "sx"
.Lgvan7:                .string          "rx"
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
.Llbln0:                .string          "TABLE_VARIETY"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "INTFILL"
.Llbln3:                .string          "STRFILL"
.Llbln4:                .string          "REALFIL"
.Llbln5:                .string          "INTREAD"
.Llbln6:                .string          "STRREAD"
.Llbln7:                .string          "REALRD"
.Llbln8:                .string          "TABLE_VARIETY_END"
.Llbln9:                .string          "END"
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
                        .quad            .Llbln8
                        .quad            .Llbln9
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
                        .loc             1 13 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_467_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_467_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_468_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_468_0:  .quad            13
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_469_0:   .quad            .Llit_string_α_469_0_s
.Llit_string_α_469_0_s: .string          "table_variety.sno"
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
.Lcall_α_rkfnzd471:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd471]
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
                        cmp              al, 104;                             jne   .Lcall_α_470_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_470_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_474_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_475_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_475_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_475_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_475_0:
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
                        .loc             1 14 0
n8_lit_integer_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_478_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_479_0:  .quad            14
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
.Lcall_α_rkfnzd481:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd481]
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
                        cmp              al, 104;                             jne   .Lcall_α_480_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_480_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_484_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_484_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_485_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_485_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_485_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_485_0:
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
                        .loc             1 15 0
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_488_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_488_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_489_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_489_0:  .quad            15
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
.Lcall_α_rkfnzd491:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd491]
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
                        cmp              al, 104;                             jne   .Lcall_α_490_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_490_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_494_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_496_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_496_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_496_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_496_0:
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
#         DEFINE('TABLE_VARIETY(N)')                      :(TABLE_VARIETY_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n23_statement_begin_α:  mov              r11, 24
                        mov              r10, 4;                              jmp   n24_define_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n26_lit_integer_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_define_bx, @function
n24_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_define_α:           mov              r11, 25
                        mov              rdi, qword ptr [rip + .Ldefine_α_502_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_502_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + TABLE_VARIETY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_502_0]
                        lea              rsi, [rip + TABLE_VARIETY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_statement_end_α
n24_define_β:           mov              r11, 25;                             jmp   n23_statement_begin_β
.Ldefine_α_502_0:       .quad            .Ldefine_α_502_0_s
.Ldefine_α_502_0_s:     .string          "TABLE_VARIETY"
.Ldefine_α_502_1:       .quad            .Ldefine_α_502_1_s
.Ldefine_α_502_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_503_245
#-----------------------------------------------------------------------------------------------------------------------
TABLE_VARIETY_α:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # TABLE_VARIETY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_503_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_503_41
.Ldefine_α_503_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_503_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_503_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_503_232]
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
.Ldefine_α_503_230:                                                           jmp   .Ldefine_α_503_231
.Ldefine_α_503_232:     .quad            .Ldefine_α_503_232_s
.Ldefine_α_503_232_s:   .string          "TABLE_VARIETY"
.Ldefine_α_503_231:     lea              rcx, [rip + TABLE_VARIETY_γ]
                        lea              rax, [rip + TABLE_VARIETY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__TABLE_VARIETY];     jmp   rax
TABLE_VARIETY_γ:        mov              rdi, qword ptr [r9 + 0]              # TABLE_VARIETY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_503_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_503_237]
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
.Ldefine_α_503_235:                                                           jmp   .Ldefine_α_503_236
.Ldefine_α_503_237:     .quad            .Ldefine_α_503_237_s
.Ldefine_α_503_237_s:   .string          "TABLE_VARIETY"
.Ldefine_α_503_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_503_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_503_110
.Ldefine_α_503_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_503_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64;                             jmp   rcx
TABLE_VARIETY_ω:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_503_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_503_180
.Ldefine_α_503_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_503_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_503_245:
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
# TABLE_VARIETY_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_lit_integer_α
.Llit_integer_α_506_0:  .quad            38
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_507_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_α
.Llit_integer_α_507_0:  .quad            60
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
.Lcall_α_rkfnzd509:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd509]
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
                        cmp              al, 104;                             jne   .Lcall_α_508_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n406_statement_begin_α
.Lcall_α_508_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_statement_begin_α
n28_call_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n406_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_512_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Llit_integer_α_512_0:  .quad            1
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 32
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
                        mov              rdi, qword ptr [rip + .Lassign_α_513_0]
                        .section         .rodata
.Lassign_α_513_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_513_1_s]
                        mov              r8, 60
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
.Lassign_α_513_0:       .quad            .Lassign_α_513_0_s
.Lassign_α_513_0_s:     .string          "ZI"
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
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
.Llit_integer_α_516_0:  .quad            6
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_call_α
.Llit_integer_α_517_0:  .quad            18
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
.Lcall_α_rkfnzd519:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd519]
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
                        cmp              al, 104;                             jne   .Lcall_α_518_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_statement_begin_α
.Lcall_α_518_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_522_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_assign_α
.Llit_integer_α_522_0:  .quad            0
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_523_0]
                        .section         .rodata
.Lassign_α_523_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_523_1_s]
                        mov              r8, 18
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
.Lassign_α_523_0:       .quad            .Lassign_α_523_0_s
.Lassign_α_523_0_s:     .string          "ZS"
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
# ZBL     tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_integer_α
.Llit_integer_α_526_0:  .quad            7
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
.Llit_integer_α_527_0:  .quad            19
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
.Lcall_α_rkfnzd529:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd529]
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
                        cmp              al, 104;                             jne   .Lcall_α_528_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n43_statement_begin_α
.Lcall_α_528_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 48;                             jmp   n48_lit_integer_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
.Llit_integer_α_532_0:  .quad            64
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
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
.Lcall_α_rkfnzd534:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd534]
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
                        cmp              al, 104;                             jne   .Lcall_α_533_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lcall_α_533_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              qword ptr [r9 + 64], rax             # tab
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
                        mov              rdi, qword ptr [rip + .Lassign_α_535_0]
                        .section         .rodata
.Lassign_α_535_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_535_1_s]
                        mov              r8, 19
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
.Lassign_α_535_0:       .quad            .Lassign_α_535_0_s
.Lassign_α_535_0_s:     .string          "tab"
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
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_538_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_integer_α
.Llit_integer_α_538_0:  .quad            8
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_539_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
.Llit_integer_α_539_0:  .quad            21
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
.Lcall_α_rkfnzd541:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd541]
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
                        cmp              al, 104;                             jne   .Lcall_α_540_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n51_statement_begin_α
.Lcall_α_540_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_statement_begin_α
n50_call_β:             mov              r11, 51
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n51_statement_begin_α
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52
                        mov              r10, 8;                              jmp   n52_lit_integer_α
n51_statement_begin_β:  mov              r11, 52
                        add              rsp, 48;                             jmp   n56_lit_integer_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_unop_α
.Llit_integer_α_544_0:  .quad            30
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_unop_bx, @function
n53_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_unop_α:             sub              rsp, 16
                        mov              r11, 54
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_assign_α
                        .size            n53_unop_bx, .-n53_unop_bx
                        .type            n54_assign_bx, @function
n54_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
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
                        mov              rdi, qword ptr [rip + .Lassign_α_546_0]
                        .section         .rodata
.Lassign_α_546_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_546_1_s]
                        mov              r8, 21
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
                        pop              rax;                                 jmp   n55_statement_end_α
.Lassign_α_546_0:       .quad            .Lassign_α_546_0_s
.Lassign_α_546_0_s:     .string          "ix"
                        .size            n54_assign_bx, .-n54_assign_bx
                        .type            n55_statement_end_bx, @function
n55_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 56
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n56_lit_integer_α
                        .size            n55_statement_end_bx, .-n55_statement_end_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#=======================================================================================================================
# INTFILL tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_549_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_lit_integer_α
.Llit_integer_α_549_0:  .quad            9
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_550_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_call_α
.Llit_integer_α_550_0:  .quad            22
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             sub              rsp, 16
                        mov              r11, 59
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
.Lcall_α_rkfnzd552:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd552]
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
                        cmp              al, 104;                             jne   .Lcall_α_551_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n59_statement_begin_α
.Lcall_α_551_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_statement_begin_α
n58_call_β:             mov              r11, 59
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n59_statement_begin_α
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_statement_begin_bx, @function
n59_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 9;                              jmp   n60_var_α
n59_statement_begin_β:  mov              r11, 60
                        add              rsp, 48;                             jmp   n67_lit_integer_α
                        .size            n59_statement_begin_bx, .-n59_statement_begin_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_var_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_var_α
n61_var_β:              mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_lit_integer_α
n62_var_β:              mov              r11, 63
                        add              rsp, 16;                             jmp   n61_var_β
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_binop_α
n63_lit_integer_β:      mov              r11, 64
                        add              rsp, 16;                             jmp   n62_var_β
.Llit_integer_α_558_0:  .quad            3
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_binop_bx, @function
n64_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_α:            sub              rsp, 16
                        mov              r11, 65
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_559_2
                        mov              rdx, 3
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_559_7
.Lbinop_α_559_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_559_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_559_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_559_4
.Lbinop_α_559_3:        movq             xmm0, rsi
.Lbinop_α_559_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_559_7:                                                              jmp   n65_assign_var_α
.Lbinop_α_559_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_559_240
                        add              rsp, 16;                             jmp   n63_lit_integer_β
.Lbinop_α_559_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_assign_var_α
n64_binop_β:            mov              r11, 65
                        add              rsp, 16;                             jmp   n63_lit_integer_β
                        .size            n64_binop_bx, .-n64_binop_bx
                        .type            n65_assign_var_bx, @function
n65_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_var_α:       sub              rsp, 16
                        mov              r11, 66
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_561_0
                        test             rsi, rsi;                            je    .Lassign_var_α_561_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_561_238
                        add              rsp, 16;                             jmp   n64_binop_β
.Lassign_var_α_561_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_statement_end_α
.Lassign_var_α_561_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_561_239
                        add              rsp, 16;                             jmp   n64_binop_β
.Lassign_var_α_561_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_561_240
                        add              rsp, 16;                             jmp   n64_binop_β
.Lassign_var_α_561_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_statement_end_α
                        .size            n65_assign_var_bx, .-n65_assign_var_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 67
                        mov              r10, 9
                        add              rsp, 144;                            jmp   n67_lit_integer_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_lit_integer_bx, @function
n67_lit_integer_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n67_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_564_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_lit_integer_α
.Llit_integer_α_564_0:  .quad            10
                        .size            n67_lit_integer_bx, .-n67_lit_integer_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_565_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_call_α
.Llit_integer_α_565_0:  .quad            23
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        mov              r11, 70
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
.Lcall_α_rkfnzd567:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd567]
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
                        cmp              al, 104;                             jne   .Lcall_α_566_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n70_statement_begin_α
.Lcall_α_566_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_statement_begin_α
n69_call_β:             mov              r11, 70
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n70_statement_begin_α
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71
                        mov              r10, 10;                             jmp   n71_var_α
n70_statement_begin_β:  mov              r11, 71
                        add              rsp, 48;                             jmp   n81_lit_integer_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_571_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_coerce_numeric_α
n72_lit_integer_β:      mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Llit_integer_α_571_0:  .quad            30
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_coerce_numeric_bx, @function
n73_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 74
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_573_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_573_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_573_0
.Lcoerce_numeric_α_573_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_coerce_numeric_α
.Lcoerce_numeric_α_573_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_coerce_numeric_α
n73_coerce_numeric_β:   mov              r11, 74
                        add              rsp, 16;                             jmp   n72_lit_integer_β
                        .size            n73_coerce_numeric_bx, .-n73_coerce_numeric_bx
                        .type            n74_coerce_numeric_bx, @function
n74_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 75
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_575_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_575_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_575_0
.Lcoerce_numeric_α_575_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_cmp_test_α
.Lcoerce_numeric_α_575_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_cmp_test_α
n74_coerce_numeric_β:   mov              r11, 75
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
                        .size            n74_coerce_numeric_bx, .-n74_coerce_numeric_bx
                        .type            n75_cmp_test_bx, @function
n75_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_cmp_test_α:         sub              rsp, 16
                        mov              r11, 76
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_577_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_577_239
                        add              rsp, 16;                             jmp   n74_coerce_numeric_β
.Lcmp_test_α_577_239:                                                         jmp   n76_var_α
.Lcmp_test_α_577_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_577_240
                        add              rsp, 16;                             jmp   n74_coerce_numeric_β
.Lcmp_test_α_577_240:                                                         jmp   n76_var_α
n75_cmp_test_β:         mov              r11, 76
                        add              rsp, 16;                             jmp   n74_coerce_numeric_β
                        .size            n75_cmp_test_bx, .-n75_cmp_test_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
n76_var_β:              mov              r11, 77
                        add              rsp, 16;                             jmp   n75_cmp_test_β
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_integer_β:      mov              r11, 78
                        add              rsp, 16;                             jmp   n76_var_β
.Llit_integer_α_579_0:  .quad            1
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_binop_bx, @function
n78_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 79
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_580_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_580_7
.Lbinop_α_580_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_580_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_580_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_580_4
.Lbinop_α_580_3:        movq             xmm0, rsi
.Lbinop_α_580_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_580_7:                                                              jmp   n79_assign_α
.Lbinop_α_580_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_580_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lbinop_α_580_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
                        .size            n78_binop_bx, .-n78_binop_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
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
                        mov              rdi, qword ptr [rip + .Lassign_α_581_0]
                        .section         .rodata
.Lassign_α_581_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_581_1_s]
                        mov              r8, 23
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
                        pop              rax;                                 jmp   n80_statement_end_α
.Lassign_α_581_0:       .quad            .Lassign_α_581_0_s
.Lassign_α_581_0_s:     .string          "ix"
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 81
                        mov              r10, 10
                        add              rsp, 176;                            jmp   n56_lit_integer_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n81_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_584_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_lit_integer_α
.Llit_integer_α_584_0:  .quad            11
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_585_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_α
.Llit_integer_α_585_0:  .quad            25
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
                        mov              r11, 84
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
.Lcall_α_rkfnzd587:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd587]
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
                        cmp              al, 104;                             jne   .Lcall_α_586_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n84_statement_begin_α
.Lcall_α_586_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_statement_begin_α
n83_call_β:             mov              r11, 84
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n84_statement_begin_α
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 85
                        mov              r10, 11;                             jmp   n85_lit_integer_α
n84_statement_begin_β:  mov              r11, 85
                        add              rsp, 48;                             jmp   n88_lit_integer_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_590_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_assign_α
.Llit_integer_α_590_0:  .quad            1
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_assign_bx, @function
n86_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_591_0]
                        .section         .rodata
.Lassign_α_591_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_591_1_s]
                        mov              r8, 25
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
                        pop              rax;                                 jmp   n87_statement_end_α
.Lassign_α_591_0:       .quad            .Lassign_α_591_0_s
.Lassign_α_591_0_s:     .string          "sx"
                        .size            n86_assign_bx, .-n86_assign_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n88_lit_integer_α
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#=======================================================================================================================
# STRFILL tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n88_lit_integer_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_lit_integer_α
.Llit_integer_α_594_0:  .quad            12
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_lit_integer_bx, @function
n89_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_595_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_call_α
.Llit_integer_α_595_0:  .quad            26
                        .size            n89_lit_integer_bx, .-n89_lit_integer_bx
                        .type            n90_call_bx, @function
n90_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:             sub              rsp, 16
                        mov              r11, 91
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
.Lcall_α_rkfnzd597:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd597]
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
                        cmp              al, 104;                             jne   .Lcall_α_596_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n91_statement_begin_α
.Lcall_α_596_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_statement_begin_α
n90_call_β:             mov              r11, 91
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n91_statement_begin_α
                        .size            n90_call_bx, .-n90_call_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 92
                        mov              r10, 12;                             jmp   n92_var_α
n91_statement_begin_β:  mov              r11, 92
                        add              rsp, 48;                             jmp   n101_lit_integer_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_lit_string_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_lit_string_bx, @function
n93_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_var_α
n93_lit_string_β:       mov              r11, 94
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
.Llit_string_α_601_0:   .quad            .Llit_string_α_601_0_s
.Llit_string_α_601_0_s: .string          "k"
                        .size            n93_lit_string_bx, .-n93_lit_string_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_binop_α
n94_var_β:              mov              r11, 95
                        add              rsp, 16;                             jmp   n93_lit_string_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_binop_bx, @function
n95_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:            sub              rsp, 16
                        mov              r11, 96
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_var_α
n95_binop_β:            mov              r11, 96
                        add              rsp, 16;                             jmp   n94_var_β
                        .size            n95_binop_bx, .-n95_binop_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_lit_integer_α
n96_var_β:              mov              r11, 97
                        add              rsp, 16;                             jmp   n95_binop_β
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_binop_α
n97_lit_integer_β:      mov              r11, 98
                        add              rsp, 16;                             jmp   n96_var_β
.Llit_integer_α_605_0:  .quad            5
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_binop_bx, @function
n98_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              r11, 99
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_606_2
                        mov              rdx, 5
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_606_7
.Lbinop_α_606_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_606_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_606_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_606_4
.Lbinop_α_606_3:        movq             xmm0, rsi
.Lbinop_α_606_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_606_7:                                                              jmp   n99_assign_var_α
.Lbinop_α_606_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_606_240
                        add              rsp, 16;                             jmp   n97_lit_integer_β
.Lbinop_α_606_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_assign_var_α
n98_binop_β:            mov              r11, 99
                        add              rsp, 16;                             jmp   n97_lit_integer_β
                        .size            n98_binop_bx, .-n98_binop_bx
                        .type            n99_assign_var_bx, @function
n99_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_var_α:       sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_608_0
                        test             rsi, rsi;                            je    .Lassign_var_α_608_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_608_238
                        add              rsp, 16;                             jmp   n98_binop_β
.Lassign_var_α_608_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_statement_end_α
.Lassign_var_α_608_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_608_239
                        add              rsp, 16;                             jmp   n98_binop_β
.Lassign_var_α_608_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_608_240
                        add              rsp, 16;                             jmp   n98_binop_β
.Lassign_var_α_608_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_statement_end_α
                        .size            n99_assign_var_bx, .-n99_assign_var_bx
                        .type            n100_statement_end_bx, @function
n100_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 101
                        mov              r10, 12
                        add              rsp, 176;                            jmp   n101_lit_integer_α
                        .size            n100_statement_end_bx, .-n100_statement_end_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n101_lit_integer_α:     sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_lit_integer_α
.Llit_integer_α_611_0:  .quad            13
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_612_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_call_α
.Llit_integer_α_612_0:  .quad            27
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_call_bx, @function
n103_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        mov              r11, 104
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
.Lcall_α_rkfnzd614:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd614]
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
                        cmp              al, 104;                             jne   .Lcall_α_613_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n104_statement_begin_α
.Lcall_α_613_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_statement_begin_α
n103_call_β:            mov              r11, 104
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n104_statement_begin_α
                        .size            n103_call_bx, .-n103_call_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 105
                        mov              r10, 13;                             jmp   n105_var_α
n104_statement_begin_β: mov              r11, 105
                        add              rsp, 48;                             jmp   n114_lit_integer_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_var_bx, @function
n105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_lit_string_α
                        .size            n105_var_bx, .-n105_var_bx
                        .type            n106_lit_string_bx, @function
n106_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_618_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_var_α
n106_lit_string_β:      mov              r11, 107
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
.Llit_string_α_618_0:   .quad            .Llit_string_α_618_0_s
.Llit_string_α_618_0_s: .string          "a_much_longer_key_"
                        .size            n106_lit_string_bx, .-n106_lit_string_bx
                        .type            n107_var_bx, @function
n107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_binop_α
n107_var_β:             mov              r11, 108
                        add              rsp, 16;                             jmp   n106_lit_string_β
                        .size            n107_var_bx, .-n107_var_bx
                        .type            n108_binop_bx, @function
n108_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           sub              rsp, 16
                        mov              r11, 109
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_var_α
n108_binop_β:           mov              r11, 109
                        add              rsp, 16;                             jmp   n107_var_β
                        .size            n108_binop_bx, .-n108_binop_bx
                        .type            n109_var_bx, @function
n109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_lit_integer_α
n109_var_β:             mov              r11, 110
                        add              rsp, 16;                             jmp   n108_binop_β
                        .size            n109_var_bx, .-n109_var_bx
                        .type            n110_lit_integer_bx, @function
n110_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_binop_α
n110_lit_integer_β:     mov              r11, 111
                        add              rsp, 16;                             jmp   n109_var_β
.Llit_integer_α_622_0:  .quad            7
                        .size            n110_lit_integer_bx, .-n110_lit_integer_bx
                        .type            n111_binop_bx, @function
n111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              r11, 112
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_623_2
                        mov              rdx, 7
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_623_7
.Lbinop_α_623_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_623_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_623_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_623_4
.Lbinop_α_623_3:        movq             xmm0, rsi
.Lbinop_α_623_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_623_7:                                                              jmp   n112_assign_var_α
.Lbinop_α_623_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_623_240
                        add              rsp, 16;                             jmp   n110_lit_integer_β
.Lbinop_α_623_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_assign_var_α
n111_binop_β:           mov              r11, 112
                        add              rsp, 16;                             jmp   n110_lit_integer_β
                        .size            n111_binop_bx, .-n111_binop_bx
                        .type            n112_assign_var_bx, @function
n112_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_var_α:      sub              rsp, 16
                        mov              r11, 113
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_625_0
                        test             rsi, rsi;                            je    .Lassign_var_α_625_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_625_238
                        add              rsp, 16;                             jmp   n111_binop_β
.Lassign_var_α_625_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_end_α
.Lassign_var_α_625_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_625_239
                        add              rsp, 16;                             jmp   n111_binop_β
.Lassign_var_α_625_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_625_240
                        add              rsp, 16;                             jmp   n111_binop_β
.Lassign_var_α_625_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_end_α
                        .size            n112_assign_var_bx, .-n112_assign_var_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 114
                        mov              r10, 13
                        add              rsp, 176;                            jmp   n114_lit_integer_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n114_lit_integer_α:     sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_628_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_lit_integer_α
.Llit_integer_α_628_0:  .quad            14
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_lit_integer_bx, @function
n115_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              r11, 116
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_629_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_call_α
.Llit_integer_α_629_0:  .quad            28
                        .size            n115_lit_integer_bx, .-n115_lit_integer_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            sub              rsp, 16
                        mov              r11, 117
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
.Lcall_α_rkfnzd631:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd631]
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
                        cmp              al, 104;                             jne   .Lcall_α_630_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n117_statement_begin_α
.Lcall_α_630_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_statement_begin_α
n116_call_β:            mov              r11, 117
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n117_statement_begin_α
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_statement_begin_bx, @function
n117_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α: mov              r11, 118
                        mov              r10, 14;                             jmp   n118_var_α
n117_statement_begin_β: mov              r11, 118
                        add              rsp, 48;                             jmp   n128_lit_integer_α
                        .size            n117_statement_begin_bx, .-n117_statement_begin_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
n119_lit_integer_β:     mov              r11, 120
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Llit_integer_α_635_0:  .quad            20
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_coerce_numeric_bx, @function
n120_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 121
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_637_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_637_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_637_0
.Lcoerce_numeric_α_637_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_coerce_numeric_α
.Lcoerce_numeric_α_637_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_coerce_numeric_α
n120_coerce_numeric_β:  mov              r11, 121
                        add              rsp, 16;                             jmp   n119_lit_integer_β
                        .size            n120_coerce_numeric_bx, .-n120_coerce_numeric_bx
                        .type            n121_coerce_numeric_bx, @function
n121_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 122
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_639_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_639_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_639_0
.Lcoerce_numeric_α_639_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_cmp_test_α
.Lcoerce_numeric_α_639_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_cmp_test_α
n121_coerce_numeric_β:  mov              r11, 122
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
                        .size            n121_coerce_numeric_bx, .-n121_coerce_numeric_bx
                        .type            n122_cmp_test_bx, @function
n122_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_cmp_test_α:        sub              rsp, 16
                        mov              r11, 123
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_641_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_641_239
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lcmp_test_α_641_239:                                                         jmp   n123_var_α
.Lcmp_test_α_641_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_641_240
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lcmp_test_α_641_240:                                                         jmp   n123_var_α
n122_cmp_test_β:        mov              r11, 123
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
                        .size            n122_cmp_test_bx, .-n122_cmp_test_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_lit_integer_α
n123_var_β:             mov              r11, 124
                        add              rsp, 16;                             jmp   n122_cmp_test_β
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_binop_α
n124_lit_integer_β:     mov              r11, 125
                        add              rsp, 16;                             jmp   n123_var_β
.Llit_integer_α_643_0:  .quad            1
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_binop_bx, @function
n125_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:           sub              rsp, 16
                        mov              r11, 126
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_644_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_644_7
.Lbinop_α_644_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_644_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_644_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_644_4
.Lbinop_α_644_3:        movq             xmm0, rsi
.Lbinop_α_644_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_644_7:                                                              jmp   n126_assign_α
.Lbinop_α_644_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_644_240
                        add              rsp, 16;                             jmp   n124_lit_integer_β
.Lbinop_α_644_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_assign_α
                        .size            n125_binop_bx, .-n125_binop_bx
                        .type            n126_assign_bx, @function
n126_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_645_0]
                        .section         .rodata
.Lassign_α_645_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_645_1_s]
                        mov              r8, 28
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
                        pop              rax;                                 jmp   n127_statement_end_α
.Lassign_α_645_0:       .quad            .Lassign_α_645_0_s
.Lassign_α_645_0_s:     .string          "sx"
                        .size            n126_assign_bx, .-n126_assign_bx
                        .type            n127_statement_end_bx, @function
n127_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 128
                        mov              r10, 14
                        add              rsp, 176;                            jmp   n88_lit_integer_α
                        .size            n127_statement_end_bx, .-n127_statement_end_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n128_lit_integer_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_648_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_lit_integer_α
.Llit_integer_α_648_0:  .quad            15
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_649_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_call_α
.Llit_integer_α_649_0:  .quad            29
                        .size            n129_lit_integer_bx, .-n129_lit_integer_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            sub              rsp, 16
                        mov              r11, 131
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
.Lcall_α_rkfnzd651:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd651]
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
                        cmp              al, 104;                             jne   .Lcall_α_650_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n131_statement_begin_α
.Lcall_α_650_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_statement_begin_α
n130_call_β:            mov              r11, 131
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n131_statement_begin_α
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 132
                        mov              r10, 15;                             jmp   n132_var_α
n131_statement_begin_β: mov              r11, 132
                        add              rsp, 48;                             jmp   n137_lit_integer_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_lit_string_α
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_lit_string_bx, @function
n133_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_655_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_lit_integer_α
n133_lit_string_β:      mov              r11, 134
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Llit_string_α_655_0:   .quad            .Llit_string_α_655_0_s
.Llit_string_α_655_0_s: .string          "17"
                        .size            n133_lit_string_bx, .-n133_lit_string_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_656_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_assign_var_α
n134_lit_integer_β:     mov              r11, 135
                        add              rsp, 16;                             jmp   n133_lit_string_β
.Llit_integer_α_656_0:  .quad            1700
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_assign_var_bx, @function
n135_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_var_α:      sub              rsp, 16
                        mov              r11, 136
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_658_0
                        test             rsi, rsi;                            je    .Lassign_var_α_658_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_658_238
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lassign_var_α_658_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_statement_end_α
.Lassign_var_α_658_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_658_239
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lassign_var_α_658_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_658_240
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lassign_var_α_658_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_statement_end_α
                        .size            n135_assign_var_bx, .-n135_assign_var_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137
                        mov              r10, 15
                        add              rsp, 112;                            jmp   n137_lit_integer_α
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_lit_integer_bx, @function
n137_lit_integer_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_661_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_lit_integer_α
.Llit_integer_α_661_0:  .quad            16
                        .size            n137_lit_integer_bx, .-n137_lit_integer_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_call_α
.Llit_integer_α_662_0:  .quad            31
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_call_bx, @function
n139_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            sub              rsp, 16
                        mov              r11, 140
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
.Lcall_α_rkfnzd664:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd664]
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
                        cmp              al, 104;                             jne   .Lcall_α_663_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n140_statement_begin_α
.Lcall_α_663_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_statement_begin_α
n139_call_β:            mov              r11, 140
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n140_statement_begin_α
                        .size            n139_call_bx, .-n139_call_bx
                        .type            n140_statement_begin_bx, @function
n140_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 141
                        mov              r10, 16;                             jmp   n141_lit_integer_α
n140_statement_begin_β: mov              r11, 141
                        add              rsp, 48;                             jmp   n144_lit_integer_α
                        .size            n140_statement_begin_bx, .-n140_statement_begin_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_667_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_assign_α
.Llit_integer_α_667_0:  .quad            1
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_assign_bx, @function
n142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:          mov              r11, 143
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_668_0]
                        .section         .rodata
.Lassign_α_668_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_668_1_s]
                        mov              r8, 31
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
                        pop              rax;                                 jmp   n143_statement_end_α
.Lassign_α_668_0:       .quad            .Lassign_α_668_0_s
.Lassign_α_668_0_s:     .string          "rx"
                        .size            n142_assign_bx, .-n142_assign_bx
                        .type            n143_statement_end_bx, @function
n143_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   mov              r11, 144
                        mov              r10, 16
                        add              rsp, 64;                             jmp   n144_lit_integer_α
                        .size            n143_statement_end_bx, .-n143_statement_end_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#=======================================================================================================================
# REALFIL tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 145
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_671_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_lit_integer_α
.Llit_integer_α_671_0:  .quad            17
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_lit_integer_bx, @function
n145_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              r11, 146
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_672_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_call_α
.Llit_integer_α_672_0:  .quad            32
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_call_bx, @function
n146_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            sub              rsp, 16
                        mov              r11, 147
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
.Lcall_α_rkfnzd674:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd674]
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
                        cmp              al, 104;                             jne   .Lcall_α_673_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n147_statement_begin_α
.Lcall_α_673_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_statement_begin_α
n146_call_β:            mov              r11, 147
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n147_statement_begin_α
                        .size            n146_call_bx, .-n146_call_bx
                        .type            n147_statement_begin_bx, @function
n147_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α: mov              r11, 148
                        mov              r10, 17;                             jmp   n148_var_α
n147_statement_begin_β: mov              r11, 148
                        add              rsp, 48;                             jmp   n157_lit_integer_α
                        .size            n147_statement_begin_bx, .-n147_statement_begin_bx
                        .type            n148_var_bx, @function
n148_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_var_α
                        .size            n148_var_bx, .-n148_var_bx
                        .type            n149_var_bx, @function
n149_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              r11, 150
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_lit_real_α
n149_var_β:             mov              r11, 150
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
                        .size            n149_var_bx, .-n149_var_bx
                        .type            n150_lit_real_bx, @function
n150_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_real_α:        sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_679_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_binop_α
.Llit_real_α_679_0:     .quad            4611686018427387904
                        .size            n150_lit_real_bx, .-n150_lit_real_bx
                        .type            n151_binop_bx, @function
n151_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           sub              rsp, 16
                        mov              r11, 152
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_680_240
                        add              rsp, 32;                             jmp   n149_var_β
.Lbinop_α_680_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
n151_binop_β:           mov              r11, 152
                        add              rsp, 32;                             jmp   n149_var_β
                        .size            n151_binop_bx, .-n151_binop_bx
                        .type            n152_var_bx, @function
n152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
n152_var_β:             mov              r11, 153
                        add              rsp, 16;                             jmp   n151_binop_β
                        .size            n152_var_bx, .-n152_var_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_682_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_binop_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n152_var_β
.Llit_integer_α_682_0:  .quad            11
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_binop_bx, @function
n154_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_683_2
                        mov              rdx, 11
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_683_7
.Lbinop_α_683_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_683_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_683_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_683_4
.Lbinop_α_683_3:        movq             xmm0, rsi
.Lbinop_α_683_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_683_7:                                                              jmp   n155_assign_var_α
.Lbinop_α_683_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_683_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lbinop_α_683_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_assign_var_α
n154_binop_β:           mov              r11, 155
                        add              rsp, 16;                             jmp   n153_lit_integer_β
                        .size            n154_binop_bx, .-n154_binop_bx
                        .type            n155_assign_var_bx, @function
n155_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_var_α:      sub              rsp, 16
                        mov              r11, 156
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_685_0
                        test             rsi, rsi;                            je    .Lassign_var_α_685_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_685_238
                        add              rsp, 16;                             jmp   n154_binop_β
.Lassign_var_α_685_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_statement_end_α
.Lassign_var_α_685_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_685_239
                        add              rsp, 16;                             jmp   n154_binop_β
.Lassign_var_α_685_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_685_240
                        add              rsp, 16;                             jmp   n154_binop_β
.Lassign_var_α_685_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_statement_end_α
                        .size            n155_assign_var_bx, .-n155_assign_var_bx
                        .type            n156_statement_end_bx, @function
n156_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157
                        mov              r10, 17
                        add              rsp, 176;                            jmp   n157_lit_integer_α
                        .size            n156_statement_end_bx, .-n156_statement_end_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALFIL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n157_lit_integer_α:     sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_688_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_lit_integer_α
.Llit_integer_α_688_0:  .quad            18
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_lit_integer_bx, @function
n158_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_689_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_call_α
.Llit_integer_α_689_0:  .quad            33
                        .size            n158_lit_integer_bx, .-n158_lit_integer_bx
                        .type            n159_call_bx, @function
n159_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 160
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
.Lcall_α_rkfnzd691:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd691]
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
                        cmp              al, 104;                             jne   .Lcall_α_690_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n160_statement_begin_α
.Lcall_α_690_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_statement_begin_α
n159_call_β:            mov              r11, 160
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n160_statement_begin_α
                        .size            n159_call_bx, .-n159_call_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 161
                        mov              r10, 18;                             jmp   n161_var_α
n160_statement_begin_β: mov              r11, 161
                        add              rsp, 48;                             jmp   n171_lit_integer_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_var_bx, @function
n161_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_lit_integer_α
                        .size            n161_var_bx, .-n161_var_bx
                        .type            n162_lit_integer_bx, @function
n162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_695_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_coerce_numeric_α
n162_lit_integer_β:     mov              r11, 163
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Llit_integer_α_695_0:  .quad            12
                        .size            n162_lit_integer_bx, .-n162_lit_integer_bx
                        .type            n163_coerce_numeric_bx, @function
n163_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_697_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_697_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_697_0
.Lcoerce_numeric_α_697_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_coerce_numeric_α
.Lcoerce_numeric_α_697_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_coerce_numeric_α
n163_coerce_numeric_β:  mov              r11, 164
                        add              rsp, 16;                             jmp   n162_lit_integer_β
                        .size            n163_coerce_numeric_bx, .-n163_coerce_numeric_bx
                        .type            n164_coerce_numeric_bx, @function
n164_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_699_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_699_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_699_0
.Lcoerce_numeric_α_699_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_cmp_test_α
.Lcoerce_numeric_α_699_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_cmp_test_α
n164_coerce_numeric_β:  mov              r11, 165
                        add              rsp, 16;                             jmp   n163_coerce_numeric_β
                        .size            n164_coerce_numeric_bx, .-n164_coerce_numeric_bx
                        .type            n165_cmp_test_bx, @function
n165_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_cmp_test_α:        sub              rsp, 16
                        mov              r11, 166
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_701_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_701_239
                        add              rsp, 16;                             jmp   n164_coerce_numeric_β
.Lcmp_test_α_701_239:                                                         jmp   n166_var_α
.Lcmp_test_α_701_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_701_240
                        add              rsp, 16;                             jmp   n164_coerce_numeric_β
.Lcmp_test_α_701_240:                                                         jmp   n166_var_α
n165_cmp_test_β:        mov              r11, 166
                        add              rsp, 16;                             jmp   n164_coerce_numeric_β
                        .size            n165_cmp_test_bx, .-n165_cmp_test_bx
                        .type            n166_var_bx, @function
n166_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
n166_var_β:             mov              r11, 167
                        add              rsp, 16;                             jmp   n165_cmp_test_β
                        .size            n166_var_bx, .-n166_var_bx
                        .type            n167_lit_integer_bx, @function
n167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_703_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_binop_α
n167_lit_integer_β:     mov              r11, 168
                        add              rsp, 16;                             jmp   n166_var_β
.Llit_integer_α_703_0:  .quad            1
                        .size            n167_lit_integer_bx, .-n167_lit_integer_bx
                        .type            n168_binop_bx, @function
n168_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_704_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_704_7
.Lbinop_α_704_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_704_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_704_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_704_4
.Lbinop_α_704_3:        movq             xmm0, rsi
.Lbinop_α_704_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_704_7:                                                              jmp   n169_assign_α
.Lbinop_α_704_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_704_240
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Lbinop_α_704_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_assign_α
                        .size            n168_binop_bx, .-n168_binop_bx
                        .type            n169_assign_bx, @function
n169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_705_0]
                        .section         .rodata
.Lassign_α_705_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_705_1_s]
                        mov              r8, 33
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
                        pop              rax;                                 jmp   n170_statement_end_α
.Lassign_α_705_0:       .quad            .Lassign_α_705_0_s
.Lassign_α_705_0_s:     .string          "rx"
                        .size            n169_assign_bx, .-n169_assign_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        mov              r10, 18
                        add              rsp, 176;                            jmp   n144_lit_integer_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_lit_integer_bx, @function
n171_lit_integer_bx:
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n171_lit_integer_α:     sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_708_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_lit_integer_α
.Llit_integer_α_708_0:  .quad            19
                        .size            n171_lit_integer_bx, .-n171_lit_integer_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_709_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_call_α
.Llit_integer_α_709_0:  .quad            34
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_call_bx, @function
n173_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            sub              rsp, 16
                        mov              r11, 174
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
.Lcall_α_rkfnzd711:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd711]
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
                        cmp              al, 104;                             jne   .Lcall_α_710_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n174_statement_begin_α
.Lcall_α_710_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_statement_begin_α
n173_call_β:            mov              r11, 174
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n174_statement_begin_α
                        .size            n173_call_bx, .-n173_call_bx
                        .type            n174_statement_begin_bx, @function
n174_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α: mov              r11, 175
                        mov              r10, 19;                             jmp   n175_var_α
n174_statement_begin_β: mov              r11, 175
                        add              rsp, 48;                             jmp   n180_lit_integer_α
                        .size            n174_statement_begin_bx, .-n174_statement_begin_bx
                        .type            n175_var_bx, @function
n175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:             sub              rsp, 16
                        mov              r11, 176
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_lit_string_α
                        .size            n175_var_bx, .-n175_var_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_715_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_lit_integer_α
n176_lit_string_β:      mov              r11, 177
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n174_statement_begin_β
.Llit_string_α_715_0:   .quad            .Llit_string_α_715_0_s
.Llit_string_α_715_0_s: .string          ""
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_lit_integer_bx, @function
n177_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:     sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_716_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_assign_var_α
n177_lit_integer_β:     mov              r11, 178
                        add              rsp, 16;                             jmp   n176_lit_string_β
.Llit_integer_α_716_0:  .quad            99
                        .size            n177_lit_integer_bx, .-n177_lit_integer_bx
                        .type            n178_assign_var_bx, @function
n178_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_var_α:      sub              rsp, 16
                        mov              r11, 179
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_718_0
                        test             rsi, rsi;                            je    .Lassign_var_α_718_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_718_238
                        add              rsp, 16;                             jmp   n177_lit_integer_β
.Lassign_var_α_718_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_statement_end_α
.Lassign_var_α_718_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_718_239
                        add              rsp, 16;                             jmp   n177_lit_integer_β
.Lassign_var_α_718_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_718_240
                        add              rsp, 16;                             jmp   n177_lit_integer_β
.Lassign_var_α_718_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_statement_end_α
                        .size            n178_assign_var_bx, .-n178_assign_var_bx
                        .type            n179_statement_end_bx, @function
n179_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 180
                        mov              r10, 19
                        add              rsp, 112;                            jmp   n180_lit_integer_α
                        .size            n179_statement_end_bx, .-n179_statement_end_bx
                        .type            n180_lit_integer_bx, @function
n180_lit_integer_bx:
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n180_lit_integer_α:     sub              rsp, 16
                        mov              r11, 181
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_721_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_lit_integer_α
.Llit_integer_α_721_0:  .quad            20
                        .size            n180_lit_integer_bx, .-n180_lit_integer_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 182
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_722_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_call_α
.Llit_integer_α_722_0:  .quad            37
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_call_bx, @function
n182_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:            sub              rsp, 16
                        mov              r11, 183
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
.Lcall_α_rkfnzd724:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd724]
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
                        cmp              al, 104;                             jne   .Lcall_α_723_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n183_statement_begin_α
.Lcall_α_723_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_statement_begin_α
n182_call_β:            mov              r11, 183
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n183_statement_begin_α
                        .size            n182_call_bx, .-n182_call_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α: mov              r11, 184
                        mov              r10, 20;                             jmp   n184_var_α
n183_statement_begin_β: mov              r11, 184
                        add              rsp, 48;                             jmp   n189_lit_integer_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_lit_integer_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_lit_integer_bx, @function
n185_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     sub              rsp, 16
                        mov              r11, 186
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_728_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_lit_integer_α
n185_lit_integer_β:     mov              r11, 186
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
.Llit_integer_α_728_0:  .quad            17
                        .size            n185_lit_integer_bx, .-n185_lit_integer_bx
                        .type            n186_lit_integer_bx, @function
n186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_729_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_assign_var_α
n186_lit_integer_β:     mov              r11, 187
                        add              rsp, 16;                             jmp   n185_lit_integer_β
.Llit_integer_α_729_0:  .quad            1717
                        .size            n186_lit_integer_bx, .-n186_lit_integer_bx
                        .type            n187_assign_var_bx, @function
n187_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_var_α:      sub              rsp, 16
                        mov              r11, 188
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_731_0
                        test             rsi, rsi;                            je    .Lassign_var_α_731_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_731_238
                        add              rsp, 16;                             jmp   n186_lit_integer_β
.Lassign_var_α_731_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_statement_end_α
.Lassign_var_α_731_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_731_239
                        add              rsp, 16;                             jmp   n186_lit_integer_β
.Lassign_var_α_731_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_731_240
                        add              rsp, 16;                             jmp   n186_lit_integer_β
.Lassign_var_α_731_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_statement_end_α
                        .size            n187_assign_var_bx, .-n187_assign_var_bx
                        .type            n188_statement_end_bx, @function
n188_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 189
                        mov              r10, 20
                        add              rsp, 112;                            jmp   n189_lit_integer_α
                        .size            n188_statement_end_bx, .-n188_statement_end_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n189_lit_integer_α:     sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_734_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_lit_integer_α
.Llit_integer_α_734_0:  .quad            21
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_lit_integer_bx, @function
n190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_735_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_call_α
.Llit_integer_α_735_0:  .quad            38
                        .size            n190_lit_integer_bx, .-n190_lit_integer_bx
                        .type            n191_call_bx, @function
n191_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_α:            sub              rsp, 16
                        mov              r11, 192
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
.Lcall_α_rkfnzd737:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd737]
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
                        cmp              al, 104;                             jne   .Lcall_α_736_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n192_statement_begin_α
.Lcall_α_736_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_statement_begin_α
n191_call_β:            mov              r11, 192
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n192_statement_begin_α
                        .size            n191_call_bx, .-n191_call_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 193
                        mov              r10, 21;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 193
                        add              rsp, 48;                             jmp   n206_lit_integer_α
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_var_α
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 195
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_lit_integer_α
n194_var_β:             mov              r11, 195
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_β
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_lit_integer_bx, @function
n195_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_742_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_subscript_α
n195_lit_integer_β:     mov              r11, 196
                        add              rsp, 16;                             jmp   n194_var_β
.Llit_integer_α_742_0:  .quad            17
                        .size            n195_lit_integer_bx, .-n195_lit_integer_bx
                        .type            n196_subscript_bx, @function
n196_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_subscript_α:       sub              rsp, 16
                        mov              r11, 197
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_743_240
                        add              rsp, 16;                             jmp   n195_lit_integer_β
.Lsubscript_α_743_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_deref_α
n196_subscript_β:       mov              r11, 197
                        add              rsp, 16;                             jmp   n195_lit_integer_β
                        .size            n196_subscript_bx, .-n196_subscript_bx
                        .type            n197_deref_bx, @function
n197_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_deref_α:           sub              rsp, 16
                        mov              r11, 198
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
                        cmp              al, 104;                             jne   .Lderef_α_744_240
                        add              rsp, 16;                             jmp   n196_subscript_β
.Lderef_α_744_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_binop_α
n197_deref_β:           mov              r11, 198
                        add              rsp, 16;                             jmp   n196_subscript_β
                        .size            n197_deref_bx, .-n197_deref_bx
                        .type            n198_binop_bx, @function
n198_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              r11, 199
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_745_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_745_7
.Lbinop_α_745_2:        and              edx, 1;                              jz    .Lbinop_α_745_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_745_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_745_4
.Lbinop_α_745_3:        movq             xmm0, rsi
.Lbinop_α_745_4:        cmp              cl, 5;                               je    .Lbinop_α_745_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_745_6
.Lbinop_α_745_5:        movq             xmm1, rdi
.Lbinop_α_745_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_745_7:                                                              jmp   n199_var_α
.Lbinop_α_745_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_745_240
                        add              rsp, 16;                             jmp   n197_deref_β
.Lbinop_α_745_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_var_α
n198_binop_β:           mov              r11, 199
                        add              rsp, 16;                             jmp   n197_deref_β
                        .size            n198_binop_bx, .-n198_binop_bx
                        .type            n199_var_bx, @function
n199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             sub              rsp, 16
                        mov              r11, 200
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_lit_string_α
n199_var_β:             mov              r11, 200
                        add              rsp, 16;                             jmp   n198_binop_β
                        .size            n199_var_bx, .-n199_var_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      sub              rsp, 16
                        mov              r11, 201
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_747_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_subscript_α
n200_lit_string_β:      mov              r11, 201
                        add              rsp, 16;                             jmp   n199_var_β
.Llit_string_α_747_0:   .quad            .Llit_string_α_747_0_s
.Llit_string_α_747_0_s: .string          "17"
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_subscript_bx, @function
n201_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_subscript_α:       sub              rsp, 16
                        mov              r11, 202
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_748_240
                        add              rsp, 16;                             jmp   n200_lit_string_β
.Lsubscript_α_748_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_deref_α
n201_subscript_β:       mov              r11, 202
                        add              rsp, 16;                             jmp   n200_lit_string_β
                        .size            n201_subscript_bx, .-n201_subscript_bx
                        .type            n202_deref_bx, @function
n202_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_deref_α:           sub              rsp, 16
                        mov              r11, 203
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
                        cmp              al, 104;                             jne   .Lderef_α_749_240
                        add              rsp, 16;                             jmp   n201_subscript_β
.Lderef_α_749_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_binop_α
n202_deref_β:           mov              r11, 203
                        add              rsp, 16;                             jmp   n201_subscript_β
                        .size            n202_deref_bx, .-n202_deref_bx
                        .type            n203_binop_bx, @function
n203_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           sub              rsp, 16
                        mov              r11, 204
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_750_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_750_7
.Lbinop_α_750_2:        and              edx, 1;                              jz    .Lbinop_α_750_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_750_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_750_4
.Lbinop_α_750_3:        movq             xmm0, rsi
.Lbinop_α_750_4:        cmp              cl, 5;                               je    .Lbinop_α_750_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_750_6
.Lbinop_α_750_5:        movq             xmm1, rdi
.Lbinop_α_750_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_750_7:                                                              jmp   n204_assign_α
.Lbinop_α_750_0:        mov              rdi, qword ptr [rsp + 80]            # binop
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
                        cmp              al, 104;                             jne   .Lbinop_α_750_240
                        add              rsp, 16;                             jmp   n202_deref_β
.Lbinop_α_750_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_assign_α
                        .size            n203_binop_bx, .-n203_binop_bx
                        .type            n204_assign_bx, @function
n204_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 205
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_751_0]
                        .section         .rodata
.Lassign_α_751_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_751_1_s]
                        mov              r8, 38
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
                        pop              rax;                                 jmp   n205_statement_end_α
.Lassign_α_751_0:       .quad            .Lassign_α_751_0_s
.Lassign_α_751_0_s:     .string          "ZS"
                        .size            n204_assign_bx, .-n204_assign_bx
                        .type            n205_statement_end_bx, @function
n205_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 206
                        mov              r10, 21
                        add              rsp, 224;                            jmp   n206_lit_integer_α
                        .size            n205_statement_end_bx, .-n205_statement_end_bx
                        .type            n206_lit_integer_bx, @function
n206_lit_integer_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n206_lit_integer_α:     sub              rsp, 16
                        mov              r11, 207
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_754_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_lit_integer_α
.Llit_integer_α_754_0:  .quad            22
                        .size            n206_lit_integer_bx, .-n206_lit_integer_bx
                        .type            n207_lit_integer_bx, @function
n207_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:     sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_755_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_call_α
.Llit_integer_α_755_0:  .quad            40
                        .size            n207_lit_integer_bx, .-n207_lit_integer_bx
                        .type            n208_call_bx, @function
n208_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            sub              rsp, 16
                        mov              r11, 209
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
.Lcall_α_rkfnzd757:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd757]
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
                        cmp              al, 104;                             jne   .Lcall_α_756_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n209_statement_begin_α
.Lcall_α_756_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_statement_begin_α
n208_call_β:            mov              r11, 209
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n209_statement_begin_α
                        .size            n208_call_bx, .-n208_call_bx
                        .type            n209_statement_begin_bx, @function
n209_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α: mov              r11, 210
                        mov              r10, 22;                             jmp   n210_var_α
n209_statement_begin_β: mov              r11, 210
                        add              rsp, 48;                             jmp   n215_lit_integer_α
                        .size            n209_statement_begin_bx, .-n209_statement_begin_bx
                        .type            n210_var_bx, @function
n210_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              r11, 211
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_lit_integer_α
                        .size            n210_var_bx, .-n210_var_bx
                        .type            n211_lit_integer_bx, @function
n211_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:     sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_761_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_lit_integer_α
n211_lit_integer_β:     mov              r11, 212
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n209_statement_begin_β
.Llit_integer_α_761_0:  .quad            5
                        .size            n211_lit_integer_bx, .-n211_lit_integer_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_762_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_assign_var_α
n212_lit_integer_β:     mov              r11, 213
                        add              rsp, 16;                             jmp   n211_lit_integer_β
.Llit_integer_α_762_0:  .quad            500
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_assign_var_bx, @function
n213_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_var_α:      sub              rsp, 16
                        mov              r11, 214
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_764_0
                        test             rsi, rsi;                            je    .Lassign_var_α_764_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_764_238
                        add              rsp, 16;                             jmp   n212_lit_integer_β
.Lassign_var_α_764_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_statement_end_α
.Lassign_var_α_764_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_764_239
                        add              rsp, 16;                             jmp   n212_lit_integer_β
.Lassign_var_α_764_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_764_240
                        add              rsp, 16;                             jmp   n212_lit_integer_β
.Lassign_var_α_764_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_statement_end_α
                        .size            n213_assign_var_bx, .-n213_assign_var_bx
                        .type            n214_statement_end_bx, @function
n214_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:   mov              r11, 215
                        mov              r10, 22
                        add              rsp, 112;                            jmp   n215_lit_integer_α
                        .size            n214_statement_end_bx, .-n214_statement_end_bx
                        .type            n215_lit_integer_bx, @function
n215_lit_integer_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n215_lit_integer_α:     sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_767_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_lit_integer_α
.Llit_integer_α_767_0:  .quad            23
                        .size            n215_lit_integer_bx, .-n215_lit_integer_bx
                        .type            n216_lit_integer_bx, @function
n216_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_768_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_call_α
.Llit_integer_α_768_0:  .quad            41
                        .size            n216_lit_integer_bx, .-n216_lit_integer_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        mov              r11, 218
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
.Lcall_α_rkfnzd770:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd770]
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
                        cmp              al, 104;                             jne   .Lcall_α_769_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n218_statement_begin_α
.Lcall_α_769_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_statement_begin_α
n217_call_β:            mov              r11, 218
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n218_statement_begin_α
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_statement_begin_bx, @function
n218_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 219
                        mov              r10, 23;                             jmp   n219_var_α
n218_statement_begin_β: mov              r11, 219
                        add              rsp, 48;                             jmp   n224_lit_integer_α
                        .size            n218_statement_begin_bx, .-n218_statement_begin_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_lit_integer_α
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_lit_integer_bx, @function
n220_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:     sub              rsp, 16
                        mov              r11, 221
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_774_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_lit_integer_α
n220_lit_integer_β:     mov              r11, 221
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
.Llit_integer_α_774_0:  .quad            5
                        .size            n220_lit_integer_bx, .-n220_lit_integer_bx
                        .type            n221_lit_integer_bx, @function
n221_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_775_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_assign_var_α
n221_lit_integer_β:     mov              r11, 222
                        add              rsp, 16;                             jmp   n220_lit_integer_β
.Llit_integer_α_775_0:  .quad            501
                        .size            n221_lit_integer_bx, .-n221_lit_integer_bx
                        .type            n222_assign_var_bx, @function
n222_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_var_α:      sub              rsp, 16
                        mov              r11, 223
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_777_0
                        test             rsi, rsi;                            je    .Lassign_var_α_777_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_777_238
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lassign_var_α_777_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_statement_end_α
.Lassign_var_α_777_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_777_239
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lassign_var_α_777_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_777_240
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lassign_var_α_777_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_statement_end_α
                        .size            n222_assign_var_bx, .-n222_assign_var_bx
                        .type            n223_statement_end_bx, @function
n223_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 224
                        mov              r10, 23
                        add              rsp, 112;                            jmp   n224_lit_integer_α
                        .size            n223_statement_end_bx, .-n223_statement_end_bx
                        .type            n224_lit_integer_bx, @function
n224_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n224_lit_integer_α:     sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_780_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_lit_integer_α
.Llit_integer_α_780_0:  .quad            24
                        .size            n224_lit_integer_bx, .-n224_lit_integer_bx
                        .type            n225_lit_integer_bx, @function
n225_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_781_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_call_α
.Llit_integer_α_781_0:  .quad            42
                        .size            n225_lit_integer_bx, .-n225_lit_integer_bx
                        .type            n226_call_bx, @function
n226_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_α:            sub              rsp, 16
                        mov              r11, 227
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
.Lcall_α_rkfnzd783:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd783]
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
                        cmp              al, 104;                             jne   .Lcall_α_782_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n227_statement_begin_α
.Lcall_α_782_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_statement_begin_α
n226_call_β:            mov              r11, 227
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n227_statement_begin_α
                        .size            n226_call_bx, .-n226_call_bx
                        .type            n227_statement_begin_bx, @function
n227_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_begin_α: mov              r11, 228
                        mov              r10, 24;                             jmp   n228_var_α
n227_statement_begin_β: mov              r11, 228
                        add              rsp, 48;                             jmp   n236_lit_integer_α
                        .size            n227_statement_begin_bx, .-n227_statement_begin_bx
                        .type            n228_var_bx, @function
n228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_var_α
                        .size            n228_var_bx, .-n228_var_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_lit_integer_α
n229_var_β:             mov              r11, 230
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n227_statement_begin_β
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     sub              rsp, 16
                        mov              r11, 231
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_788_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_subscript_α
n230_lit_integer_β:     mov              r11, 231
                        add              rsp, 16;                             jmp   n229_var_β
.Llit_integer_α_788_0:  .quad            5
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_subscript_bx, @function
n231_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_subscript_α:       sub              rsp, 16
                        mov              r11, 232
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_789_240
                        add              rsp, 16;                             jmp   n230_lit_integer_β
.Lsubscript_α_789_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_deref_α
n231_subscript_β:       mov              r11, 232
                        add              rsp, 16;                             jmp   n230_lit_integer_β
                        .size            n231_subscript_bx, .-n231_subscript_bx
                        .type            n232_deref_bx, @function
n232_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_deref_α:           sub              rsp, 16
                        mov              r11, 233
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
                        cmp              al, 104;                             jne   .Lderef_α_790_240
                        add              rsp, 16;                             jmp   n231_subscript_β
.Lderef_α_790_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_binop_α
n232_deref_β:           mov              r11, 233
                        add              rsp, 16;                             jmp   n231_subscript_β
                        .size            n232_deref_bx, .-n232_deref_bx
                        .type            n233_binop_bx, @function
n233_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:           sub              rsp, 16
                        mov              r11, 234
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_791_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_791_7
.Lbinop_α_791_2:        and              edx, 1;                              jz    .Lbinop_α_791_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_791_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_791_4
.Lbinop_α_791_3:        movq             xmm0, rsi
.Lbinop_α_791_4:        cmp              cl, 5;                               je    .Lbinop_α_791_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_791_6
.Lbinop_α_791_5:        movq             xmm1, rdi
.Lbinop_α_791_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_791_7:                                                              jmp   n234_assign_α
.Lbinop_α_791_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_791_240
                        add              rsp, 16;                             jmp   n232_deref_β
.Lbinop_α_791_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_assign_α
                        .size            n233_binop_bx, .-n233_binop_bx
                        .type            n234_assign_bx, @function
n234_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              r11, 235
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_792_0]
                        .section         .rodata
.Lassign_α_792_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_792_1_s]
                        mov              r8, 42
                        mov              r9, 24
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
                        pop              rax;                                 jmp   n235_statement_end_α
.Lassign_α_792_0:       .quad            .Lassign_α_792_0_s
.Lassign_α_792_0_s:     .string          "ZS"
                        .size            n234_assign_bx, .-n234_assign_bx
                        .type            n235_statement_end_bx, @function
n235_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   mov              r11, 236
                        mov              r10, 24
                        add              rsp, 144;                            jmp   n236_lit_integer_α
                        .size            n235_statement_end_bx, .-n235_statement_end_bx
                        .type            n236_lit_integer_bx, @function
n236_lit_integer_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n236_lit_integer_α:     sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_795_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_lit_integer_α
.Llit_integer_α_795_0:  .quad            25
                        .size            n236_lit_integer_bx, .-n236_lit_integer_bx
                        .type            n237_lit_integer_bx, @function
n237_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_796_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_call_α
.Llit_integer_α_796_0:  .quad            44
                        .size            n237_lit_integer_bx, .-n237_lit_integer_bx
                        .type            n238_call_bx, @function
n238_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            sub              rsp, 16
                        mov              r11, 239
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
.Lcall_α_rkfnzd798:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd798]
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
                        cmp              al, 104;                             jne   .Lcall_α_797_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n239_statement_begin_α
.Lcall_α_797_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_statement_begin_α
n238_call_β:            mov              r11, 239
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n239_statement_begin_α
                        .size            n238_call_bx, .-n238_call_bx
                        .type            n239_statement_begin_bx, @function
n239_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α: mov              r11, 240
                        mov              r10, 25;                             jmp   n240_lit_integer_α
n239_statement_begin_β: mov              r11, 240
                        add              rsp, 48;                             jmp   n244_lit_integer_α
                        .size            n239_statement_begin_bx, .-n239_statement_begin_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_801_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_unop_α
.Llit_integer_α_801_0:  .quad            30
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_unop_bx, @function
n241_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_unop_α:            sub              rsp, 16
                        mov              r11, 242
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_assign_α
                        .size            n241_unop_bx, .-n241_unop_bx
                        .type            n242_assign_bx, @function
n242_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:          mov              r11, 243
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
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
                        mov              rdi, qword ptr [rip + .Lassign_α_803_0]
                        .section         .rodata
.Lassign_α_803_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_803_1_s]
                        mov              r8, 44
                        mov              r9, 25
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
                        pop              rax;                                 jmp   n243_statement_end_α
.Lassign_α_803_0:       .quad            .Lassign_α_803_0_s
.Lassign_α_803_0_s:     .string          "ix"
                        .size            n242_assign_bx, .-n242_assign_bx
                        .type            n243_statement_end_bx, @function
n243_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:   mov              r11, 244
                        mov              r10, 25
                        add              rsp, 80;                             jmp   n244_lit_integer_α
                        .size            n243_statement_end_bx, .-n243_statement_end_bx
                        .type            n244_lit_integer_bx, @function
n244_lit_integer_bx:
#=======================================================================================================================
# INTREAD ZS = ZS + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n244_lit_integer_α:     sub              rsp, 16
                        mov              r11, 245
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_806_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_lit_integer_α
.Llit_integer_α_806_0:  .quad            26
                        .size            n244_lit_integer_bx, .-n244_lit_integer_bx
                        .type            n245_lit_integer_bx, @function
n245_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     sub              rsp, 16
                        mov              r11, 246
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_807_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_call_α
.Llit_integer_α_807_0:  .quad            45
                        .size            n245_lit_integer_bx, .-n245_lit_integer_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            sub              rsp, 16
                        mov              r11, 247
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
.Lcall_α_rkfnzd809:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd809]
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
                        cmp              al, 104;                             jne   .Lcall_α_808_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n247_statement_begin_α
.Lcall_α_808_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_statement_begin_α
n246_call_β:            mov              r11, 247
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n247_statement_begin_α
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_statement_begin_bx, @function
n247_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α: mov              r11, 248
                        mov              r10, 26;                             jmp   n248_var_α
n247_statement_begin_β: mov              r11, 248
                        add              rsp, 48;                             jmp   n256_lit_integer_α
                        .size            n247_statement_begin_bx, .-n247_statement_begin_bx
                        .type            n248_var_bx, @function
n248_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              r11, 249
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_var_α
                        .size            n248_var_bx, .-n248_var_bx
                        .type            n249_var_bx, @function
n249_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              r11, 250
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_var_α
n249_var_β:             mov              r11, 250
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
                        .size            n249_var_bx, .-n249_var_bx
                        .type            n250_var_bx, @function
n250_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_subscript_α
n250_var_β:             mov              r11, 251
                        add              rsp, 16;                             jmp   n249_var_β
                        .size            n250_var_bx, .-n250_var_bx
                        .type            n251_subscript_bx, @function
n251_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_subscript_α:       sub              rsp, 16
                        mov              r11, 252
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
                        cmp              al, 104;                             jne   .Lsubscript_α_815_240
                        add              rsp, 16;                             jmp   n250_var_β
.Lsubscript_α_815_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_deref_α
n251_subscript_β:       mov              r11, 252
                        add              rsp, 16;                             jmp   n250_var_β
                        .size            n251_subscript_bx, .-n251_subscript_bx
                        .type            n252_deref_bx, @function
n252_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_deref_α:           sub              rsp, 16
                        mov              r11, 253
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
                        cmp              al, 104;                             jne   .Lderef_α_816_240
                        add              rsp, 16;                             jmp   n251_subscript_β
.Lderef_α_816_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_binop_α
n252_deref_β:           mov              r11, 253
                        add              rsp, 16;                             jmp   n251_subscript_β
                        .size            n252_deref_bx, .-n252_deref_bx
                        .type            n253_binop_bx, @function
n253_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_binop_α:           sub              rsp, 16
                        mov              r11, 254
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_817_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_817_7
.Lbinop_α_817_2:        and              edx, 1;                              jz    .Lbinop_α_817_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_817_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_817_4
.Lbinop_α_817_3:        movq             xmm0, rsi
.Lbinop_α_817_4:        cmp              cl, 5;                               je    .Lbinop_α_817_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_817_6
.Lbinop_α_817_5:        movq             xmm1, rdi
.Lbinop_α_817_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_817_7:                                                              jmp   n254_assign_α
.Lbinop_α_817_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_817_240
                        add              rsp, 16;                             jmp   n252_deref_β
.Lbinop_α_817_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_assign_α
                        .size            n253_binop_bx, .-n253_binop_bx
                        .type            n254_assign_bx, @function
n254_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:          mov              r11, 255
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_818_0]
                        .section         .rodata
.Lassign_α_818_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_818_1_s]
                        mov              r8, 45
                        mov              r9, 26
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
                        pop              rax;                                 jmp   n255_statement_end_α
.Lassign_α_818_0:       .quad            .Lassign_α_818_0_s
.Lassign_α_818_0_s:     .string          "ZS"
                        .size            n254_assign_bx, .-n254_assign_bx
                        .type            n255_statement_end_bx, @function
n255_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 256
                        mov              r10, 26
                        add              rsp, 144;                            jmp   n256_lit_integer_α
                        .size            n255_statement_end_bx, .-n255_statement_end_bx
                        .type            n256_lit_integer_bx, @function
n256_lit_integer_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n256_lit_integer_α:     sub              rsp, 16
                        mov              r11, 257
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_821_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n257_lit_integer_α
.Llit_integer_α_821_0:  .quad            27
                        .size            n256_lit_integer_bx, .-n256_lit_integer_bx
                        .type            n257_lit_integer_bx, @function
n257_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     sub              rsp, 16
                        mov              r11, 258
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_822_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_call_α
.Llit_integer_α_822_0:  .quad            46
                        .size            n257_lit_integer_bx, .-n257_lit_integer_bx
                        .type            n258_call_bx, @function
n258_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:            sub              rsp, 16
                        mov              r11, 259
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
.Lcall_α_rkfnzd824:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd824]
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
                        cmp              al, 104;                             jne   .Lcall_α_823_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n259_statement_begin_α
.Lcall_α_823_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_statement_begin_α
n258_call_β:            mov              r11, 259
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n259_statement_begin_α
                        .size            n258_call_bx, .-n258_call_bx
                        .type            n259_statement_begin_bx, @function
n259_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α: mov              r11, 260
                        mov              r10, 27;                             jmp   n260_var_α
n259_statement_begin_β: mov              r11, 260
                        add              rsp, 48;                             jmp   n270_lit_integer_α
                        .size            n259_statement_begin_bx, .-n259_statement_begin_bx
                        .type            n260_var_bx, @function
n260_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              r11, 261
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_lit_integer_α
                        .size            n260_var_bx, .-n260_var_bx
                        .type            n261_lit_integer_bx, @function
n261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     sub              rsp, 16
                        mov              r11, 262
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_828_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_coerce_numeric_α
n261_lit_integer_β:     mov              r11, 262
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
.Llit_integer_α_828_0:  .quad            30
                        .size            n261_lit_integer_bx, .-n261_lit_integer_bx
                        .type            n262_coerce_numeric_bx, @function
n262_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 263
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_830_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_830_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_830_0
.Lcoerce_numeric_α_830_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_coerce_numeric_α
.Lcoerce_numeric_α_830_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_coerce_numeric_α
n262_coerce_numeric_β:  mov              r11, 263
                        add              rsp, 16;                             jmp   n261_lit_integer_β
                        .size            n262_coerce_numeric_bx, .-n262_coerce_numeric_bx
                        .type            n263_coerce_numeric_bx, @function
n263_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 264
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_832_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_832_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_832_0
.Lcoerce_numeric_α_832_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_cmp_test_α
.Lcoerce_numeric_α_832_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_cmp_test_α
n263_coerce_numeric_β:  mov              r11, 264
                        add              rsp, 16;                             jmp   n262_coerce_numeric_β
                        .size            n263_coerce_numeric_bx, .-n263_coerce_numeric_bx
                        .type            n264_cmp_test_bx, @function
n264_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_cmp_test_α:        sub              rsp, 16
                        mov              r11, 265
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_834_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_834_239
                        add              rsp, 16;                             jmp   n263_coerce_numeric_β
.Lcmp_test_α_834_239:                                                         jmp   n265_var_α
.Lcmp_test_α_834_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_834_240
                        add              rsp, 16;                             jmp   n263_coerce_numeric_β
.Lcmp_test_α_834_240:                                                         jmp   n265_var_α
n264_cmp_test_β:        mov              r11, 265
                        add              rsp, 16;                             jmp   n263_coerce_numeric_β
                        .size            n264_cmp_test_bx, .-n264_cmp_test_bx
                        .type            n265_var_bx, @function
n265_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              r11, 266
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_lit_integer_α
n265_var_β:             mov              r11, 266
                        add              rsp, 16;                             jmp   n264_cmp_test_β
                        .size            n265_var_bx, .-n265_var_bx
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     sub              rsp, 16
                        mov              r11, 267
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_836_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_binop_α
n266_lit_integer_β:     mov              r11, 267
                        add              rsp, 16;                             jmp   n265_var_β
.Llit_integer_α_836_0:  .quad            1
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_binop_bx, @function
n267_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:           sub              rsp, 16
                        mov              r11, 268
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_837_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_837_7
.Lbinop_α_837_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_837_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_837_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_837_4
.Lbinop_α_837_3:        movq             xmm0, rsi
.Lbinop_α_837_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_837_7:                                                              jmp   n268_assign_α
.Lbinop_α_837_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_837_240
                        add              rsp, 16;                             jmp   n266_lit_integer_β
.Lbinop_α_837_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_assign_α
                        .size            n267_binop_bx, .-n267_binop_bx
                        .type            n268_assign_bx, @function
n268_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ix
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
                        mov              rdi, qword ptr [rip + .Lassign_α_838_0]
                        .section         .rodata
.Lassign_α_838_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_838_1_s]
                        mov              r8, 46
                        mov              r9, 27
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
                        pop              rax;                                 jmp   n269_statement_end_α
.Lassign_α_838_0:       .quad            .Lassign_α_838_0_s
.Lassign_α_838_0_s:     .string          "ix"
                        .size            n268_assign_bx, .-n268_assign_bx
                        .type            n269_statement_end_bx, @function
n269_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:   mov              r11, 270
                        mov              r10, 27
                        add              rsp, 176;                            jmp   n244_lit_integer_α
                        .size            n269_statement_end_bx, .-n269_statement_end_bx
                        .type            n270_lit_integer_bx, @function
n270_lit_integer_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n270_lit_integer_α:     sub              rsp, 16
                        mov              r11, 271
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_841_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_lit_integer_α
.Llit_integer_α_841_0:  .quad            28
                        .size            n270_lit_integer_bx, .-n270_lit_integer_bx
                        .type            n271_lit_integer_bx, @function
n271_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_integer_α:     sub              rsp, 16
                        mov              r11, 272
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_842_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n272_call_α
.Llit_integer_α_842_0:  .quad            48
                        .size            n271_lit_integer_bx, .-n271_lit_integer_bx
                        .type            n272_call_bx, @function
n272_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            sub              rsp, 16
                        mov              r11, 273
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
.Lcall_α_rkfnzd844:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd844]
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
                        cmp              al, 104;                             jne   .Lcall_α_843_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n273_statement_begin_α
.Lcall_α_843_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_statement_begin_α
n272_call_β:            mov              r11, 273
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n273_statement_begin_α
                        .size            n272_call_bx, .-n272_call_bx
                        .type            n273_statement_begin_bx, @function
n273_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α: mov              r11, 274
                        mov              r10, 28;                             jmp   n274_lit_integer_α
n273_statement_begin_β: mov              r11, 274
                        add              rsp, 48;                             jmp   n277_lit_integer_α
                        .size            n273_statement_begin_bx, .-n273_statement_begin_bx
                        .type            n274_lit_integer_bx, @function
n274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_847_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_assign_α
.Llit_integer_α_847_0:  .quad            1
                        .size            n274_lit_integer_bx, .-n274_lit_integer_bx
                        .type            n275_assign_bx, @function
n275_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_848_0]
                        .section         .rodata
.Lassign_α_848_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_848_1_s]
                        mov              r8, 48
                        mov              r9, 28
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
                        pop              rax;                                 jmp   n276_statement_end_α
.Lassign_α_848_0:       .quad            .Lassign_α_848_0_s
.Lassign_α_848_0_s:     .string          "sx"
                        .size            n275_assign_bx, .-n275_assign_bx
                        .type            n276_statement_end_bx, @function
n276_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   mov              r11, 277
                        mov              r10, 28
                        add              rsp, 64;                             jmp   n277_lit_integer_α
                        .size            n276_statement_end_bx, .-n276_statement_end_bx
                        .type            n277_lit_integer_bx, @function
n277_lit_integer_bx:
#=======================================================================================================================
# STRREAD ZS = ZS + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n277_lit_integer_α:     sub              rsp, 16
                        mov              r11, 278
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_851_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_lit_integer_α
.Llit_integer_α_851_0:  .quad            29
                        .size            n277_lit_integer_bx, .-n277_lit_integer_bx
                        .type            n278_lit_integer_bx, @function
n278_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     sub              rsp, 16
                        mov              r11, 279
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_852_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_call_α
.Llit_integer_α_852_0:  .quad            49
                        .size            n278_lit_integer_bx, .-n278_lit_integer_bx
                        .type            n279_call_bx, @function
n279_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            sub              rsp, 16
                        mov              r11, 280
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
.Lcall_α_rkfnzd854:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd854]
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
                        cmp              al, 104;                             jne   .Lcall_α_853_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n280_statement_begin_α
.Lcall_α_853_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_statement_begin_α
n279_call_β:            mov              r11, 280
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n280_statement_begin_α
                        .size            n279_call_bx, .-n279_call_bx
                        .type            n280_statement_begin_bx, @function
n280_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α: mov              r11, 281
                        mov              r10, 29;                             jmp   n281_var_α
n280_statement_begin_β: mov              r11, 281
                        add              rsp, 48;                             jmp   n298_lit_integer_α
                        .size            n280_statement_begin_bx, .-n280_statement_begin_bx
                        .type            n281_var_bx, @function
n281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              r11, 282
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_var_α
                        .size            n281_var_bx, .-n281_var_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_lit_string_α
n282_var_β:             mov              r11, 283
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n280_statement_begin_β
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_859_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_var_α
n283_lit_string_β:      mov              r11, 284
                        add              rsp, 16;                             jmp   n282_var_β
.Llit_string_α_859_0:   .quad            .Llit_string_α_859_0_s
.Llit_string_α_859_0_s: .string          "k"
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 285
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_binop_α
n284_var_β:             mov              r11, 285
                        add              rsp, 16;                             jmp   n283_lit_string_β
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_binop_bx, @function
n285_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_binop_α:           sub              rsp, 16
                        mov              r11, 286
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n286_subscript_α
n285_binop_β:           mov              r11, 286
                        add              rsp, 16;                             jmp   n284_var_β
                        .size            n285_binop_bx, .-n285_binop_bx
                        .type            n286_subscript_bx, @function
n286_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_subscript_α:       sub              rsp, 16
                        mov              r11, 287
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_862_240
                        add              rsp, 16;                             jmp   n285_binop_β
.Lsubscript_α_862_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_deref_α
n286_subscript_β:       mov              r11, 287
                        add              rsp, 16;                             jmp   n285_binop_β
                        .size            n286_subscript_bx, .-n286_subscript_bx
                        .type            n287_deref_bx, @function
n287_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_deref_α:           sub              rsp, 16
                        mov              r11, 288
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
                        cmp              al, 104;                             jne   .Lderef_α_863_240
                        add              rsp, 16;                             jmp   n286_subscript_β
.Lderef_α_863_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_binop_α
n287_deref_β:           mov              r11, 288
                        add              rsp, 16;                             jmp   n286_subscript_β
                        .size            n287_deref_bx, .-n287_deref_bx
                        .type            n288_binop_bx, @function
n288_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_binop_α:           sub              rsp, 16
                        mov              r11, 289
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_864_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_864_7
.Lbinop_α_864_2:        and              edx, 1;                              jz    .Lbinop_α_864_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_864_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_864_4
.Lbinop_α_864_3:        movq             xmm0, rsi
.Lbinop_α_864_4:        cmp              cl, 5;                               je    .Lbinop_α_864_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_864_6
.Lbinop_α_864_5:        movq             xmm1, rdi
.Lbinop_α_864_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_864_7:                                                              jmp   n289_var_α
.Lbinop_α_864_0:        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
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
                        cmp              al, 104;                             jne   .Lbinop_α_864_240
                        add              rsp, 16;                             jmp   n287_deref_β
.Lbinop_α_864_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_var_α
n288_binop_β:           mov              r11, 289
                        add              rsp, 16;                             jmp   n287_deref_β
                        .size            n288_binop_bx, .-n288_binop_bx
                        .type            n289_var_bx, @function
n289_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             sub              rsp, 16
                        mov              r11, 290
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_lit_string_α
n289_var_β:             mov              r11, 290
                        add              rsp, 16;                             jmp   n288_binop_β
                        .size            n289_var_bx, .-n289_var_bx
                        .type            n290_lit_string_bx, @function
n290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      sub              rsp, 16
                        mov              r11, 291
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_866_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n291_var_α
n290_lit_string_β:      mov              r11, 291
                        add              rsp, 16;                             jmp   n289_var_β
.Llit_string_α_866_0:   .quad            .Llit_string_α_866_0_s
.Llit_string_α_866_0_s: .string          "a_much_longer_key_"
                        .size            n290_lit_string_bx, .-n290_lit_string_bx
                        .type            n291_var_bx, @function
n291_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             sub              rsp, 16
                        mov              r11, 292
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_binop_α
n291_var_β:             mov              r11, 292
                        add              rsp, 16;                             jmp   n290_lit_string_β
                        .size            n291_var_bx, .-n291_var_bx
                        .type            n292_binop_bx, @function
n292_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_binop_α:           sub              rsp, 16
                        mov              r11, 293
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n293_subscript_α
n292_binop_β:           mov              r11, 293
                        add              rsp, 16;                             jmp   n291_var_β
                        .size            n292_binop_bx, .-n292_binop_bx
                        .type            n293_subscript_bx, @function
n293_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_subscript_α:       sub              rsp, 16
                        mov              r11, 294
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_869_240
                        add              rsp, 16;                             jmp   n292_binop_β
.Lsubscript_α_869_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_deref_α
n293_subscript_β:       mov              r11, 294
                        add              rsp, 16;                             jmp   n292_binop_β
                        .size            n293_subscript_bx, .-n293_subscript_bx
                        .type            n294_deref_bx, @function
n294_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_deref_α:           sub              rsp, 16
                        mov              r11, 295
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
                        cmp              al, 104;                             jne   .Lderef_α_870_240
                        add              rsp, 16;                             jmp   n293_subscript_β
.Lderef_α_870_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_binop_α
n294_deref_β:           mov              r11, 295
                        add              rsp, 16;                             jmp   n293_subscript_β
                        .size            n294_deref_bx, .-n294_deref_bx
                        .type            n295_binop_bx, @function
n295_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           sub              rsp, 16
                        mov              r11, 296
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_871_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_871_7
.Lbinop_α_871_2:        and              edx, 1;                              jz    .Lbinop_α_871_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_871_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_871_4
.Lbinop_α_871_3:        movq             xmm0, rsi
.Lbinop_α_871_4:        cmp              cl, 5;                               je    .Lbinop_α_871_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_871_6
.Lbinop_α_871_5:        movq             xmm1, rdi
.Lbinop_α_871_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_871_7:                                                              jmp   n296_assign_α
.Lbinop_α_871_0:        mov              rdi, qword ptr [rsp + 112]           # binop
                        mov              rsi, qword ptr [rsp + 120]
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
                        cmp              al, 104;                             jne   .Lbinop_α_871_240
                        add              rsp, 16;                             jmp   n294_deref_β
.Lbinop_α_871_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_assign_α
                        .size            n295_binop_bx, .-n295_binop_bx
                        .type            n296_assign_bx, @function
n296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:          mov              r11, 297
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_872_0]
                        .section         .rodata
.Lassign_α_872_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_872_1_s]
                        mov              r8, 49
                        mov              r9, 29
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
                        pop              rax;                                 jmp   n297_statement_end_α
.Lassign_α_872_0:       .quad            .Lassign_α_872_0_s
.Lassign_α_872_0_s:     .string          "ZS"
                        .size            n296_assign_bx, .-n296_assign_bx
                        .type            n297_statement_end_bx, @function
n297_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_end_α:   mov              r11, 298
                        mov              r10, 29
                        add              rsp, 288;                            jmp   n298_lit_integer_α
                        .size            n297_statement_end_bx, .-n297_statement_end_bx
                        .type            n298_lit_integer_bx, @function
n298_lit_integer_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n298_lit_integer_α:     sub              rsp, 16
                        mov              r11, 299
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_875_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_lit_integer_α
.Llit_integer_α_875_0:  .quad            30
                        .size            n298_lit_integer_bx, .-n298_lit_integer_bx
                        .type            n299_lit_integer_bx, @function
n299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     sub              rsp, 16
                        mov              r11, 300
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_876_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_call_α
.Llit_integer_α_876_0:  .quad            50
                        .size            n299_lit_integer_bx, .-n299_lit_integer_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            sub              rsp, 16
                        mov              r11, 301
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
.Lcall_α_rkfnzd878:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd878]
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
                        cmp              al, 104;                             jne   .Lcall_α_877_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n301_statement_begin_α
.Lcall_α_877_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_statement_begin_α
n300_call_β:            mov              r11, 301
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n301_statement_begin_α
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_statement_begin_bx, @function
n301_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α: mov              r11, 302
                        mov              r10, 30;                             jmp   n302_var_α
n301_statement_begin_β: mov              r11, 302
                        add              rsp, 48;                             jmp   n312_lit_integer_α
                        .size            n301_statement_begin_bx, .-n301_statement_begin_bx
                        .type            n302_var_bx, @function
n302_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_lit_integer_α
                        .size            n302_var_bx, .-n302_var_bx
                        .type            n303_lit_integer_bx, @function
n303_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     sub              rsp, 16
                        mov              r11, 304
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_882_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_coerce_numeric_α
n303_lit_integer_β:     mov              r11, 304
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n301_statement_begin_β
.Llit_integer_α_882_0:  .quad            20
                        .size            n303_lit_integer_bx, .-n303_lit_integer_bx
                        .type            n304_coerce_numeric_bx, @function
n304_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 305
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_884_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_884_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_884_0
.Lcoerce_numeric_α_884_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_coerce_numeric_α
.Lcoerce_numeric_α_884_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_coerce_numeric_α
n304_coerce_numeric_β:  mov              r11, 305
                        add              rsp, 16;                             jmp   n303_lit_integer_β
                        .size            n304_coerce_numeric_bx, .-n304_coerce_numeric_bx
                        .type            n305_coerce_numeric_bx, @function
n305_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 306
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_886_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_886_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_886_0
.Lcoerce_numeric_α_886_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_cmp_test_α
.Lcoerce_numeric_α_886_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_cmp_test_α
n305_coerce_numeric_β:  mov              r11, 306
                        add              rsp, 16;                             jmp   n304_coerce_numeric_β
                        .size            n305_coerce_numeric_bx, .-n305_coerce_numeric_bx
                        .type            n306_cmp_test_bx, @function
n306_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_cmp_test_α:        sub              rsp, 16
                        mov              r11, 307
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_888_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_888_239
                        add              rsp, 16;                             jmp   n305_coerce_numeric_β
.Lcmp_test_α_888_239:                                                         jmp   n307_var_α
.Lcmp_test_α_888_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_888_240
                        add              rsp, 16;                             jmp   n305_coerce_numeric_β
.Lcmp_test_α_888_240:                                                         jmp   n307_var_α
n306_cmp_test_β:        mov              r11, 307
                        add              rsp, 16;                             jmp   n305_coerce_numeric_β
                        .size            n306_cmp_test_bx, .-n306_cmp_test_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              r11, 308
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_lit_integer_α
n307_var_β:             mov              r11, 308
                        add              rsp, 16;                             jmp   n306_cmp_test_β
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_lit_integer_bx, @function
n308_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     sub              rsp, 16
                        mov              r11, 309
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_890_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_binop_α
n308_lit_integer_β:     mov              r11, 309
                        add              rsp, 16;                             jmp   n307_var_β
.Llit_integer_α_890_0:  .quad            1
                        .size            n308_lit_integer_bx, .-n308_lit_integer_bx
                        .type            n309_binop_bx, @function
n309_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:           sub              rsp, 16
                        mov              r11, 310
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_891_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_891_7
.Lbinop_α_891_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_891_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_891_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_891_4
.Lbinop_α_891_3:        movq             xmm0, rsi
.Lbinop_α_891_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_891_7:                                                              jmp   n310_assign_α
.Lbinop_α_891_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_891_240
                        add              rsp, 16;                             jmp   n308_lit_integer_β
.Lbinop_α_891_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_assign_α
                        .size            n309_binop_bx, .-n309_binop_bx
                        .type            n310_assign_bx, @function
n310_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:          mov              r11, 311
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # sx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_892_0]
                        .section         .rodata
.Lassign_α_892_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_892_1_s]
                        mov              r8, 50
                        mov              r9, 30
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
                        pop              rax;                                 jmp   n311_statement_end_α
.Lassign_α_892_0:       .quad            .Lassign_α_892_0_s
.Lassign_α_892_0_s:     .string          "sx"
                        .size            n310_assign_bx, .-n310_assign_bx
                        .type            n311_statement_end_bx, @function
n311_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:   mov              r11, 312
                        mov              r10, 30
                        add              rsp, 176;                            jmp   n277_lit_integer_α
                        .size            n311_statement_end_bx, .-n311_statement_end_bx
                        .type            n312_lit_integer_bx, @function
n312_lit_integer_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n312_lit_integer_α:     sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_895_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_lit_integer_α
.Llit_integer_α_895_0:  .quad            31
                        .size            n312_lit_integer_bx, .-n312_lit_integer_bx
                        .type            n313_lit_integer_bx, @function
n313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:     sub              rsp, 16
                        mov              r11, 314
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_896_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_call_α
.Llit_integer_α_896_0:  .quad            52
                        .size            n313_lit_integer_bx, .-n313_lit_integer_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            sub              rsp, 16
                        mov              r11, 315
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
.Lcall_α_rkfnzd898:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd898]
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
                        cmp              al, 104;                             jne   .Lcall_α_897_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n315_statement_begin_α
.Lcall_α_897_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_statement_begin_α
n314_call_β:            mov              r11, 315
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n315_statement_begin_α
                        .size            n314_call_bx, .-n314_call_bx
                        .type            n315_statement_begin_bx, @function
n315_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_begin_α: mov              r11, 316
                        mov              r10, 31;                             jmp   n316_lit_integer_α
n315_statement_begin_β: mov              r11, 316
                        add              rsp, 48;                             jmp   n319_lit_integer_α
                        .size            n315_statement_begin_bx, .-n315_statement_begin_bx
                        .type            n316_lit_integer_bx, @function
n316_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     sub              rsp, 16
                        mov              r11, 317
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_901_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_assign_α
.Llit_integer_α_901_0:  .quad            1
                        .size            n316_lit_integer_bx, .-n316_lit_integer_bx
                        .type            n317_assign_bx, @function
n317_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_902_0]
                        .section         .rodata
.Lassign_α_902_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_902_1_s]
                        mov              r8, 52
                        mov              r9, 31
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
                        pop              rax;                                 jmp   n318_statement_end_α
.Lassign_α_902_0:       .quad            .Lassign_α_902_0_s
.Lassign_α_902_0_s:     .string          "rx"
                        .size            n317_assign_bx, .-n317_assign_bx
                        .type            n318_statement_end_bx, @function
n318_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:   mov              r11, 319
                        mov              r10, 31
                        add              rsp, 64;                             jmp   n319_lit_integer_α
                        .size            n318_statement_end_bx, .-n318_statement_end_bx
                        .type            n319_lit_integer_bx, @function
n319_lit_integer_bx:
#=======================================================================================================================
# REALRD  ZS = ZS + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n319_lit_integer_α:     sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n320_lit_integer_α
.Llit_integer_α_905_0:  .quad            32
                        .size            n319_lit_integer_bx, .-n319_lit_integer_bx
                        .type            n320_lit_integer_bx, @function
n320_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n321_call_α
.Llit_integer_α_906_0:  .quad            53
                        .size            n320_lit_integer_bx, .-n320_lit_integer_bx
                        .type            n321_call_bx, @function
n321_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:            sub              rsp, 16
                        mov              r11, 322
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
.Lcall_α_rkfnzd908:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd908]
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
                        cmp              al, 104;                             jne   .Lcall_α_907_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n322_statement_begin_α
.Lcall_α_907_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_statement_begin_α
n321_call_β:            mov              r11, 322
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n322_statement_begin_α
                        .size            n321_call_bx, .-n321_call_bx
                        .type            n322_statement_begin_bx, @function
n322_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_begin_α: mov              r11, 323
                        mov              r10, 32;                             jmp   n323_var_α
n322_statement_begin_β: mov              r11, 323
                        add              rsp, 48;                             jmp   n333_lit_integer_α
                        .size            n322_statement_begin_bx, .-n322_statement_begin_bx
                        .type            n323_var_bx, @function
n323_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             sub              rsp, 16
                        mov              r11, 324
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_var_α
                        .size            n323_var_bx, .-n323_var_bx
                        .type            n324_var_bx, @function
n324_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              r11, 325
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_var_α
n324_var_β:             mov              r11, 325
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n322_statement_begin_β
                        .size            n324_var_bx, .-n324_var_bx
                        .type            n325_var_bx, @function
n325_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:             sub              rsp, 16
                        mov              r11, 326
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_lit_real_α
n325_var_β:             mov              r11, 326
                        add              rsp, 16;                             jmp   n324_var_β
                        .size            n325_var_bx, .-n325_var_bx
                        .type            n326_lit_real_bx, @function
n326_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_real_α:        sub              rsp, 16
                        mov              r11, 327
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_914_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n327_binop_α
.Llit_real_α_914_0:     .quad            4611686018427387904
                        .size            n326_lit_real_bx, .-n326_lit_real_bx
                        .type            n327_binop_bx, @function
n327_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:           sub              rsp, 16
                        mov              r11, 328
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_915_240
                        add              rsp, 32;                             jmp   n325_var_β
.Lbinop_α_915_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_subscript_α
n327_binop_β:           mov              r11, 328
                        add              rsp, 32;                             jmp   n325_var_β
                        .size            n327_binop_bx, .-n327_binop_bx
                        .type            n328_subscript_bx, @function
n328_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_subscript_α:       sub              rsp, 16
                        mov              r11, 329
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_916_240
                        add              rsp, 16;                             jmp   n327_binop_β
.Lsubscript_α_916_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_deref_α
n328_subscript_β:       mov              r11, 329
                        add              rsp, 16;                             jmp   n327_binop_β
                        .size            n328_subscript_bx, .-n328_subscript_bx
                        .type            n329_deref_bx, @function
n329_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_deref_α:           sub              rsp, 16
                        mov              r11, 330
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
                        cmp              al, 104;                             jne   .Lderef_α_917_240
                        add              rsp, 16;                             jmp   n328_subscript_β
.Lderef_α_917_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_binop_α
n329_deref_β:           mov              r11, 330
                        add              rsp, 16;                             jmp   n328_subscript_β
                        .size            n329_deref_bx, .-n329_deref_bx
                        .type            n330_binop_bx, @function
n330_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_binop_α:           sub              rsp, 16
                        mov              r11, 331
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_918_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_918_7
.Lbinop_α_918_2:        and              edx, 1;                              jz    .Lbinop_α_918_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_918_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_918_4
.Lbinop_α_918_3:        movq             xmm0, rsi
.Lbinop_α_918_4:        cmp              cl, 5;                               je    .Lbinop_α_918_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_918_6
.Lbinop_α_918_5:        movq             xmm1, rdi
.Lbinop_α_918_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_918_7:                                                              jmp   n331_assign_α
.Lbinop_α_918_0:        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
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
                        cmp              al, 104;                             jne   .Lbinop_α_918_240
                        add              rsp, 16;                             jmp   n329_deref_β
.Lbinop_α_918_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_assign_α
                        .size            n330_binop_bx, .-n330_binop_bx
                        .type            n331_assign_bx, @function
n331_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_919_0]
                        .section         .rodata
.Lassign_α_919_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_919_1_s]
                        mov              r8, 53
                        mov              r9, 32
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
                        pop              rax;                                 jmp   n332_statement_end_α
.Lassign_α_919_0:       .quad            .Lassign_α_919_0_s
.Lassign_α_919_0_s:     .string          "ZS"
                        .size            n331_assign_bx, .-n331_assign_bx
                        .type            n332_statement_end_bx, @function
n332_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   mov              r11, 333
                        mov              r10, 32
                        add              rsp, 176;                            jmp   n333_lit_integer_α
                        .size            n332_statement_end_bx, .-n332_statement_end_bx
                        .type            n333_lit_integer_bx, @function
n333_lit_integer_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALRD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n333_lit_integer_α:     sub              rsp, 16
                        mov              r11, 334
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_922_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n334_lit_integer_α
.Llit_integer_α_922_0:  .quad            33
                        .size            n333_lit_integer_bx, .-n333_lit_integer_bx
                        .type            n334_lit_integer_bx, @function
n334_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_923_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n335_call_α
.Llit_integer_α_923_0:  .quad            54
                        .size            n334_lit_integer_bx, .-n334_lit_integer_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        mov              r11, 336
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
.Lcall_α_rkfnzd925:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd925]
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
                        cmp              al, 104;                             jne   .Lcall_α_924_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n336_statement_begin_α
.Lcall_α_924_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_statement_begin_α
n335_call_β:            mov              r11, 336
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n336_statement_begin_α
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_statement_begin_bx, @function
n336_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_begin_α: mov              r11, 337
                        mov              r10, 33;                             jmp   n337_var_α
n336_statement_begin_β: mov              r11, 337
                        add              rsp, 48;                             jmp   n347_lit_integer_α
                        .size            n336_statement_begin_bx, .-n336_statement_begin_bx
                        .type            n337_var_bx, @function
n337_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:             sub              rsp, 16
                        mov              r11, 338
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_lit_integer_α
                        .size            n337_var_bx, .-n337_var_bx
                        .type            n338_lit_integer_bx, @function
n338_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:     sub              rsp, 16
                        mov              r11, 339
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_929_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n339_coerce_numeric_α
n338_lit_integer_β:     mov              r11, 339
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n336_statement_begin_β
.Llit_integer_α_929_0:  .quad            12
                        .size            n338_lit_integer_bx, .-n338_lit_integer_bx
                        .type            n339_coerce_numeric_bx, @function
n339_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 340
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_931_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_931_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_931_0
.Lcoerce_numeric_α_931_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n340_coerce_numeric_α
.Lcoerce_numeric_α_931_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n340_coerce_numeric_α
n339_coerce_numeric_β:  mov              r11, 340
                        add              rsp, 16;                             jmp   n338_lit_integer_β
                        .size            n339_coerce_numeric_bx, .-n339_coerce_numeric_bx
                        .type            n340_coerce_numeric_bx, @function
n340_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 341
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_933_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_933_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_933_0
.Lcoerce_numeric_α_933_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n341_cmp_test_α
.Lcoerce_numeric_α_933_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_cmp_test_α
n340_coerce_numeric_β:  mov              r11, 341
                        add              rsp, 16;                             jmp   n339_coerce_numeric_β
                        .size            n340_coerce_numeric_bx, .-n340_coerce_numeric_bx
                        .type            n341_cmp_test_bx, @function
n341_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_cmp_test_α:        sub              rsp, 16
                        mov              r11, 342
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_935_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_935_239
                        add              rsp, 16;                             jmp   n340_coerce_numeric_β
.Lcmp_test_α_935_239:                                                         jmp   n342_var_α
.Lcmp_test_α_935_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_935_240
                        add              rsp, 16;                             jmp   n340_coerce_numeric_β
.Lcmp_test_α_935_240:                                                         jmp   n342_var_α
n341_cmp_test_β:        mov              r11, 342
                        add              rsp, 16;                             jmp   n340_coerce_numeric_β
                        .size            n341_cmp_test_bx, .-n341_cmp_test_bx
                        .type            n342_var_bx, @function
n342_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              r11, 343
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_lit_integer_α
n342_var_β:             mov              r11, 343
                        add              rsp, 16;                             jmp   n341_cmp_test_β
                        .size            n342_var_bx, .-n342_var_bx
                        .type            n343_lit_integer_bx, @function
n343_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     sub              rsp, 16
                        mov              r11, 344
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_937_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n344_binop_α
n343_lit_integer_β:     mov              r11, 344
                        add              rsp, 16;                             jmp   n342_var_β
.Llit_integer_α_937_0:  .quad            1
                        .size            n343_lit_integer_bx, .-n343_lit_integer_bx
                        .type            n344_binop_bx, @function
n344_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_binop_α:           sub              rsp, 16
                        mov              r11, 345
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_938_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_938_7
.Lbinop_α_938_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_938_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_938_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_938_4
.Lbinop_α_938_3:        movq             xmm0, rsi
.Lbinop_α_938_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_938_7:                                                              jmp   n345_assign_α
.Lbinop_α_938_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_938_240
                        add              rsp, 16;                             jmp   n343_lit_integer_β
.Lbinop_α_938_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_assign_α
                        .size            n344_binop_bx, .-n344_binop_bx
                        .type            n345_assign_bx, @function
n345_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # rx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_939_0]
                        .section         .rodata
.Lassign_α_939_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_939_1_s]
                        mov              r8, 54
                        mov              r9, 33
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
                        pop              rax;                                 jmp   n346_statement_end_α
.Lassign_α_939_0:       .quad            .Lassign_α_939_0_s
.Lassign_α_939_0_s:     .string          "rx"
                        .size            n345_assign_bx, .-n345_assign_bx
                        .type            n346_statement_end_bx, @function
n346_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_end_α:   mov              r11, 347
                        mov              r10, 33
                        add              rsp, 176;                            jmp   n319_lit_integer_α
                        .size            n346_statement_end_bx, .-n346_statement_end_bx
                        .type            n347_lit_integer_bx, @function
n347_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n347_lit_integer_α:     sub              rsp, 16
                        mov              r11, 348
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_942_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n348_lit_integer_α
.Llit_integer_α_942_0:  .quad            34
                        .size            n347_lit_integer_bx, .-n347_lit_integer_bx
                        .type            n348_lit_integer_bx, @function
n348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     sub              rsp, 16
                        mov              r11, 349
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_943_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n349_call_α
.Llit_integer_α_943_0:  .quad            55
                        .size            n348_lit_integer_bx, .-n348_lit_integer_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            sub              rsp, 16
                        mov              r11, 350
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
.Lcall_α_rkfnzd945:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd945]
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
                        cmp              al, 104;                             jne   .Lcall_α_944_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n350_statement_begin_α
.Lcall_α_944_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_statement_begin_α
n349_call_β:            mov              r11, 350
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n350_statement_begin_α
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_statement_begin_bx, @function
n350_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_begin_α: mov              r11, 351
                        mov              r10, 34;                             jmp   n351_var_α
n350_statement_begin_β: mov              r11, 351
                        add              rsp, 48;                             jmp   n359_lit_integer_α
                        .size            n350_statement_begin_bx, .-n350_statement_begin_bx
                        .type            n351_var_bx, @function
n351_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             sub              rsp, 16
                        mov              r11, 352
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_var_α
                        .size            n351_var_bx, .-n351_var_bx
                        .type            n352_var_bx, @function
n352_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             sub              rsp, 16
                        mov              r11, 353
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_lit_string_α
n352_var_β:             mov              r11, 353
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n350_statement_begin_β
                        .size            n352_var_bx, .-n352_var_bx
                        .type            n353_lit_string_bx, @function
n353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      sub              rsp, 16
                        mov              r11, 354
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_950_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n354_subscript_α
n353_lit_string_β:      mov              r11, 354
                        add              rsp, 16;                             jmp   n352_var_β
.Llit_string_α_950_0:   .quad            .Llit_string_α_950_0_s
.Llit_string_α_950_0_s: .string          ""
                        .size            n353_lit_string_bx, .-n353_lit_string_bx
                        .type            n354_subscript_bx, @function
n354_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_subscript_α:       sub              rsp, 16
                        mov              r11, 355
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_951_240
                        add              rsp, 16;                             jmp   n353_lit_string_β
.Lsubscript_α_951_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_deref_α
n354_subscript_β:       mov              r11, 355
                        add              rsp, 16;                             jmp   n353_lit_string_β
                        .size            n354_subscript_bx, .-n354_subscript_bx
                        .type            n355_deref_bx, @function
n355_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_deref_α:           sub              rsp, 16
                        mov              r11, 356
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
                        cmp              al, 104;                             jne   .Lderef_α_952_240
                        add              rsp, 16;                             jmp   n354_subscript_β
.Lderef_α_952_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_binop_α
n355_deref_β:           mov              r11, 356
                        add              rsp, 16;                             jmp   n354_subscript_β
                        .size            n355_deref_bx, .-n355_deref_bx
                        .type            n356_binop_bx, @function
n356_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_binop_α:           sub              rsp, 16
                        mov              r11, 357
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_953_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_953_7
.Lbinop_α_953_2:        and              edx, 1;                              jz    .Lbinop_α_953_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_953_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_953_4
.Lbinop_α_953_3:        movq             xmm0, rsi
.Lbinop_α_953_4:        cmp              cl, 5;                               je    .Lbinop_α_953_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_953_6
.Lbinop_α_953_5:        movq             xmm1, rdi
.Lbinop_α_953_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_953_7:                                                              jmp   n357_assign_α
.Lbinop_α_953_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_953_240
                        add              rsp, 16;                             jmp   n355_deref_β
.Lbinop_α_953_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_assign_α
                        .size            n356_binop_bx, .-n356_binop_bx
                        .type            n357_assign_bx, @function
n357_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              r11, 358
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_954_0]
                        .section         .rodata
.Lassign_α_954_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_954_1_s]
                        mov              r8, 55
                        mov              r9, 34
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
                        pop              rax;                                 jmp   n358_statement_end_α
.Lassign_α_954_0:       .quad            .Lassign_α_954_0_s
.Lassign_α_954_0_s:     .string          "ZS"
                        .size            n357_assign_bx, .-n357_assign_bx
                        .type            n358_statement_end_bx, @function
n358_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:   mov              r11, 359
                        mov              r10, 34
                        add              rsp, 144;                            jmp   n359_lit_integer_α
                        .size            n358_statement_end_bx, .-n358_statement_end_bx
                        .type            n359_lit_integer_bx, @function
n359_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n359_lit_integer_α:     sub              rsp, 16
                        mov              r11, 360
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_957_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_lit_integer_α
.Llit_integer_α_957_0:  .quad            35
                        .size            n359_lit_integer_bx, .-n359_lit_integer_bx
                        .type            n360_lit_integer_bx, @function
n360_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:     sub              rsp, 16
                        mov              r11, 361
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_958_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_call_α
.Llit_integer_α_958_0:  .quad            57
                        .size            n360_lit_integer_bx, .-n360_lit_integer_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 362
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
.Lcall_α_rkfnzd960:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd960]
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
                        cmp              al, 104;                             jne   .Lcall_α_959_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n362_statement_begin_α
.Lcall_α_959_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_statement_begin_α
n361_call_β:            mov              r11, 362
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n362_statement_begin_α
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_statement_begin_bx, @function
n362_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_begin_α: mov              r11, 363
                        mov              r10, 35;                             jmp   n363_var_α
n362_statement_begin_β: mov              r11, 363
                        add              rsp, 48;                             jmp   n385_lit_integer_α
                        .size            n362_statement_begin_bx, .-n362_statement_begin_bx
                        .type            n363_var_bx, @function
n363_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             sub              rsp, 16
                        mov              r11, 364
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n364_var_α
                        .size            n363_var_bx, .-n363_var_bx
                        .type            n364_var_bx, @function
n364_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              r11, 365
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_lit_integer_α
n364_var_β:             mov              r11, 365
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n362_statement_begin_β
                        .size            n364_var_bx, .-n364_var_bx
                        .type            n365_lit_integer_bx, @function
n365_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     sub              rsp, 16
                        mov              r11, 366
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_965_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n366_subscript_α
n365_lit_integer_β:     mov              r11, 366
                        add              rsp, 16;                             jmp   n364_var_β
.Llit_integer_α_965_0:  .quad            9999
                        .size            n365_lit_integer_bx, .-n365_lit_integer_bx
                        .type            n366_subscript_bx, @function
n366_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_subscript_α:       sub              rsp, 16
                        mov              r11, 367
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_966_240
                        add              rsp, 16;                             jmp   n365_lit_integer_β
.Lsubscript_α_966_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_deref_α
n366_subscript_β:       mov              r11, 367
                        add              rsp, 16;                             jmp   n365_lit_integer_β
                        .size            n366_subscript_bx, .-n366_subscript_bx
                        .type            n367_deref_bx, @function
n367_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_deref_α:           sub              rsp, 16
                        mov              r11, 368
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
                        cmp              al, 104;                             jne   .Lderef_α_967_240
                        add              rsp, 16;                             jmp   n366_subscript_β
.Lderef_α_967_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_call_α
n367_deref_β:           mov              r11, 368
                        add              rsp, 16;                             jmp   n366_subscript_β
                        .size            n367_deref_bx, .-n367_deref_bx
                        .type            n368_call_bx, @function
n368_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            sub              rsp, 16
                        mov              r11, 369
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd969:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd969]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_968_240
                        add              rsp, 16;                             jmp   n367_deref_β
.Lcall_α_968_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_binop_α
n368_call_β:            mov              r11, 369
                        add              rsp, 16;                             jmp   n367_deref_β
                        .size            n368_call_bx, .-n368_call_bx
                        .type            n369_binop_bx, @function
n369_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_binop_α:           sub              rsp, 16
                        mov              r11, 370
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_970_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_970_7
.Lbinop_α_970_2:        and              edx, 1;                              jz    .Lbinop_α_970_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_970_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_970_4
.Lbinop_α_970_3:        movq             xmm0, rsi
.Lbinop_α_970_4:        cmp              cl, 5;                               je    .Lbinop_α_970_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_970_6
.Lbinop_α_970_5:        movq             xmm1, rdi
.Lbinop_α_970_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_970_7:                                                              jmp   n370_var_α
.Lbinop_α_970_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_970_240
                        add              rsp, 32;                             jmp   n367_deref_β
.Lbinop_α_970_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_var_α
n369_binop_β:           mov              r11, 370
                        add              rsp, 32;                             jmp   n367_deref_β
                        .size            n369_binop_bx, .-n369_binop_bx
                        .type            n370_var_bx, @function
n370_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              r11, 371
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_lit_string_α
n370_var_β:             mov              r11, 371
                        add              rsp, 16;                             jmp   n369_binop_β
                        .size            n370_var_bx, .-n370_var_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      sub              rsp, 16
                        mov              r11, 372
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_972_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_subscript_α
n371_lit_string_β:      mov              r11, 372
                        add              rsp, 16;                             jmp   n370_var_β
.Llit_string_α_972_0:   .quad            .Llit_string_α_972_0_s
.Llit_string_α_972_0_s: .string          "absent"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_subscript_bx, @function
n372_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_subscript_α:       sub              rsp, 16
                        mov              r11, 373
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_973_240
                        add              rsp, 16;                             jmp   n371_lit_string_β
.Lsubscript_α_973_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_deref_α
n372_subscript_β:       mov              r11, 373
                        add              rsp, 16;                             jmp   n371_lit_string_β
                        .size            n372_subscript_bx, .-n372_subscript_bx
                        .type            n373_deref_bx, @function
n373_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_deref_α:           sub              rsp, 16
                        mov              r11, 374
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
                        cmp              al, 104;                             jne   .Lderef_α_974_240
                        add              rsp, 16;                             jmp   n372_subscript_β
.Lderef_α_974_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_call_α
n373_deref_β:           mov              r11, 374
                        add              rsp, 16;                             jmp   n372_subscript_β
                        .size            n373_deref_bx, .-n373_deref_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            sub              rsp, 16
                        mov              r11, 375
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd976:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd976]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_975_240
                        add              rsp, 16;                             jmp   n373_deref_β
.Lcall_α_975_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n375_binop_α
n374_call_β:            mov              r11, 375
                        add              rsp, 16;                             jmp   n373_deref_β
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_binop_bx, @function
n375_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_binop_α:           sub              rsp, 16
                        mov              r11, 376
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_977_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_977_7
.Lbinop_α_977_2:        and              edx, 1;                              jz    .Lbinop_α_977_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_977_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_977_4
.Lbinop_α_977_3:        movq             xmm0, rsi
.Lbinop_α_977_4:        cmp              cl, 5;                               je    .Lbinop_α_977_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_977_6
.Lbinop_α_977_5:        movq             xmm1, rdi
.Lbinop_α_977_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_977_7:                                                              jmp   n376_var_α
.Lbinop_α_977_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_977_240
                        add              rsp, 32;                             jmp   n373_deref_β
.Lbinop_α_977_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_var_α
n375_binop_β:           mov              r11, 376
                        add              rsp, 32;                             jmp   n373_deref_β
                        .size            n375_binop_bx, .-n375_binop_bx
                        .type            n376_var_bx, @function
n376_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              r11, 377
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_lit_integer_α
n376_var_β:             mov              r11, 377
                        add              rsp, 16;                             jmp   n375_binop_β
                        .size            n376_var_bx, .-n376_var_bx
                        .type            n377_lit_integer_bx, @function
n377_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     sub              rsp, 16
                        mov              r11, 378
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_979_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_unop_α
n377_lit_integer_β:     mov              r11, 378
                        add              rsp, 16;                             jmp   n376_var_β
.Llit_integer_α_979_0:  .quad            9999
                        .size            n377_lit_integer_bx, .-n377_lit_integer_bx
                        .type            n378_unop_bx, @function
n378_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_unop_α:            sub              rsp, 16
                        mov              r11, 379
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_subscript_α
n378_unop_β:            mov              r11, 379
                        add              rsp, 16;                             jmp   n377_lit_integer_β
                        .size            n378_unop_bx, .-n378_unop_bx
                        .type            n379_subscript_bx, @function
n379_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_subscript_α:       sub              rsp, 16
                        mov              r11, 380
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_981_240
                        add              rsp, 16;                             jmp   n378_unop_β
.Lsubscript_α_981_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_deref_α
n379_subscript_β:       mov              r11, 380
                        add              rsp, 16;                             jmp   n378_unop_β
                        .size            n379_subscript_bx, .-n379_subscript_bx
                        .type            n380_deref_bx, @function
n380_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_deref_α:           sub              rsp, 16
                        mov              r11, 381
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
                        cmp              al, 104;                             jne   .Lderef_α_982_240
                        add              rsp, 16;                             jmp   n379_subscript_β
.Lderef_α_982_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_call_α
n380_deref_β:           mov              r11, 381
                        add              rsp, 16;                             jmp   n379_subscript_β
                        .size            n380_deref_bx, .-n380_deref_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            sub              rsp, 16
                        mov              r11, 382
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd984:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd984]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_983_240
                        add              rsp, 16;                             jmp   n380_deref_β
.Lcall_α_983_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_binop_α
n381_call_β:            mov              r11, 382
                        add              rsp, 16;                             jmp   n380_deref_β
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_binop_bx, @function
n382_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_binop_α:           sub              rsp, 16
                        mov              r11, 383
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_985_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_985_7
.Lbinop_α_985_2:        and              edx, 1;                              jz    .Lbinop_α_985_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_985_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_985_4
.Lbinop_α_985_3:        movq             xmm0, rsi
.Lbinop_α_985_4:        cmp              cl, 5;                               je    .Lbinop_α_985_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_985_6
.Lbinop_α_985_5:        movq             xmm1, rdi
.Lbinop_α_985_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_985_7:                                                              jmp   n383_assign_α
.Lbinop_α_985_0:        mov              rdi, qword ptr [rsp + 112]           # binop
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_985_240
                        add              rsp, 32;                             jmp   n380_deref_β
.Lbinop_α_985_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
                        .size            n382_binop_bx, .-n382_binop_bx
                        .type            n383_assign_bx, @function
n383_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_986_0]
                        .section         .rodata
.Lassign_α_986_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_986_1_s]
                        mov              r8, 57
                        mov              r9, 35
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
                        pop              rax;                                 jmp   n384_statement_end_α
.Lassign_α_986_0:       .quad            .Lassign_α_986_0_s
.Lassign_α_986_0_s:     .string          "ZS"
                        .size            n383_assign_bx, .-n383_assign_bx
                        .type            n384_statement_end_bx, @function
n384_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_end_α:   mov              r11, 385
                        mov              r10, 35
                        add              rsp, 368;                            jmp   n385_lit_integer_α
                        .size            n384_statement_end_bx, .-n384_statement_end_bx
                        .type            n385_lit_integer_bx, @function
n385_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n385_lit_integer_α:     sub              rsp, 16
                        mov              r11, 386
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_989_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n386_lit_integer_α
.Llit_integer_α_989_0:  .quad            36
                        .size            n385_lit_integer_bx, .-n385_lit_integer_bx
                        .type            n386_lit_integer_bx, @function
n386_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:     sub              rsp, 16
                        mov              r11, 387
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_990_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n387_call_α
.Llit_integer_α_990_0:  .quad            58
                        .size            n386_lit_integer_bx, .-n386_lit_integer_bx
                        .type            n387_call_bx, @function
n387_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            sub              rsp, 16
                        mov              r11, 388
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
.Lcall_α_rkfnzd992:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd992]
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
                        cmp              al, 104;                             jne   .Lcall_α_991_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n388_statement_begin_α
.Lcall_α_991_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_statement_begin_α
n387_call_β:            mov              r11, 388
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n388_statement_begin_α
                        .size            n387_call_bx, .-n387_call_bx
                        .type            n388_statement_begin_bx, @function
n388_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_begin_α: mov              r11, 389
                        mov              r10, 36;                             jmp   n389_var_α
n388_statement_begin_β: mov              r11, 389
                        add              rsp, 48;                             jmp   n399_lit_integer_α
                        .size            n388_statement_begin_bx, .-n388_statement_begin_bx
                        .type            n389_var_bx, @function
n389_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             sub              rsp, 16
                        mov              r11, 390
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_var_α
                        .size            n389_var_bx, .-n389_var_bx
                        .type            n390_var_bx, @function
n390_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              r11, 391
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_coerce_numeric_α
n390_var_β:             mov              r11, 391
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n388_statement_begin_β
                        .size            n390_var_bx, .-n390_var_bx
                        .type            n391_coerce_numeric_bx, @function
n391_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 392
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_998_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_998_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_998_0
.Lcoerce_numeric_α_998_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n392_coerce_numeric_α
.Lcoerce_numeric_α_998_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n392_coerce_numeric_α
n391_coerce_numeric_β:  mov              r11, 392
                        add              rsp, 16;                             jmp   n390_var_β
                        .size            n391_coerce_numeric_bx, .-n391_coerce_numeric_bx
                        .type            n392_coerce_numeric_bx, @function
n392_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 393
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1000_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1000_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1000_0
.Lcoerce_numeric_α_1000_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_cmp_test_α
.Lcoerce_numeric_α_1000_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n393_cmp_test_α
n392_coerce_numeric_β:  mov              r11, 393
                        add              rsp, 16;                             jmp   n391_coerce_numeric_β
                        .size            n392_coerce_numeric_bx, .-n392_coerce_numeric_bx
                        .type            n393_cmp_test_bx, @function
n393_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_cmp_test_α:        sub              rsp, 16
                        mov              r11, 394
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_1002_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_1002_239
                        add              rsp, 16;                             jmp   n392_coerce_numeric_β
.Lcmp_test_α_1002_239:                                                        jmp   n394_var_α
.Lcmp_test_α_1002_0:    lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_1002_240
                        add              rsp, 16;                             jmp   n392_coerce_numeric_β
.Lcmp_test_α_1002_240:                                                        jmp   n394_var_α
n393_cmp_test_β:        mov              r11, 394
                        add              rsp, 16;                             jmp   n392_coerce_numeric_β
                        .size            n393_cmp_test_bx, .-n393_cmp_test_bx
                        .type            n394_var_bx, @function
n394_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n395_lit_integer_α
n394_var_β:             mov              r11, 395
                        add              rsp, 16;                             jmp   n393_cmp_test_β
                        .size            n394_var_bx, .-n394_var_bx
                        .type            n395_lit_integer_bx, @function
n395_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     sub              rsp, 16
                        mov              r11, 396
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1004_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n396_binop_α
n395_lit_integer_β:     mov              r11, 396
                        add              rsp, 16;                             jmp   n394_var_β
.Llit_integer_α_1004_0: .quad            1
                        .size            n395_lit_integer_bx, .-n395_lit_integer_bx
                        .type            n396_binop_bx, @function
n396_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_binop_α:           sub              rsp, 16
                        mov              r11, 397
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_1005_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1005_7
.Lbinop_α_1005_2:       mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_1005_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_1005_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1005_4
.Lbinop_α_1005_3:       movq             xmm0, rsi
.Lbinop_α_1005_4:       cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1005_7:                                                             jmp   n397_assign_α
.Lbinop_α_1005_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1005_240
                        add              rsp, 16;                             jmp   n395_lit_integer_β
.Lbinop_α_1005_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_assign_α
                        .size            n396_binop_bx, .-n396_binop_bx
                        .type            n397_assign_bx, @function
n397_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 398
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1006_0]
                        .section         .rodata
.Lassign_α_1006_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1006_1_s]
                        mov              r8, 58
                        mov              r9, 36
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
                        pop              rax;                                 jmp   n398_statement_end_α
.Lassign_α_1006_0:      .quad            .Lassign_α_1006_0_s
.Lassign_α_1006_0_s:    .string          "ZI"
                        .size            n397_assign_bx, .-n397_assign_bx
                        .type            n398_statement_end_bx, @function
n398_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   mov              r11, 399
                        mov              r10, 36
                        add              rsp, 176;                            jmp   n40_lit_integer_α
                        .size            n398_statement_end_bx, .-n398_statement_end_bx
                        .type            n399_lit_integer_bx, @function
n399_lit_integer_bx:
#=======================================================================================================================
#         TABLE_VARIETY = ZS                              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
n399_lit_integer_α:     sub              rsp, 16
                        mov              r11, 400
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1009_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n400_lit_integer_α
.Llit_integer_α_1009_0: .quad            37
                        .size            n399_lit_integer_bx, .-n399_lit_integer_bx
                        .type            n400_lit_integer_bx, @function
n400_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:     sub              rsp, 16
                        mov              r11, 401
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1010_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n401_call_α
.Llit_integer_α_1010_0: .quad            59
                        .size            n400_lit_integer_bx, .-n400_lit_integer_bx
                        .type            n401_call_bx, @function
n401_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            sub              rsp, 16
                        mov              r11, 402
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
.Lcall_α_rkfnzd1012:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1012]
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
                        cmp              al, 104;                             jne   .Lcall_α_1011_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n402_statement_begin_α
.Lcall_α_1011_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_statement_begin_α
n401_call_β:            mov              r11, 402
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n402_statement_begin_α
                        .size            n401_call_bx, .-n401_call_bx
                        .type            n402_statement_begin_bx, @function
n402_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_begin_α: mov              r11, 403
                        mov              r10, 37;                             jmp   n403_var_α
n402_statement_begin_β: mov              r11, 403
                        add              rsp, 48;                             jmp   RETURN
                        .size            n402_statement_begin_bx, .-n402_statement_begin_bx
                        .type            n403_var_bx, @function
n403_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             sub              rsp, 16
                        mov              r11, 404
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_assign_α
                        .size            n403_var_bx, .-n403_var_bx
                        .type            n404_assign_bx, @function
n404_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              r11, 405
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1016_0]
                        .section         .rodata
.Lassign_α_1016_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1016_1_s]
                        mov              r8, 59
                        mov              r9, 37
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
                        pop              rax;                                 jmp   n405_statement_end_α
.Lassign_α_1016_0:      .quad            .Lassign_α_1016_0_s
.Lassign_α_1016_0_s:    .string          "TABLE_VARIETY"
                        .size            n404_assign_bx, .-n404_assign_bx
                        .type            n405_statement_end_bx, @function
n405_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:   mov              r11, 406
                        mov              r10, 37
                        add              rsp, 64;                             jmp   RETURN
                        .size            n405_statement_end_bx, .-n405_statement_end_bx
                        .type            n406_statement_begin_bx, @function
n406_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_begin_α: mov              r11, 407
                        mov              r10, 38;                             jmp   n407_statement_end_α
n406_statement_begin_β: mov              r11, 407
                        add              rsp, 48;                             jmp   n408_lit_integer_α
                        .size            n406_statement_begin_bx, .-n406_statement_begin_bx
                        .type            n407_statement_end_bx, @function
n407_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:   mov              r11, 408
                        mov              r10, 38
                        add              rsp, 48;                             jmp   n408_lit_integer_α
                        .size            n407_statement_end_bx, .-n407_statement_end_bx
                        .type            n408_lit_integer_bx, @function
n408_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'census of one pass  = ' TABLE_VARIETY(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n408_lit_integer_α:     sub              rsp, 16
                        mov              r11, 409
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1023_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_lit_integer_α
.Llit_integer_α_1023_0: .quad            39
                        .size            n408_lit_integer_bx, .-n408_lit_integer_bx
                        .type            n409_lit_integer_bx, @function
n409_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:     sub              rsp, 16
                        mov              r11, 410
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1024_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n410_call_α
.Llit_integer_α_1024_0: .quad            62
                        .size            n409_lit_integer_bx, .-n409_lit_integer_bx
                        .type            n410_call_bx, @function
n410_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            sub              rsp, 16
                        mov              r11, 411
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
.Lcall_α_rkfnzd1026:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1026]
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
                        cmp              al, 104;                             jne   .Lcall_α_1025_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n411_statement_begin_α
.Lcall_α_1025_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_statement_begin_α
n410_call_β:            mov              r11, 411
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n411_statement_begin_α
                        .size            n410_call_bx, .-n410_call_bx
                        .type            n411_statement_begin_bx, @function
n411_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_begin_α: mov              r11, 412
                        mov              r10, 39;                             jmp   n412_lit_string_α
n411_statement_begin_β: mov              r11, 412
                        add              rsp, 48;                             jmp   n418_lit_integer_α
                        .size            n411_statement_begin_bx, .-n411_statement_begin_bx
                        .type            n412_lit_string_bx, @function
n412_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      sub              rsp, 16
                        mov              r11, 413
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_1029_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n413_lit_integer_α
.Llit_string_α_1029_0:  .quad            .Llit_string_α_1029_0_s
.Llit_string_α_1029_0_s:
                        .string          "census of one pass  = "
                        .size            n412_lit_string_bx, .-n412_lit_string_bx
                        .type            n413_lit_integer_bx, @function
n413_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     sub              rsp, 16
                        mov              r11, 414
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1030_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n414_call_α
n413_lit_integer_β:     mov              r11, 414
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
.Llit_integer_α_1030_0: .quad            1
                        .size            n413_lit_integer_bx, .-n413_lit_integer_bx
                        .type            n414_call_bx, @function
n414_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_call_α:            sub              rsp, 16
                        mov              r11, 415
                        lea              rcx, [rip + .Lcall_α_sig1032z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig1032z:      .quad            1
                        .quad            .Lcall_α_1032_2
                        .quad            .Lcall_α_1032_2
                        .quad            16
.Lcall_α_1032_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_1032_29
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
.Lcall_α_1032_29:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_1032_240
                        add              rsp, 16;                             jmp   n413_lit_integer_β
.Lcall_α_1032_240:                                                            jmp   n415_binop_α
n414_call_β:            mov              r11, 415;                            jmp   n413_lit_integer_β
.Lcall_β_1032_0:        .quad            .Lcall_β_1032_0_s
.Lcall_β_1032_0_s:      .string          "TABLE_VARIETY"
                        .size            n414_call_bx, .-n414_call_bx
                        .type            n415_binop_bx, @function
n415_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_α:           sub              rsp, 16
                        mov              r11, 416
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_assign_α
                        .size            n415_binop_bx, .-n415_binop_bx
                        .type            n416_assign_bx, @function
n416_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:          mov              r11, 417
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1034_0]
                        .section         .rodata
.Lassign_α_1034_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1034_1_s]
                        mov              r8, 62
                        mov              r9, 39
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1034_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_statement_end_α
.Lassign_α_1034_0:      .quad            .Lassign_α_1034_0_s
.Lassign_α_1034_0_s:    .string          "OUTPUT"
                        .size            n416_assign_bx, .-n416_assign_bx
                        .type            n417_statement_end_bx, @function
n417_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:   mov              r11, 418
                        mov              r10, 39
                        add              rsp, 112;                            jmp   n418_lit_integer_α
                        .size            n417_statement_end_bx, .-n417_statement_end_bx
                        .type            n418_lit_integer_bx, @function
n418_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' TABLE_VARIETY(40)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n418_lit_integer_α:     sub              rsp, 16
                        mov              r11, 419
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1037_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_lit_integer_α
.Llit_integer_α_1037_0: .quad            40
                        .size            n418_lit_integer_bx, .-n418_lit_integer_bx
                        .type            n419_lit_integer_bx, @function
n419_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:     sub              rsp, 16
                        mov              r11, 420
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1038_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n420_call_α
.Llit_integer_α_1038_0: .quad            63
                        .size            n419_lit_integer_bx, .-n419_lit_integer_bx
                        .type            n420_call_bx, @function
n420_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_α:            sub              rsp, 16
                        mov              r11, 421
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
.Lcall_α_rkfnzd1040:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1040]
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
                        cmp              al, 104;                             jne   .Lcall_α_1039_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n421_statement_begin_α
.Lcall_α_1039_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_statement_begin_α
n420_call_β:            mov              r11, 421
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n421_statement_begin_α
                        .size            n420_call_bx, .-n420_call_bx
                        .type            n421_statement_begin_bx, @function
n421_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_begin_α: mov              r11, 422
                        mov              r10, 40;                             jmp   n422_lit_string_α
n421_statement_begin_β: mov              r11, 422
                        add              rsp, 48;                             jmp   n428_lit_integer_α
                        .size            n421_statement_begin_bx, .-n421_statement_begin_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              r11, 423
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_1043_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_lit_integer_α
.Llit_string_α_1043_0:  .quad            .Llit_string_α_1043_0_s
.Llit_string_α_1043_0_s:
                        .string          "census of 40 passes = "
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_lit_integer_bx, @function
n423_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:     sub              rsp, 16
                        mov              r11, 424
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1044_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n424_call_α
n423_lit_integer_β:     mov              r11, 424
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Llit_integer_α_1044_0: .quad            40
                        .size            n423_lit_integer_bx, .-n423_lit_integer_bx
                        .type            n424_call_bx, @function
n424_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_call_α:            sub              rsp, 16
                        mov              r11, 425
                        lea              rcx, [rip + .Lcall_α_sig1046z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig1046z:      .quad            1
                        .quad            .Lcall_α_1046_2
                        .quad            .Lcall_α_1046_2
                        .quad            16
.Lcall_α_1046_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_1046_29
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
.Lcall_α_1046_29:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_1046_240
                        add              rsp, 16;                             jmp   n423_lit_integer_β
.Lcall_α_1046_240:                                                            jmp   n425_binop_α
n424_call_β:            mov              r11, 425;                            jmp   n423_lit_integer_β
.Lcall_β_1046_0:        .quad            .Lcall_β_1046_0_s
.Lcall_β_1046_0_s:      .string          "TABLE_VARIETY"
                        .size            n424_call_bx, .-n424_call_bx
                        .type            n425_binop_bx, @function
n425_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_binop_α:           sub              rsp, 16
                        mov              r11, 426
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_assign_α
                        .size            n425_binop_bx, .-n425_binop_bx
                        .type            n426_assign_bx, @function
n426_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_assign_α:          mov              r11, 427
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1048_0]
                        .section         .rodata
.Lassign_α_1048_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1048_1_s]
                        mov              r8, 63
                        mov              r9, 40
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1048_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n427_statement_end_α
.Lassign_α_1048_0:      .quad            .Lassign_α_1048_0_s
.Lassign_α_1048_0_s:    .string          "OUTPUT"
                        .size            n426_assign_bx, .-n426_assign_bx
                        .type            n427_statement_end_bx, @function
n427_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_end_α:   mov              r11, 428
                        mov              r10, 40
                        add              rsp, 112;                            jmp   n428_lit_integer_α
                        .size            n427_statement_end_bx, .-n427_statement_end_bx
                        .type            n428_lit_integer_bx, @function
n428_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n428_lit_integer_α:     sub              rsp, 16
                        mov              r11, 429
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1051_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_lit_integer_α
.Llit_integer_α_1051_0: .quad            41
                        .size            n428_lit_integer_bx, .-n428_lit_integer_bx
                        .type            n429_lit_integer_bx, @function
n429_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     sub              rsp, 16
                        mov              r11, 430
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1052_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n430_call_α
.Llit_integer_α_1052_0: .quad            64
                        .size            n429_lit_integer_bx, .-n429_lit_integer_bx
                        .type            n430_call_bx, @function
n430_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_call_α:            sub              rsp, 16
                        mov              r11, 431
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
.Lcall_α_rkfnzd1054:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1054]
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
                        cmp              al, 104;                             jne   .Lcall_α_1053_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n431_statement_begin_α
.Lcall_α_1053_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_statement_begin_α
n430_call_β:            mov              r11, 431
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n431_statement_begin_α
                        .size            n430_call_bx, .-n430_call_bx
                        .type            n431_statement_begin_bx, @function
n431_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α: mov              r11, 432
                        mov              r10, 41;                             jmp   n432_lit_string_α
n431_statement_begin_β: mov              r11, 432
                        add              rsp, 48;                             jmp   main_γ
                        .size            n431_statement_begin_bx, .-n431_statement_begin_bx
                        .type            n432_lit_string_bx, @function
n432_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:      sub              rsp, 16
                        mov              r11, 433
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_1057_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_var_α
.Llit_string_α_1057_0:  .quad            .Llit_string_α_1057_0_s
.Llit_string_α_1057_0_s:
                        .string          "tab[17] = "
                        .size            n432_lit_string_bx, .-n432_lit_string_bx
                        .type            n433_var_bx, @function
n433_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             sub              rsp, 16
                        mov              r11, 434
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_lit_integer_α
n433_var_β:             mov              r11, 434
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n431_statement_begin_β
                        .size            n433_var_bx, .-n433_var_bx
                        .type            n434_lit_integer_bx, @function
n434_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     sub              rsp, 16
                        mov              r11, 435
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1059_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n435_subscript_α
n434_lit_integer_β:     mov              r11, 435
                        add              rsp, 16;                             jmp   n433_var_β
.Llit_integer_α_1059_0: .quad            17
                        .size            n434_lit_integer_bx, .-n434_lit_integer_bx
                        .type            n435_subscript_bx, @function
n435_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_subscript_α:       sub              rsp, 16
                        mov              r11, 436
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_1060_240
                        add              rsp, 16;                             jmp   n434_lit_integer_β
.Lsubscript_α_1060_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_deref_α
n435_subscript_β:       mov              r11, 436
                        add              rsp, 16;                             jmp   n434_lit_integer_β
                        .size            n435_subscript_bx, .-n435_subscript_bx
                        .type            n436_deref_bx, @function
n436_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_deref_α:           sub              rsp, 16
                        mov              r11, 437
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
                        cmp              al, 104;                             jne   .Lderef_α_1061_240
                        add              rsp, 16;                             jmp   n435_subscript_β
.Lderef_α_1061_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_binop_α
n436_deref_β:           mov              r11, 437
                        add              rsp, 16;                             jmp   n435_subscript_β
                        .size            n436_deref_bx, .-n436_deref_bx
                        .type            n437_binop_bx, @function
n437_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_binop_α:           sub              rsp, 16
                        mov              r11, 438
                        mov              rdi, qword ptr [rsp + 80]            # lit_string
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n438_lit_string_α
n437_binop_β:           mov              r11, 438
                        add              rsp, 16;                             jmp   n436_deref_β
                        .size            n437_binop_bx, .-n437_binop_bx
                        .type            n438_lit_string_bx, @function
n438_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      sub              rsp, 16
                        mov              r11, 439
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_1063_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n439_binop_α
n438_lit_string_β:      mov              r11, 439
                        add              rsp, 16;                             jmp   n437_binop_β
.Llit_string_α_1063_0:  .quad            .Llit_string_α_1063_0_s
.Llit_string_α_1063_0_s:
                        .string          "   tab[\"17\"] = "
                        .size            n438_lit_string_bx, .-n438_lit_string_bx
                        .type            n439_binop_bx, @function
n439_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_binop_α:           sub              rsp, 16
                        mov              r11, 440
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_var_α
n439_binop_β:           mov              r11, 440
                        add              rsp, 16;                             jmp   n438_lit_string_β
                        .size            n439_binop_bx, .-n439_binop_bx
                        .type            n440_var_bx, @function
n440_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             sub              rsp, 16
                        mov              r11, 441
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_lit_string_α
n440_var_β:             mov              r11, 441
                        add              rsp, 16;                             jmp   n439_binop_β
                        .size            n440_var_bx, .-n440_var_bx
                        .type            n441_lit_string_bx, @function
n441_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      sub              rsp, 16
                        mov              r11, 442
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1066_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n442_subscript_α
n441_lit_string_β:      mov              r11, 442
                        add              rsp, 16;                             jmp   n440_var_β
.Llit_string_α_1066_0:  .quad            .Llit_string_α_1066_0_s
.Llit_string_α_1066_0_s:
                        .string          "17"
                        .size            n441_lit_string_bx, .-n441_lit_string_bx
                        .type            n442_subscript_bx, @function
n442_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_subscript_α:       sub              rsp, 16
                        mov              r11, 443
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_1067_240
                        add              rsp, 16;                             jmp   n441_lit_string_β
.Lsubscript_α_1067_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_deref_α
n442_subscript_β:       mov              r11, 443
                        add              rsp, 16;                             jmp   n441_lit_string_β
                        .size            n442_subscript_bx, .-n442_subscript_bx
                        .type            n443_deref_bx, @function
n443_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_deref_α:           sub              rsp, 16
                        mov              r11, 444
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
                        cmp              al, 104;                             jne   .Lderef_α_1068_240
                        add              rsp, 16;                             jmp   n442_subscript_β
.Lderef_α_1068_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_binop_α
n443_deref_β:           mov              r11, 444
                        add              rsp, 16;                             jmp   n442_subscript_β
                        .size            n443_deref_bx, .-n443_deref_bx
                        .type            n444_binop_bx, @function
n444_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_binop_α:           sub              rsp, 16
                        mov              r11, 445
                        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n445_lit_string_α
n444_binop_β:           mov              r11, 445
                        add              rsp, 16;                             jmp   n443_deref_β
                        .size            n444_binop_bx, .-n444_binop_bx
                        .type            n445_lit_string_bx, @function
n445_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      sub              rsp, 16
                        mov              r11, 446
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_1070_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_binop_α
n445_lit_string_β:      mov              r11, 446
                        add              rsp, 16;                             jmp   n444_binop_β
.Llit_string_α_1070_0:  .quad            .Llit_string_α_1070_0_s
.Llit_string_α_1070_0_s:
                        .string          "   tab[5] = "
                        .size            n445_lit_string_bx, .-n445_lit_string_bx
                        .type            n446_binop_bx, @function
n446_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:           sub              rsp, 16
                        mov              r11, 447
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_var_α
n446_binop_β:           mov              r11, 447
                        add              rsp, 16;                             jmp   n445_lit_string_β
                        .size            n446_binop_bx, .-n446_binop_bx
                        .type            n447_var_bx, @function
n447_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:             sub              rsp, 16
                        mov              r11, 448
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n448_lit_integer_α
n447_var_β:             mov              r11, 448
                        add              rsp, 16;                             jmp   n446_binop_β
                        .size            n447_var_bx, .-n447_var_bx
                        .type            n448_lit_integer_bx, @function
n448_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     sub              rsp, 16
                        mov              r11, 449
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1073_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_subscript_α
n448_lit_integer_β:     mov              r11, 449
                        add              rsp, 16;                             jmp   n447_var_β
.Llit_integer_α_1073_0: .quad            5
                        .size            n448_lit_integer_bx, .-n448_lit_integer_bx
                        .type            n449_subscript_bx, @function
n449_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_subscript_α:       sub              rsp, 16
                        mov              r11, 450
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_1074_240
                        add              rsp, 16;                             jmp   n448_lit_integer_β
.Lsubscript_α_1074_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_deref_α
n449_subscript_β:       mov              r11, 450
                        add              rsp, 16;                             jmp   n448_lit_integer_β
                        .size            n449_subscript_bx, .-n449_subscript_bx
                        .type            n450_deref_bx, @function
n450_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_deref_α:           sub              rsp, 16
                        mov              r11, 451
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
                        cmp              al, 104;                             jne   .Lderef_α_1075_240
                        add              rsp, 16;                             jmp   n449_subscript_β
.Lderef_α_1075_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_binop_α
n450_deref_β:           mov              r11, 451
                        add              rsp, 16;                             jmp   n449_subscript_β
                        .size            n450_deref_bx, .-n450_deref_bx
                        .type            n451_binop_bx, @function
n451_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:           sub              rsp, 16
                        mov              r11, 452
                        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_assign_α
                        .size            n451_binop_bx, .-n451_binop_bx
                        .type            n452_assign_bx, @function
n452_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_assign_α:          mov              r11, 453
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1077_0]
                        .section         .rodata
.Lassign_α_1077_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1077_1_s]
                        mov              r8, 64
                        mov              r9, 41
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1077_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n453_statement_end_α
.Lassign_α_1077_0:      .quad            .Lassign_α_1077_0_s
.Lassign_α_1077_0_s:    .string          "OUTPUT"
                        .size            n452_assign_bx, .-n452_assign_bx
                        .type            n453_statement_end_bx, @function
n453_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_end_α:   mov              r11, 454
                        mov              r10, 41
                        add              rsp, 368;                            jmp   main_γ
                        .size            n453_statement_end_bx, .-n453_statement_end_bx
                        .type            n454_goto_bx, @function
n454_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_goto_α:            mov              r11, 455;                            jmp   LBL__TABLE_VARIETY
n454_goto_β:            mov              r11, 455;                            jmp   main_ω
                        .size            n454_goto_bx, .-n454_goto_bx
                        .type            n455_lit_integer_bx, @function
n455_lit_integer_bx:
#=======================================================================================================================
# TABLE_VARIETY  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
LBL__TABLE_VARIETY:     sub              rsp, 16
                        mov              r11, 456
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__TABLE_VARIETY_α_1081_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n456_lit_integer_α
.LLBL__TABLE_VARIETY_α_1081_0:
                        .quad            5
                        .size            n455_lit_integer_bx, .-n455_lit_integer_bx
                        .type            n456_lit_integer_bx, @function
n456_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_integer_α:     sub              rsp, 16
                        mov              r11, 457
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1082_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_call_α
.Llit_integer_α_1082_0: .quad            17
                        .size            n456_lit_integer_bx, .-n456_lit_integer_bx
                        .type            n457_call_bx, @function
n457_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            sub              rsp, 16
                        mov              r11, 458
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
.Lcall_α_rkfnzd1084:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1084]
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
                        cmp              al, 104;                             jne   .Lcall_α_1083_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n29_statement_begin_α
.Lcall_α_1083_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_statement_begin_α
n457_call_β:            mov              r11, 458
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n29_statement_begin_α
                        .size            n457_call_bx, .-n457_call_bx
                        .type            n458_goto_bx, @function
n458_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_goto_α:            mov              r11, 459;                            jmp   n40_lit_integer_α
n458_goto_β:            mov              r11, 459;                            jmp   main_ω
                        .size            n458_goto_bx, .-n458_goto_bx
                        .type            n459_goto_bx, @function
n459_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_goto_α:            mov              r11, 460;                            jmp   n56_lit_integer_α
n459_goto_β:            mov              r11, 460;                            jmp   main_ω
                        .size            n459_goto_bx, .-n459_goto_bx
                        .type            n460_goto_bx, @function
n460_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_goto_α:            mov              r11, 461;                            jmp   n88_lit_integer_α
n460_goto_β:            mov              r11, 461;                            jmp   main_ω
                        .size            n460_goto_bx, .-n460_goto_bx
                        .type            n461_goto_bx, @function
n461_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_goto_α:            mov              r11, 462;                            jmp   n144_lit_integer_α
n461_goto_β:            mov              r11, 462;                            jmp   main_ω
                        .size            n461_goto_bx, .-n461_goto_bx
                        .type            n462_goto_bx, @function
n462_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_goto_α:            mov              r11, 463;                            jmp   n244_lit_integer_α
n462_goto_β:            mov              r11, 463;                            jmp   main_ω
                        .size            n462_goto_bx, .-n462_goto_bx
                        .type            n463_goto_bx, @function
n463_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_goto_α:            mov              r11, 464;                            jmp   n277_lit_integer_α
n463_goto_β:            mov              r11, 464;                            jmp   main_ω
                        .size            n463_goto_bx, .-n463_goto_bx
                        .type            n464_goto_bx, @function
n464_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_goto_α:            mov              r11, 465;                            jmp   n319_lit_integer_α
n464_goto_β:            mov              r11, 465;                            jmp   main_ω
                        .size            n464_goto_bx, .-n464_goto_bx
                        .type            n465_goto_bx, @function
n465_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_goto_α:            mov              r11, 466;                            jmp   n26_lit_integer_α
n465_goto_β:            mov              r11, 466;                            jmp   main_ω
                        .size            n465_goto_bx, .-n465_goto_bx
                        .type            n466_define_bx, @function
n466_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 467
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
                        .size            n466_define_bx, .-n466_define_bx
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
.Lstartup_pname0:       .string          "LBL__TABLE_VARIETY"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__TABLE_VARIETY
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            7632
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "TABLE_VARIETY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            TABLE_VARIETY_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + TABLE_VARIETY_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
