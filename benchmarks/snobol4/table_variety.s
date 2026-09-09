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
                        mov              rax, qword ptr [rip + .Llit_integer_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_473_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_474_0:  .quad            13
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_475_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_475_0:   .quad            .Llit_string_α_475_0_s
.Llit_string_α_475_0_s: .string          "table_variety.sno"
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
.Lcall_α_rkfnzd477:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd477]
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
                        cmp              al, 104;                             jne   .Lcall_α_476_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_476_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_480_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_480_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_481_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_481_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_481_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_481_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_484_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_484_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_485_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_485_0:  .quad            14
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
.Lcall_α_rkfnzd487:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd487]
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
                        cmp              al, 104;                             jne   .Lcall_α_486_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_486_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_490_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_490_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_491_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_491_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_491_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_491_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_494_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_495_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_495_0:  .quad            15
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
.Lcall_α_rkfnzd497:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd497]
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
                        cmp              al, 104;                             jne   .Lcall_α_496_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_496_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_500_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_500_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_502_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_502_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_502_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_502_0:
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
#         DEFINE('TABLE_VARIETY(N)')                      :(TABLE_VARIETY_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_505_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
.Llit_integer_α_505_0:  .quad            4
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Llit_integer_α_506_0:  .quad            16
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
.Lcall_α_rkfnzd508:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd508]
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
                        cmp              al, 104;                             jne   .Lcall_α_507_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n26_statement_begin_α
.Lcall_α_507_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_512_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_512_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_512_0]
                        lea              rsi, [rip + TABLE_VARIETY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__TABLE_VARIETY]
                        mov              rcx, qword ptr [rip + body_cell$TABLE_VARIETY@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n28_statement_end_α
n27_define_β:           mov              r11, 28;                             jmp   n26_statement_begin_β
.Ldefine_α_512_0:       .quad            .Ldefine_α_512_0_s
.Ldefine_α_512_0_s:     .string          "TABLE_VARIETY"
.Ldefine_α_512_1:       .quad            .Ldefine_α_512_1_s
.Ldefine_α_512_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_513_245
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_513_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_513_41
.Ldefine_α_513_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_513_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_513_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_513_230
.Ldefine_α_513_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_513_232]
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
.Ldefine_α_513_230:                                                           jmp   .Ldefine_α_513_231
.Ldefine_α_513_232:     .quad            .Ldefine_α_513_232_s
.Ldefine_α_513_232_s:   .string          "TABLE_VARIETY"
.Ldefine_α_513_231:     lea              rcx, [rip + TABLE_VARIETY_γ]
                        lea              rax, [rip + TABLE_VARIETY_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$TABLE_VARIETY:
                        .quad            LBL__TABLE_VARIETY
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$TABLE_VARIETY@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
TABLE_VARIETY_γ:        mov              rdi, qword ptr [r9 + 0]              # TABLE_VARIETY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_513_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_513_235
.Ldefine_α_513_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_513_237]
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
.Ldefine_α_513_235:                                                           jmp   .Ldefine_α_513_236
.Ldefine_α_513_237:     .quad            .Ldefine_α_513_237_s
.Ldefine_α_513_237_s:   .string          "TABLE_VARIETY"
.Ldefine_α_513_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_513_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_513_110
.Ldefine_α_513_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_513_110:     push             rcx
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
TABLE_VARIETY_ω:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # TABLE_VARIETY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_513_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_513_180
.Ldefine_α_513_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_513_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_513_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_513_249
.Ldefine_α_513_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_513_237]
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
.Ldefine_α_513_249:     push             rcx
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
.Ldefine_α_513_245:
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
# TABLE_VARIETY_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Llit_integer_α_516_0:  .quad            38
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_517_0:  .quad            60
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
                        add              rsp, -16;                            jmp   n409_statement_begin_α
.Lcall_α_518_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_statement_begin_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n409_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_522_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Llit_integer_α_522_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_523_0]
                        .section         .rodata
.Lassign_α_523_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_523_1_s]
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
                        pop              rax;                                 jmp   n35_statement_end_α
.Lassign_α_523_0:       .quad            .Lassign_α_523_0_s
.Lassign_α_523_0_s:     .string          "ZI"
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
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
.Llit_integer_α_526_0:  .quad            6
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Llit_integer_α_527_0:  .quad            18
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
                        add              rsp, -16;                            jmp   n39_statement_begin_α
.Lcall_α_528_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 48;                             jmp   n43_lit_integer_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Llit_integer_α_532_0:  .quad            0
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
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
                        mov              rdi, qword ptr [rip + .Lassign_α_533_0]
                        .section         .rodata
.Lassign_α_533_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_533_1_s]
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
                        pop              rax;                                 jmp   n42_statement_end_α
.Lassign_α_533_0:       .quad            .Lassign_α_533_0_s
.Lassign_α_533_0_s:     .string          "ZS"
                        .size            n41_assign_bx, .-n41_assign_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 6
                        add              rsp, 64;                             jmp   n43_lit_integer_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#=======================================================================================================================
# ZBL     tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_lit_integer_α
.Llit_integer_α_536_0:  .quad            7
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
.Llit_integer_α_537_0:  .quad            19
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        mov              r11, 46
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
.Lcall_α_rkfnzd539:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd539]
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
                        cmp              al, 104;                             jne   .Lcall_α_538_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
.Lcall_α_538_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_statement_begin_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 7;                              jmp   n47_lit_integer_α
n46_statement_begin_β:  mov              r11, 47
                        add              rsp, 48;                             jmp   n51_lit_integer_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_542_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_call_α
.Llit_integer_α_542_0:  .quad            64
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_call_bx, @function
n48_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:             sub              rsp, 16
                        mov              r11, 49
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd544:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd544]
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
                        cmp              al, 104;                             jne   .Lcall_α_543_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Lcall_α_543_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_assign_α
n48_call_β:             mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
                        .size            n48_call_bx, .-n48_call_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
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
                        mov              rdi, qword ptr [rip + .Lassign_α_545_0]
                        .section         .rodata
.Lassign_α_545_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_545_1_s]
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
                        pop              rax;                                 jmp   n50_statement_end_α
.Lassign_α_545_0:       .quad            .Lassign_α_545_0_s
.Lassign_α_545_0_s:     .string          "tab"
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        mov              r10, 7
                        add              rsp, 80;                             jmp   n51_lit_integer_α
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_lit_integer_α
.Llit_integer_α_548_0:  .quad            8
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_549_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_call_α
.Llit_integer_α_549_0:  .quad            21
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
.Lcall_α_rkfnzd551:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd551]
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
                        cmp              al, 104;                             jne   .Lcall_α_550_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n54_statement_begin_α
.Lcall_α_550_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_statement_begin_α
n53_call_β:             mov              r11, 54
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n54_statement_begin_α
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55
                        mov              r10, 8;                              jmp   n55_lit_integer_α
n54_statement_begin_β:  mov              r11, 55
                        add              rsp, 48;                             jmp   n59_lit_integer_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_554_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_unop_α
.Llit_integer_α_554_0:  .quad            30
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_unop_bx, @function
n56_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_unop_α:             sub              rsp, 16
                        mov              r11, 57
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_assign_α
                        .size            n56_unop_bx, .-n56_unop_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 58
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
                        mov              rdi, qword ptr [rip + .Lassign_α_556_0]
                        .section         .rodata
.Lassign_α_556_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_556_1_s]
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
                        pop              rax;                                 jmp   n58_statement_end_α
.Lassign_α_556_0:       .quad            .Lassign_α_556_0_s
.Lassign_α_556_0_s:     .string          "ix"
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n59_lit_integer_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#=======================================================================================================================
# INTFILL tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n59_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_559_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_lit_integer_α
.Llit_integer_α_559_0:  .quad            9
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_560_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_call_α
.Llit_integer_α_560_0:  .quad            22
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        mov              r11, 62
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
.Lcall_α_rkfnzd562:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd562]
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
                        cmp              al, 104;                             jne   .Lcall_α_561_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n62_statement_begin_α
.Lcall_α_561_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_statement_begin_α
n61_call_β:             mov              r11, 62
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n62_statement_begin_α
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 9;                              jmp   n63_var_α
n62_statement_begin_β:  mov              r11, 63
                        add              rsp, 48;                             jmp   n70_lit_integer_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_var_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_var_α
n64_var_β:              mov              r11, 65
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_β
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_integer_α
n65_var_β:              mov              r11, 66
                        add              rsp, 16;                             jmp   n64_var_β
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_lit_integer_bx, @function
n66_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_568_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_binop_α
n66_lit_integer_β:      mov              r11, 67
                        add              rsp, 16;                             jmp   n65_var_β
.Llit_integer_α_568_0:  .quad            3
                        .size            n66_lit_integer_bx, .-n66_lit_integer_bx
                        .type            n67_binop_bx, @function
n67_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              r11, 68
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_569_2
                        mov              rdx, 3
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_569_7
.Lbinop_α_569_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_569_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_569_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_569_4
.Lbinop_α_569_3:        movq             xmm0, rsi
.Lbinop_α_569_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_569_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_569_7:                                                              jmp   n68_assign_var_α
.Lbinop_α_569_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_569_240
                        add              rsp, 16;                             jmp   n66_lit_integer_β
.Lbinop_α_569_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_assign_var_α
n67_binop_β:            mov              r11, 68
                        add              rsp, 16;                             jmp   n66_lit_integer_β
                        .size            n67_binop_bx, .-n67_binop_bx
                        .type            n68_assign_var_bx, @function
n68_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_var_α:       sub              rsp, 16
                        mov              r11, 69
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_571_0
                        test             rsi, rsi;                            je    .Lassign_var_α_571_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_571_238
                        add              rsp, 16;                             jmp   n67_binop_β
.Lassign_var_α_571_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_statement_end_α
.Lassign_var_α_571_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_571_239
                        add              rsp, 16;                             jmp   n67_binop_β
.Lassign_var_α_571_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_571_240
                        add              rsp, 16;                             jmp   n67_binop_β
.Lassign_var_α_571_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_statement_end_α
                        .size            n68_assign_var_bx, .-n68_assign_var_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        mov              r10, 9
                        add              rsp, 144;                            jmp   n70_lit_integer_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n70_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_574_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_lit_integer_α
.Llit_integer_α_574_0:  .quad            10
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_575_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_call_α
.Llit_integer_α_575_0:  .quad            23
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             sub              rsp, 16
                        mov              r11, 73
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
.Lcall_α_rkfnzd577:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd577]
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
                        cmp              al, 104;                             jne   .Lcall_α_576_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n73_statement_begin_α
.Lcall_α_576_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_statement_begin_α
n72_call_β:             mov              r11, 73
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n73_statement_begin_α
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_statement_begin_bx, @function
n73_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 10;                             jmp   n74_var_α
n73_statement_begin_β:  mov              r11, 74
                        add              rsp, 48;                             jmp   n84_lit_integer_α
                        .size            n73_statement_begin_bx, .-n73_statement_begin_bx
                        .type            n74_var_bx, @function
n74_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              r11, 75
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_581_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_coerce_numeric_α
n75_lit_integer_β:      mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Llit_integer_α_581_0:  .quad            30
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_coerce_numeric_bx, @function
n76_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 77
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_583_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_583_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_583_0
.Lcoerce_numeric_α_583_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_coerce_numeric_α
.Lcoerce_numeric_α_583_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_coerce_numeric_α
n76_coerce_numeric_β:   mov              r11, 77
                        add              rsp, 16;                             jmp   n75_lit_integer_β
                        .size            n76_coerce_numeric_bx, .-n76_coerce_numeric_bx
                        .type            n77_coerce_numeric_bx, @function
n77_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 78
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_585_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_585_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_585_0
.Lcoerce_numeric_α_585_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_cmp_test_α
.Lcoerce_numeric_α_585_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_587_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_587_239
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lcmp_test_α_587_239:                                                         jmp   n79_var_α
.Lcmp_test_α_587_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_587_240
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lcmp_test_α_587_240:                                                         jmp   n79_var_α
n78_cmp_test_β:         mov              r11, 79
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
                        .size            n78_cmp_test_bx, .-n78_cmp_test_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_589_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_binop_α
n80_lit_integer_β:      mov              r11, 81
                        add              rsp, 16;                             jmp   n79_var_β
.Llit_integer_α_589_0:  .quad            1
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_binop_bx, @function
n81_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            sub              rsp, 16
                        mov              r11, 82
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_590_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_590_7
.Lbinop_α_590_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_590_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_590_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_590_4
.Lbinop_α_590_3:        movq             xmm0, rsi
.Lbinop_α_590_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_590_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_590_7:                                                              jmp   n82_assign_α
.Lbinop_α_590_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_590_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lbinop_α_590_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_assign_α
                        .size            n81_binop_bx, .-n81_binop_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 83
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
                        mov              rdi, qword ptr [rip + .Lassign_α_591_0]
                        .section         .rodata
.Lassign_α_591_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_591_1_s]
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
                        pop              rax;                                 jmp   n83_statement_end_α
.Lassign_α_591_0:       .quad            .Lassign_α_591_0_s
.Lassign_α_591_0_s:     .string          "ix"
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 84
                        mov              r10, 10
                        add              rsp, 176;                            jmp   n59_lit_integer_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_integer_α
.Llit_integer_α_594_0:  .quad            11
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_595_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_α
.Llit_integer_α_595_0:  .quad            25
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             sub              rsp, 16
                        mov              r11, 87
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
                        add              rsp, -16;                            jmp   n87_statement_begin_α
.Lcall_α_596_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_statement_begin_α
n86_call_β:             mov              r11, 87
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n87_statement_begin_α
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88
                        mov              r10, 11;                             jmp   n88_lit_integer_α
n87_statement_begin_β:  mov              r11, 88
                        add              rsp, 48;                             jmp   n91_lit_integer_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_600_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_assign_α
.Llit_integer_α_600_0:  .quad            1
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_assign_bx, @function
n89_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 90
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
                        mov              rdi, qword ptr [rip + .Lassign_α_601_0]
                        .section         .rodata
.Lassign_α_601_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_601_1_s]
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
                        pop              rax;                                 jmp   n90_statement_end_α
.Lassign_α_601_0:       .quad            .Lassign_α_601_0_s
.Lassign_α_601_0_s:     .string          "sx"
                        .size            n89_assign_bx, .-n89_assign_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 91
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n91_lit_integer_α
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#=======================================================================================================================
# STRFILL tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_604_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_lit_integer_α
.Llit_integer_α_604_0:  .quad            12
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_call_α
.Llit_integer_α_605_0:  .quad            26
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
.Lcall_α_rkfnzd607:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd607]
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
                        cmp              al, 104;                             jne   .Lcall_α_606_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n94_statement_begin_α
.Lcall_α_606_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_statement_begin_α
n93_call_β:             mov              r11, 94
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n94_statement_begin_α
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 95
                        mov              r10, 12;                             jmp   n95_var_α
n94_statement_begin_β:  mov              r11, 95
                        add              rsp, 48;                             jmp   n104_lit_integer_α
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_lit_string_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_lit_string_bx, @function
n96_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_var_α
n96_lit_string_β:       mov              r11, 97
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Llit_string_α_611_0:   .quad            .Llit_string_α_611_0_s
.Llit_string_α_611_0_s: .string          "k"
                        .size            n96_lit_string_bx, .-n96_lit_string_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_binop_α
n97_var_β:              mov              r11, 98
                        add              rsp, 16;                             jmp   n96_lit_string_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_binop_bx, @function
n98_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              r11, 99
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_var_α
n98_binop_β:            mov              r11, 99
                        add              rsp, 16;                             jmp   n97_var_β
                        .size            n98_binop_bx, .-n98_binop_bx
                        .type            n99_var_bx, @function
n99_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_lit_integer_α
n99_var_β:              mov              r11, 100
                        add              rsp, 16;                             jmp   n98_binop_β
                        .size            n99_var_bx, .-n99_var_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_binop_α
n100_lit_integer_β:     mov              r11, 101
                        add              rsp, 16;                             jmp   n99_var_β
.Llit_integer_α_615_0:  .quad            5
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_binop_bx, @function
n101_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:           sub              rsp, 16
                        mov              r11, 102
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_616_2
                        mov              rdx, 5
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_616_7
.Lbinop_α_616_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_616_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_616_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_616_4
.Lbinop_α_616_3:        movq             xmm0, rsi
.Lbinop_α_616_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_616_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_616_7:                                                              jmp   n102_assign_var_α
.Lbinop_α_616_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_616_240
                        add              rsp, 16;                             jmp   n100_lit_integer_β
.Lbinop_α_616_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_var_α
n101_binop_β:           mov              r11, 102
                        add              rsp, 16;                             jmp   n100_lit_integer_β
                        .size            n101_binop_bx, .-n101_binop_bx
                        .type            n102_assign_var_bx, @function
n102_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_var_α:      sub              rsp, 16
                        mov              r11, 103
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_618_0
                        test             rsi, rsi;                            je    .Lassign_var_α_618_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_618_238
                        add              rsp, 16;                             jmp   n101_binop_β
.Lassign_var_α_618_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_statement_end_α
.Lassign_var_α_618_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_618_239
                        add              rsp, 16;                             jmp   n101_binop_β
.Lassign_var_α_618_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_618_240
                        add              rsp, 16;                             jmp   n101_binop_β
.Lassign_var_α_618_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_statement_end_α
                        .size            n102_assign_var_bx, .-n102_assign_var_bx
                        .type            n103_statement_end_bx, @function
n103_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 104
                        mov              r10, 12
                        add              rsp, 176;                            jmp   n104_lit_integer_α
                        .size            n103_statement_end_bx, .-n103_statement_end_bx
                        .type            n104_lit_integer_bx, @function
n104_lit_integer_bx:
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n104_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_621_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_lit_integer_α
.Llit_integer_α_621_0:  .quad            13
                        .size            n104_lit_integer_bx, .-n104_lit_integer_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_call_α
.Llit_integer_α_622_0:  .quad            27
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
.Lcall_α_rkfnzd624:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd624]
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
                        cmp              al, 104;                             jne   .Lcall_α_623_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n107_statement_begin_α
.Lcall_α_623_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_statement_begin_α
n106_call_β:            mov              r11, 107
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n107_statement_begin_α
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 108
                        mov              r10, 13;                             jmp   n108_var_α
n107_statement_begin_β: mov              r11, 108
                        add              rsp, 48;                             jmp   n117_lit_integer_α
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_var_bx, @function
n108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              r11, 109
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_lit_string_α
                        .size            n108_var_bx, .-n108_var_bx
                        .type            n109_lit_string_bx, @function
n109_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_628_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_var_α
n109_lit_string_β:      mov              r11, 110
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Llit_string_α_628_0:   .quad            .Llit_string_α_628_0_s
.Llit_string_α_628_0_s: .string          "a_much_longer_key_"
                        .size            n109_lit_string_bx, .-n109_lit_string_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_binop_α
n110_var_β:             mov              r11, 111
                        add              rsp, 16;                             jmp   n109_lit_string_β
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_binop_bx, @function
n111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              r11, 112
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_var_α
n111_binop_β:           mov              r11, 112
                        add              rsp, 16;                             jmp   n110_var_β
                        .size            n111_binop_bx, .-n111_binop_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_lit_integer_α
n112_var_β:             mov              r11, 113
                        add              rsp, 16;                             jmp   n111_binop_β
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_lit_integer_bx, @function
n113_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_632_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_binop_α
n113_lit_integer_β:     mov              r11, 114
                        add              rsp, 16;                             jmp   n112_var_β
.Llit_integer_α_632_0:  .quad            7
                        .size            n113_lit_integer_bx, .-n113_lit_integer_bx
                        .type            n114_binop_bx, @function
n114_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_binop_α:           sub              rsp, 16
                        mov              r11, 115
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_633_2
                        mov              rdx, 7
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_633_7
.Lbinop_α_633_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_633_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_633_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_633_4
.Lbinop_α_633_3:        movq             xmm0, rsi
.Lbinop_α_633_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_633_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_633_7:                                                              jmp   n115_assign_var_α
.Lbinop_α_633_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_633_240
                        add              rsp, 16;                             jmp   n113_lit_integer_β
.Lbinop_α_633_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_assign_var_α
n114_binop_β:           mov              r11, 115
                        add              rsp, 16;                             jmp   n113_lit_integer_β
                        .size            n114_binop_bx, .-n114_binop_bx
                        .type            n115_assign_var_bx, @function
n115_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_var_α:      sub              rsp, 16
                        mov              r11, 116
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_635_0
                        test             rsi, rsi;                            je    .Lassign_var_α_635_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_635_238
                        add              rsp, 16;                             jmp   n114_binop_β
.Lassign_var_α_635_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_statement_end_α
.Lassign_var_α_635_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_635_239
                        add              rsp, 16;                             jmp   n114_binop_β
.Lassign_var_α_635_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_635_240
                        add              rsp, 16;                             jmp   n114_binop_β
.Lassign_var_α_635_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_statement_end_α
                        .size            n115_assign_var_bx, .-n115_assign_var_bx
                        .type            n116_statement_end_bx, @function
n116_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 117
                        mov              r10, 13
                        add              rsp, 176;                            jmp   n117_lit_integer_α
                        .size            n116_statement_end_bx, .-n116_statement_end_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRFILL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_638_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_lit_integer_α
.Llit_integer_α_638_0:  .quad            14
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_639_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_call_α
.Llit_integer_α_639_0:  .quad            28
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            sub              rsp, 16
                        mov              r11, 120
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
.Lcall_α_rkfnzd641:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd641]
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
                        cmp              al, 104;                             jne   .Lcall_α_640_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n120_statement_begin_α
.Lcall_α_640_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_statement_begin_α
n119_call_β:            mov              r11, 120
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n120_statement_begin_α
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_statement_begin_bx, @function
n120_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α: mov              r11, 121
                        mov              r10, 14;                             jmp   n121_var_α
n120_statement_begin_β: mov              r11, 121
                        add              rsp, 48;                             jmp   n131_lit_integer_α
                        .size            n120_statement_begin_bx, .-n120_statement_begin_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_lit_integer_α
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_lit_integer_bx, @function
n122_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     sub              rsp, 16
                        mov              r11, 123
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_645_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_coerce_numeric_α
n122_lit_integer_β:     mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n120_statement_begin_β
.Llit_integer_α_645_0:  .quad            20
                        .size            n122_lit_integer_bx, .-n122_lit_integer_bx
                        .type            n123_coerce_numeric_bx, @function
n123_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 124
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_647_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_647_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_647_0
.Lcoerce_numeric_α_647_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_coerce_numeric_α
.Lcoerce_numeric_α_647_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_coerce_numeric_α
n123_coerce_numeric_β:  mov              r11, 124
                        add              rsp, 16;                             jmp   n122_lit_integer_β
                        .size            n123_coerce_numeric_bx, .-n123_coerce_numeric_bx
                        .type            n124_coerce_numeric_bx, @function
n124_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 125
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_649_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_649_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_649_0
.Lcoerce_numeric_α_649_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_cmp_test_α
.Lcoerce_numeric_α_649_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_cmp_test_α
n124_coerce_numeric_β:  mov              r11, 125
                        add              rsp, 16;                             jmp   n123_coerce_numeric_β
                        .size            n124_coerce_numeric_bx, .-n124_coerce_numeric_bx
                        .type            n125_cmp_test_bx, @function
n125_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_cmp_test_α:        sub              rsp, 16
                        mov              r11, 126
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_651_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_651_239
                        add              rsp, 16;                             jmp   n124_coerce_numeric_β
.Lcmp_test_α_651_239:                                                         jmp   n126_var_α
.Lcmp_test_α_651_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_651_240
                        add              rsp, 16;                             jmp   n124_coerce_numeric_β
.Lcmp_test_α_651_240:                                                         jmp   n126_var_α
n125_cmp_test_β:        mov              r11, 126
                        add              rsp, 16;                             jmp   n124_coerce_numeric_β
                        .size            n125_cmp_test_bx, .-n125_cmp_test_bx
                        .type            n126_var_bx, @function
n126_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_lit_integer_α
n126_var_β:             mov              r11, 127
                        add              rsp, 16;                             jmp   n125_cmp_test_β
                        .size            n126_var_bx, .-n126_var_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_653_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_binop_α
n127_lit_integer_β:     mov              r11, 128
                        add              rsp, 16;                             jmp   n126_var_β
.Llit_integer_α_653_0:  .quad            1
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_binop_bx, @function
n128_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:           sub              rsp, 16
                        mov              r11, 129
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_654_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_654_7
.Lbinop_α_654_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_654_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_654_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_654_4
.Lbinop_α_654_3:        movq             xmm0, rsi
.Lbinop_α_654_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_654_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_654_7:                                                              jmp   n129_assign_α
.Lbinop_α_654_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_654_240
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lbinop_α_654_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_assign_α
                        .size            n128_binop_bx, .-n128_binop_bx
                        .type            n129_assign_bx, @function
n129_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              r11, 130
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
                        mov              rdi, qword ptr [rip + .Lassign_α_655_0]
                        .section         .rodata
.Lassign_α_655_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_655_1_s]
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
                        pop              rax;                                 jmp   n130_statement_end_α
.Lassign_α_655_0:       .quad            .Lassign_α_655_0_s
.Lassign_α_655_0_s:     .string          "sx"
                        .size            n129_assign_bx, .-n129_assign_bx
                        .type            n130_statement_end_bx, @function
n130_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 131
                        mov              r10, 14
                        add              rsp, 176;                            jmp   n91_lit_integer_α
                        .size            n130_statement_end_bx, .-n130_statement_end_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n131_lit_integer_α:     sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_658_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_lit_integer_α
.Llit_integer_α_658_0:  .quad            15
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_659_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_call_α
.Llit_integer_α_659_0:  .quad            29
                        .size            n132_lit_integer_bx, .-n132_lit_integer_bx
                        .type            n133_call_bx, @function
n133_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        mov              r11, 134
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
.Lcall_α_rkfnzd661:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd661]
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
                        cmp              al, 104;                             jne   .Lcall_α_660_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n134_statement_begin_α
.Lcall_α_660_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_statement_begin_α
n133_call_β:            mov              r11, 134
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n134_statement_begin_α
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_statement_begin_bx, @function
n134_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α: mov              r11, 135
                        mov              r10, 15;                             jmp   n135_var_α
n134_statement_begin_β: mov              r11, 135
                        add              rsp, 48;                             jmp   n140_lit_integer_α
                        .size            n134_statement_begin_bx, .-n134_statement_begin_bx
                        .type            n135_var_bx, @function
n135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_lit_string_α
                        .size            n135_var_bx, .-n135_var_bx
                        .type            n136_lit_string_bx, @function
n136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      sub              rsp, 16
                        mov              r11, 137
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_lit_integer_α
n136_lit_string_β:      mov              r11, 137
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n134_statement_begin_β
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          "17"
                        .size            n136_lit_string_bx, .-n136_lit_string_bx
                        .type            n137_lit_integer_bx, @function
n137_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_666_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_assign_var_α
n137_lit_integer_β:     mov              r11, 138
                        add              rsp, 16;                             jmp   n136_lit_string_β
.Llit_integer_α_666_0:  .quad            1700
                        .size            n137_lit_integer_bx, .-n137_lit_integer_bx
                        .type            n138_assign_var_bx, @function
n138_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_var_α:      sub              rsp, 16
                        mov              r11, 139
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_668_0
                        test             rsi, rsi;                            je    .Lassign_var_α_668_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_668_238
                        add              rsp, 16;                             jmp   n137_lit_integer_β
.Lassign_var_α_668_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_statement_end_α
.Lassign_var_α_668_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_668_239
                        add              rsp, 16;                             jmp   n137_lit_integer_β
.Lassign_var_α_668_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_668_240
                        add              rsp, 16;                             jmp   n137_lit_integer_β
.Lassign_var_α_668_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_statement_end_α
                        .size            n138_assign_var_bx, .-n138_assign_var_bx
                        .type            n139_statement_end_bx, @function
n139_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   mov              r11, 140
                        mov              r10, 15
                        add              rsp, 112;                            jmp   n140_lit_integer_α
                        .size            n139_statement_end_bx, .-n139_statement_end_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n140_lit_integer_α:     sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_671_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_lit_integer_α
.Llit_integer_α_671_0:  .quad            16
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_672_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_call_α
.Llit_integer_α_672_0:  .quad            31
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        mov              r11, 143
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
                        add              rsp, -16;                            jmp   n143_statement_begin_α
.Lcall_α_673_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_statement_begin_α
n142_call_β:            mov              r11, 143
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n143_statement_begin_α
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_statement_begin_bx, @function
n143_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 144
                        mov              r10, 16;                             jmp   n144_lit_integer_α
n143_statement_begin_β: mov              r11, 144
                        add              rsp, 48;                             jmp   n147_lit_integer_α
                        .size            n143_statement_begin_bx, .-n143_statement_begin_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 145
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_677_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_assign_α
.Llit_integer_α_677_0:  .quad            1
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_assign_bx, @function
n145_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              r11, 146
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
                        mov              rdi, qword ptr [rip + .Lassign_α_678_0]
                        .section         .rodata
.Lassign_α_678_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_678_1_s]
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
                        pop              rax;                                 jmp   n146_statement_end_α
.Lassign_α_678_0:       .quad            .Lassign_α_678_0_s
.Lassign_α_678_0_s:     .string          "rx"
                        .size            n145_assign_bx, .-n145_assign_bx
                        .type            n146_statement_end_bx, @function
n146_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 147
                        mov              r10, 16
                        add              rsp, 64;                             jmp   n147_lit_integer_α
                        .size            n146_statement_end_bx, .-n146_statement_end_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#=======================================================================================================================
# REALFIL tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_681_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_lit_integer_α
.Llit_integer_α_681_0:  .quad            17
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_682_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_call_α
.Llit_integer_α_682_0:  .quad            32
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_call_bx, @function
n149_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            sub              rsp, 16
                        mov              r11, 150
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
.Lcall_α_rkfnzd684:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd684]
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
                        cmp              al, 104;                             jne   .Lcall_α_683_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n150_statement_begin_α
.Lcall_α_683_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_statement_begin_α
n149_call_β:            mov              r11, 150
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n150_statement_begin_α
                        .size            n149_call_bx, .-n149_call_bx
                        .type            n150_statement_begin_bx, @function
n150_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151
                        mov              r10, 17;                             jmp   n151_var_α
n150_statement_begin_β: mov              r11, 151
                        add              rsp, 48;                             jmp   n160_lit_integer_α
                        .size            n150_statement_begin_bx, .-n150_statement_begin_bx
                        .type            n151_var_bx, @function
n151_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
                        .size            n151_var_bx, .-n151_var_bx
                        .type            n152_var_bx, @function
n152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_real_α
n152_var_β:             mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
                        .size            n152_var_bx, .-n152_var_bx
                        .type            n153_lit_real_bx, @function
n153_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_real_α:        sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_689_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_binop_α
.Llit_real_α_689_0:     .quad            4611686018427387904
                        .size            n153_lit_real_bx, .-n153_lit_real_bx
                        .type            n154_binop_bx, @function
n154_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           sub              rsp, 16
                        mov              r11, 155
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
                        cmp              al, 104;                             jne   .Lbinop_α_690_240
                        add              rsp, 32;                             jmp   n152_var_β
.Lbinop_α_690_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_var_α
n154_binop_β:           mov              r11, 155
                        add              rsp, 32;                             jmp   n152_var_β
                        .size            n154_binop_bx, .-n154_binop_bx
                        .type            n155_var_bx, @function
n155_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_lit_integer_α
n155_var_β:             mov              r11, 156
                        add              rsp, 16;                             jmp   n154_binop_β
                        .size            n155_var_bx, .-n155_var_bx
                        .type            n156_lit_integer_bx, @function
n156_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_692_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_binop_α
n156_lit_integer_β:     mov              r11, 157
                        add              rsp, 16;                             jmp   n155_var_β
.Llit_integer_α_692_0:  .quad            11
                        .size            n156_lit_integer_bx, .-n156_lit_integer_bx
                        .type            n157_binop_bx, @function
n157_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:           sub              rsp, 16
                        mov              r11, 158
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_693_2
                        mov              rdx, 11
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_693_7
.Lbinop_α_693_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_693_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_693_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_693_4
.Lbinop_α_693_3:        movq             xmm0, rsi
.Lbinop_α_693_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_693_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_693_7:                                                              jmp   n158_assign_var_α
.Lbinop_α_693_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_693_240
                        add              rsp, 16;                             jmp   n156_lit_integer_β
.Lbinop_α_693_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_assign_var_α
n157_binop_β:           mov              r11, 158
                        add              rsp, 16;                             jmp   n156_lit_integer_β
                        .size            n157_binop_bx, .-n157_binop_bx
                        .type            n158_assign_var_bx, @function
n158_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_var_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_695_0
                        test             rsi, rsi;                            je    .Lassign_var_α_695_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_695_238
                        add              rsp, 16;                             jmp   n157_binop_β
.Lassign_var_α_695_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_statement_end_α
.Lassign_var_α_695_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_695_239
                        add              rsp, 16;                             jmp   n157_binop_β
.Lassign_var_α_695_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_695_240
                        add              rsp, 16;                             jmp   n157_binop_β
.Lassign_var_α_695_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_statement_end_α
                        .size            n158_assign_var_bx, .-n158_assign_var_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 160
                        mov              r10, 17
                        add              rsp, 176;                            jmp   n160_lit_integer_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALFIL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n160_lit_integer_α:     sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_698_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_lit_integer_α
.Llit_integer_α_698_0:  .quad            18
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     sub              rsp, 16
                        mov              r11, 162
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_699_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_call_α
.Llit_integer_α_699_0:  .quad            33
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_call_bx, @function
n162_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            sub              rsp, 16
                        mov              r11, 163
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
.Lcall_α_rkfnzd701:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd701]
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
                        cmp              al, 104;                             jne   .Lcall_α_700_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n163_statement_begin_α
.Lcall_α_700_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_statement_begin_α
n162_call_β:            mov              r11, 163
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n163_statement_begin_α
                        .size            n162_call_bx, .-n162_call_bx
                        .type            n163_statement_begin_bx, @function
n163_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 164
                        mov              r10, 18;                             jmp   n164_var_α
n163_statement_begin_β: mov              r11, 164
                        add              rsp, 48;                             jmp   n174_lit_integer_α
                        .size            n163_statement_begin_bx, .-n163_statement_begin_bx
                        .type            n164_var_bx, @function
n164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_lit_integer_α
                        .size            n164_var_bx, .-n164_var_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_705_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_coerce_numeric_α
n165_lit_integer_β:     mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Llit_integer_α_705_0:  .quad            12
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_coerce_numeric_bx, @function
n166_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 167
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_707_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_707_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_707_0
.Lcoerce_numeric_α_707_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_coerce_numeric_α
.Lcoerce_numeric_α_707_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_coerce_numeric_α
n166_coerce_numeric_β:  mov              r11, 167
                        add              rsp, 16;                             jmp   n165_lit_integer_β
                        .size            n166_coerce_numeric_bx, .-n166_coerce_numeric_bx
                        .type            n167_coerce_numeric_bx, @function
n167_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 168
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_709_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_709_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_709_0
.Lcoerce_numeric_α_709_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_cmp_test_α
.Lcoerce_numeric_α_709_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_cmp_test_α
n167_coerce_numeric_β:  mov              r11, 168
                        add              rsp, 16;                             jmp   n166_coerce_numeric_β
                        .size            n167_coerce_numeric_bx, .-n167_coerce_numeric_bx
                        .type            n168_cmp_test_bx, @function
n168_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_cmp_test_α:        sub              rsp, 16
                        mov              r11, 169
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_711_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_711_239
                        add              rsp, 16;                             jmp   n167_coerce_numeric_β
.Lcmp_test_α_711_239:                                                         jmp   n169_var_α
.Lcmp_test_α_711_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_711_240
                        add              rsp, 16;                             jmp   n167_coerce_numeric_β
.Lcmp_test_α_711_240:                                                         jmp   n169_var_α
n168_cmp_test_β:        mov              r11, 169
                        add              rsp, 16;                             jmp   n167_coerce_numeric_β
                        .size            n168_cmp_test_bx, .-n168_cmp_test_bx
                        .type            n169_var_bx, @function
n169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_lit_integer_α
n169_var_β:             mov              r11, 170
                        add              rsp, 16;                             jmp   n168_cmp_test_β
                        .size            n169_var_bx, .-n169_var_bx
                        .type            n170_lit_integer_bx, @function
n170_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:     sub              rsp, 16
                        mov              r11, 171
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_713_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_binop_α
n170_lit_integer_β:     mov              r11, 171
                        add              rsp, 16;                             jmp   n169_var_β
.Llit_integer_α_713_0:  .quad            1
                        .size            n170_lit_integer_bx, .-n170_lit_integer_bx
                        .type            n171_binop_bx, @function
n171_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_binop_α:           sub              rsp, 16
                        mov              r11, 172
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_714_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_714_7
.Lbinop_α_714_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_714_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_714_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_714_4
.Lbinop_α_714_3:        movq             xmm0, rsi
.Lbinop_α_714_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_714_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_714_7:                                                              jmp   n172_assign_α
.Lbinop_α_714_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_714_240
                        add              rsp, 16;                             jmp   n170_lit_integer_β
.Lbinop_α_714_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_assign_α
                        .size            n171_binop_bx, .-n171_binop_bx
                        .type            n172_assign_bx, @function
n172_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              r11, 173
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
                        mov              rdi, qword ptr [rip + .Lassign_α_715_0]
                        .section         .rodata
.Lassign_α_715_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_715_1_s]
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
                        pop              rax;                                 jmp   n173_statement_end_α
.Lassign_α_715_0:       .quad            .Lassign_α_715_0_s
.Lassign_α_715_0_s:     .string          "rx"
                        .size            n172_assign_bx, .-n172_assign_bx
                        .type            n173_statement_end_bx, @function
n173_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   mov              r11, 174
                        mov              r10, 18
                        add              rsp, 176;                            jmp   n147_lit_integer_α
                        .size            n173_statement_end_bx, .-n173_statement_end_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n174_lit_integer_α:     sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_718_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_lit_integer_α
.Llit_integer_α_718_0:  .quad            19
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_719_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_call_α
.Llit_integer_α_719_0:  .quad            34
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_call_bx, @function
n176_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:            sub              rsp, 16
                        mov              r11, 177
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
.Lcall_α_rkfnzd721:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd721]
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
                        cmp              al, 104;                             jne   .Lcall_α_720_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n177_statement_begin_α
.Lcall_α_720_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_statement_begin_α
n176_call_β:            mov              r11, 177
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n177_statement_begin_α
                        .size            n176_call_bx, .-n176_call_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 178
                        mov              r10, 19;                             jmp   n178_var_α
n177_statement_begin_β: mov              r11, 178
                        add              rsp, 48;                             jmp   n183_lit_integer_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_lit_string_α
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      sub              rsp, 16
                        mov              r11, 180
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_725_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_lit_integer_α
n179_lit_string_β:      mov              r11, 180
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Llit_string_α_725_0:   .quad            .Llit_string_α_725_0_s
.Llit_string_α_725_0_s: .string          ""
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_lit_integer_bx, @function
n180_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     sub              rsp, 16
                        mov              r11, 181
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_726_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_assign_var_α
n180_lit_integer_β:     mov              r11, 181
                        add              rsp, 16;                             jmp   n179_lit_string_β
.Llit_integer_α_726_0:  .quad            99
                        .size            n180_lit_integer_bx, .-n180_lit_integer_bx
                        .type            n181_assign_var_bx, @function
n181_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_var_α:      sub              rsp, 16
                        mov              r11, 182
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_728_0
                        test             rsi, rsi;                            je    .Lassign_var_α_728_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_728_238
                        add              rsp, 16;                             jmp   n180_lit_integer_β
.Lassign_var_α_728_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_statement_end_α
.Lassign_var_α_728_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_728_239
                        add              rsp, 16;                             jmp   n180_lit_integer_β
.Lassign_var_α_728_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_728_240
                        add              rsp, 16;                             jmp   n180_lit_integer_β
.Lassign_var_α_728_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_statement_end_α
                        .size            n181_assign_var_bx, .-n181_assign_var_bx
                        .type            n182_statement_end_bx, @function
n182_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 183
                        mov              r10, 19
                        add              rsp, 112;                            jmp   n183_lit_integer_α
                        .size            n182_statement_end_bx, .-n182_statement_end_bx
                        .type            n183_lit_integer_bx, @function
n183_lit_integer_bx:
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n183_lit_integer_α:     sub              rsp, 16
                        mov              r11, 184
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_731_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_lit_integer_α
.Llit_integer_α_731_0:  .quad            20
                        .size            n183_lit_integer_bx, .-n183_lit_integer_bx
                        .type            n184_lit_integer_bx, @function
n184_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     sub              rsp, 16
                        mov              r11, 185
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_732_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_call_α
.Llit_integer_α_732_0:  .quad            37
                        .size            n184_lit_integer_bx, .-n184_lit_integer_bx
                        .type            n185_call_bx, @function
n185_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            sub              rsp, 16
                        mov              r11, 186
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
.Lcall_α_rkfnzd734:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd734]
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
                        cmp              al, 104;                             jne   .Lcall_α_733_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n186_statement_begin_α
.Lcall_α_733_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_statement_begin_α
n185_call_β:            mov              r11, 186
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n186_statement_begin_α
                        .size            n185_call_bx, .-n185_call_bx
                        .type            n186_statement_begin_bx, @function
n186_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 187
                        mov              r10, 20;                             jmp   n187_var_α
n186_statement_begin_β: mov              r11, 187
                        add              rsp, 48;                             jmp   n192_lit_integer_α
                        .size            n186_statement_begin_bx, .-n186_statement_begin_bx
                        .type            n187_var_bx, @function
n187_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_lit_integer_α
                        .size            n187_var_bx, .-n187_var_bx
                        .type            n188_lit_integer_bx, @function
n188_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_738_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n189_lit_integer_α
n188_lit_integer_β:     mov              r11, 189
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n186_statement_begin_β
.Llit_integer_α_738_0:  .quad            17
                        .size            n188_lit_integer_bx, .-n188_lit_integer_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_assign_var_α
n189_lit_integer_β:     mov              r11, 190
                        add              rsp, 16;                             jmp   n188_lit_integer_β
.Llit_integer_α_739_0:  .quad            1717
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_assign_var_bx, @function
n190_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_var_α:      sub              rsp, 16
                        mov              r11, 191
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_741_0
                        test             rsi, rsi;                            je    .Lassign_var_α_741_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_741_238
                        add              rsp, 16;                             jmp   n189_lit_integer_β
.Lassign_var_α_741_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_statement_end_α
.Lassign_var_α_741_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_741_239
                        add              rsp, 16;                             jmp   n189_lit_integer_β
.Lassign_var_α_741_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_741_240
                        add              rsp, 16;                             jmp   n189_lit_integer_β
.Lassign_var_α_741_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_statement_end_α
                        .size            n190_assign_var_bx, .-n190_assign_var_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 192
                        mov              r10, 20
                        add              rsp, 112;                            jmp   n192_lit_integer_α
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_lit_integer_bx, @function
n192_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n192_lit_integer_α:     sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_744_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_lit_integer_α
.Llit_integer_α_744_0:  .quad            21
                        .size            n192_lit_integer_bx, .-n192_lit_integer_bx
                        .type            n193_lit_integer_bx, @function
n193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     sub              rsp, 16
                        mov              r11, 194
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_745_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_call_α
.Llit_integer_α_745_0:  .quad            38
                        .size            n193_lit_integer_bx, .-n193_lit_integer_bx
                        .type            n194_call_bx, @function
n194_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            sub              rsp, 16
                        mov              r11, 195
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
.Lcall_α_rkfnzd747:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd747]
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
                        cmp              al, 104;                             jne   .Lcall_α_746_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n195_statement_begin_α
.Lcall_α_746_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_statement_begin_α
n194_call_β:            mov              r11, 195
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n195_statement_begin_α
                        .size            n194_call_bx, .-n194_call_bx
                        .type            n195_statement_begin_bx, @function
n195_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α: mov              r11, 196
                        mov              r10, 21;                             jmp   n196_var_α
n195_statement_begin_β: mov              r11, 196
                        add              rsp, 48;                             jmp   n209_lit_integer_α
                        .size            n195_statement_begin_bx, .-n195_statement_begin_bx
                        .type            n196_var_bx, @function
n196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_var_α
                        .size            n196_var_bx, .-n196_var_bx
                        .type            n197_var_bx, @function
n197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_lit_integer_α
n197_var_β:             mov              r11, 198
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
                        .size            n197_var_bx, .-n197_var_bx
                        .type            n198_lit_integer_bx, @function
n198_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:     sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_752_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_subscript_α
n198_lit_integer_β:     mov              r11, 199
                        add              rsp, 16;                             jmp   n197_var_β
.Llit_integer_α_752_0:  .quad            17
                        .size            n198_lit_integer_bx, .-n198_lit_integer_bx
                        .type            n199_subscript_bx, @function
n199_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_subscript_α:       sub              rsp, 16
                        mov              r11, 200
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
                        cmp              al, 104;                             jne   .Lsubscript_α_753_240
                        add              rsp, 16;                             jmp   n198_lit_integer_β
.Lsubscript_α_753_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_deref_α
n199_subscript_β:       mov              r11, 200
                        add              rsp, 16;                             jmp   n198_lit_integer_β
                        .size            n199_subscript_bx, .-n199_subscript_bx
                        .type            n200_deref_bx, @function
n200_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_deref_α:           sub              rsp, 16
                        mov              r11, 201
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
                        cmp              al, 104;                             jne   .Lderef_α_754_240
                        add              rsp, 16;                             jmp   n199_subscript_β
.Lderef_α_754_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_binop_α
n200_deref_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n199_subscript_β
                        .size            n200_deref_bx, .-n200_deref_bx
                        .type            n201_binop_bx, @function
n201_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:           sub              rsp, 16
                        mov              r11, 202
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_755_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_755_7
.Lbinop_α_755_2:        and              edx, 1;                              jz    .Lbinop_α_755_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_755_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_755_4
.Lbinop_α_755_3:        movq             xmm0, rsi
.Lbinop_α_755_4:        cmp              cl, 5;                               je    .Lbinop_α_755_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_755_6
.Lbinop_α_755_5:        movq             xmm1, rdi
.Lbinop_α_755_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_755_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_755_7:                                                              jmp   n202_var_α
.Lbinop_α_755_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_755_240
                        add              rsp, 16;                             jmp   n200_deref_β
.Lbinop_α_755_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
n201_binop_β:           mov              r11, 202
                        add              rsp, 16;                             jmp   n200_deref_β
                        .size            n201_binop_bx, .-n201_binop_bx
                        .type            n202_var_bx, @function
n202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_lit_string_α
n202_var_β:             mov              r11, 203
                        add              rsp, 16;                             jmp   n201_binop_β
                        .size            n202_var_bx, .-n202_var_bx
                        .type            n203_lit_string_bx, @function
n203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      sub              rsp, 16
                        mov              r11, 204
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_757_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_subscript_α
n203_lit_string_β:      mov              r11, 204
                        add              rsp, 16;                             jmp   n202_var_β
.Llit_string_α_757_0:   .quad            .Llit_string_α_757_0_s
.Llit_string_α_757_0_s: .string          "17"
                        .size            n203_lit_string_bx, .-n203_lit_string_bx
                        .type            n204_subscript_bx, @function
n204_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_subscript_α:       sub              rsp, 16
                        mov              r11, 205
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
                        cmp              al, 104;                             jne   .Lsubscript_α_758_240
                        add              rsp, 16;                             jmp   n203_lit_string_β
.Lsubscript_α_758_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_deref_α
n204_subscript_β:       mov              r11, 205
                        add              rsp, 16;                             jmp   n203_lit_string_β
                        .size            n204_subscript_bx, .-n204_subscript_bx
                        .type            n205_deref_bx, @function
n205_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_deref_α:           sub              rsp, 16
                        mov              r11, 206
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
                        cmp              al, 104;                             jne   .Lderef_α_759_240
                        add              rsp, 16;                             jmp   n204_subscript_β
.Lderef_α_759_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_binop_α
n205_deref_β:           mov              r11, 206
                        add              rsp, 16;                             jmp   n204_subscript_β
                        .size            n205_deref_bx, .-n205_deref_bx
                        .type            n206_binop_bx, @function
n206_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:           sub              rsp, 16
                        mov              r11, 207
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_760_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_760_7
.Lbinop_α_760_2:        and              edx, 1;                              jz    .Lbinop_α_760_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_760_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_760_4
.Lbinop_α_760_3:        movq             xmm0, rsi
.Lbinop_α_760_4:        cmp              cl, 5;                               je    .Lbinop_α_760_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_760_6
.Lbinop_α_760_5:        movq             xmm1, rdi
.Lbinop_α_760_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_760_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_760_7:                                                              jmp   n207_assign_α
.Lbinop_α_760_0:        mov              rdi, qword ptr [rsp + 80]            # binop
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
                        cmp              al, 104;                             jne   .Lbinop_α_760_240
                        add              rsp, 16;                             jmp   n205_deref_β
.Lbinop_α_760_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_assign_α
                        .size            n206_binop_bx, .-n206_binop_bx
                        .type            n207_assign_bx, @function
n207_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              r11, 208
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
                        mov              rdi, qword ptr [rip + .Lassign_α_761_0]
                        .section         .rodata
.Lassign_α_761_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_761_1_s]
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
                        pop              rax;                                 jmp   n208_statement_end_α
.Lassign_α_761_0:       .quad            .Lassign_α_761_0_s
.Lassign_α_761_0_s:     .string          "ZS"
                        .size            n207_assign_bx, .-n207_assign_bx
                        .type            n208_statement_end_bx, @function
n208_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   mov              r11, 209
                        mov              r10, 21
                        add              rsp, 224;                            jmp   n209_lit_integer_α
                        .size            n208_statement_end_bx, .-n208_statement_end_bx
                        .type            n209_lit_integer_bx, @function
n209_lit_integer_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n209_lit_integer_α:     sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_764_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_lit_integer_α
.Llit_integer_α_764_0:  .quad            22
                        .size            n209_lit_integer_bx, .-n209_lit_integer_bx
                        .type            n210_lit_integer_bx, @function
n210_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     sub              rsp, 16
                        mov              r11, 211
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_765_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_call_α
.Llit_integer_α_765_0:  .quad            40
                        .size            n210_lit_integer_bx, .-n210_lit_integer_bx
                        .type            n211_call_bx, @function
n211_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:            sub              rsp, 16
                        mov              r11, 212
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
.Lcall_α_rkfnzd767:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd767]
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
                        cmp              al, 104;                             jne   .Lcall_α_766_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n212_statement_begin_α
.Lcall_α_766_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_statement_begin_α
n211_call_β:            mov              r11, 212
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n212_statement_begin_α
                        .size            n211_call_bx, .-n211_call_bx
                        .type            n212_statement_begin_bx, @function
n212_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α: mov              r11, 213
                        mov              r10, 22;                             jmp   n213_var_α
n212_statement_begin_β: mov              r11, 213
                        add              rsp, 48;                             jmp   n218_lit_integer_α
                        .size            n212_statement_begin_bx, .-n212_statement_begin_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 214
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_lit_integer_α
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_lit_integer_bx, @function
n214_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:     sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_lit_integer_α
n214_lit_integer_β:     mov              r11, 215
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n212_statement_begin_β
.Llit_integer_α_771_0:  .quad            5
                        .size            n214_lit_integer_bx, .-n214_lit_integer_bx
                        .type            n215_lit_integer_bx, @function
n215_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_772_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_assign_var_α
n215_lit_integer_β:     mov              r11, 216
                        add              rsp, 16;                             jmp   n214_lit_integer_β
.Llit_integer_α_772_0:  .quad            500
                        .size            n215_lit_integer_bx, .-n215_lit_integer_bx
                        .type            n216_assign_var_bx, @function
n216_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_var_α:      sub              rsp, 16
                        mov              r11, 217
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_774_0
                        test             rsi, rsi;                            je    .Lassign_var_α_774_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_774_238
                        add              rsp, 16;                             jmp   n215_lit_integer_β
.Lassign_var_α_774_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_statement_end_α
.Lassign_var_α_774_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_774_239
                        add              rsp, 16;                             jmp   n215_lit_integer_β
.Lassign_var_α_774_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_774_240
                        add              rsp, 16;                             jmp   n215_lit_integer_β
.Lassign_var_α_774_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_statement_end_α
                        .size            n216_assign_var_bx, .-n216_assign_var_bx
                        .type            n217_statement_end_bx, @function
n217_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   mov              r11, 218
                        mov              r10, 22
                        add              rsp, 112;                            jmp   n218_lit_integer_α
                        .size            n217_statement_end_bx, .-n217_statement_end_bx
                        .type            n218_lit_integer_bx, @function
n218_lit_integer_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n218_lit_integer_α:     sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_777_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_lit_integer_α
.Llit_integer_α_777_0:  .quad            23
                        .size            n218_lit_integer_bx, .-n218_lit_integer_bx
                        .type            n219_lit_integer_bx, @function
n219_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:     sub              rsp, 16
                        mov              r11, 220
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_778_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_call_α
.Llit_integer_α_778_0:  .quad            41
                        .size            n219_lit_integer_bx, .-n219_lit_integer_bx
                        .type            n220_call_bx, @function
n220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            sub              rsp, 16
                        mov              r11, 221
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
.Lcall_α_rkfnzd780:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd780]
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
                        cmp              al, 104;                             jne   .Lcall_α_779_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n221_statement_begin_α
.Lcall_α_779_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_statement_begin_α
n220_call_β:            mov              r11, 221
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n221_statement_begin_α
                        .size            n220_call_bx, .-n220_call_bx
                        .type            n221_statement_begin_bx, @function
n221_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_begin_α: mov              r11, 222
                        mov              r10, 23;                             jmp   n222_var_α
n221_statement_begin_β: mov              r11, 222
                        add              rsp, 48;                             jmp   n227_lit_integer_α
                        .size            n221_statement_begin_bx, .-n221_statement_begin_bx
                        .type            n222_var_bx, @function
n222_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_lit_integer_α
                        .size            n222_var_bx, .-n222_var_bx
                        .type            n223_lit_integer_bx, @function
n223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     sub              rsp, 16
                        mov              r11, 224
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_784_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_lit_integer_α
n223_lit_integer_β:     mov              r11, 224
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n221_statement_begin_β
.Llit_integer_α_784_0:  .quad            5
                        .size            n223_lit_integer_bx, .-n223_lit_integer_bx
                        .type            n224_lit_integer_bx, @function
n224_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_785_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_assign_var_α
n224_lit_integer_β:     mov              r11, 225
                        add              rsp, 16;                             jmp   n223_lit_integer_β
.Llit_integer_α_785_0:  .quad            501
                        .size            n224_lit_integer_bx, .-n224_lit_integer_bx
                        .type            n225_assign_var_bx, @function
n225_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_var_α:      sub              rsp, 16
                        mov              r11, 226
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_787_0
                        test             rsi, rsi;                            je    .Lassign_var_α_787_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_787_238
                        add              rsp, 16;                             jmp   n224_lit_integer_β
.Lassign_var_α_787_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_statement_end_α
.Lassign_var_α_787_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_787_239
                        add              rsp, 16;                             jmp   n224_lit_integer_β
.Lassign_var_α_787_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_787_240
                        add              rsp, 16;                             jmp   n224_lit_integer_β
.Lassign_var_α_787_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_statement_end_α
                        .size            n225_assign_var_bx, .-n225_assign_var_bx
                        .type            n226_statement_end_bx, @function
n226_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:   mov              r11, 227
                        mov              r10, 23
                        add              rsp, 112;                            jmp   n227_lit_integer_α
                        .size            n226_statement_end_bx, .-n226_statement_end_bx
                        .type            n227_lit_integer_bx, @function
n227_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 228
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_lit_integer_α
.Llit_integer_α_790_0:  .quad            24
                        .size            n227_lit_integer_bx, .-n227_lit_integer_bx
                        .type            n228_lit_integer_bx, @function
n228_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_791_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_α
.Llit_integer_α_791_0:  .quad            42
                        .size            n228_lit_integer_bx, .-n228_lit_integer_bx
                        .type            n229_call_bx, @function
n229_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:            sub              rsp, 16
                        mov              r11, 230
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
.Lcall_α_rkfnzd793:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd793]
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
                        cmp              al, 104;                             jne   .Lcall_α_792_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n230_statement_begin_α
.Lcall_α_792_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_statement_begin_α
n229_call_β:            mov              r11, 230
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n230_statement_begin_α
                        .size            n229_call_bx, .-n229_call_bx
                        .type            n230_statement_begin_bx, @function
n230_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α: mov              r11, 231
                        mov              r10, 24;                             jmp   n231_var_α
n230_statement_begin_β: mov              r11, 231
                        add              rsp, 48;                             jmp   n239_lit_integer_α
                        .size            n230_statement_begin_bx, .-n230_statement_begin_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 232
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_var_α
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_var_bx, @function
n232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_lit_integer_α
n232_var_β:             mov              r11, 233
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
                        .size            n232_var_bx, .-n232_var_bx
                        .type            n233_lit_integer_bx, @function
n233_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:     sub              rsp, 16
                        mov              r11, 234
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_798_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n234_subscript_α
n233_lit_integer_β:     mov              r11, 234
                        add              rsp, 16;                             jmp   n232_var_β
.Llit_integer_α_798_0:  .quad            5
                        .size            n233_lit_integer_bx, .-n233_lit_integer_bx
                        .type            n234_subscript_bx, @function
n234_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_subscript_α:       sub              rsp, 16
                        mov              r11, 235
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
                        cmp              al, 104;                             jne   .Lsubscript_α_799_240
                        add              rsp, 16;                             jmp   n233_lit_integer_β
.Lsubscript_α_799_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_deref_α
n234_subscript_β:       mov              r11, 235
                        add              rsp, 16;                             jmp   n233_lit_integer_β
                        .size            n234_subscript_bx, .-n234_subscript_bx
                        .type            n235_deref_bx, @function
n235_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_deref_α:           sub              rsp, 16
                        mov              r11, 236
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
                        cmp              al, 104;                             jne   .Lderef_α_800_240
                        add              rsp, 16;                             jmp   n234_subscript_β
.Lderef_α_800_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_binop_α
n235_deref_β:           mov              r11, 236
                        add              rsp, 16;                             jmp   n234_subscript_β
                        .size            n235_deref_bx, .-n235_deref_bx
                        .type            n236_binop_bx, @function
n236_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_801_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_801_7
.Lbinop_α_801_2:        and              edx, 1;                              jz    .Lbinop_α_801_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_801_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_801_4
.Lbinop_α_801_3:        movq             xmm0, rsi
.Lbinop_α_801_4:        cmp              cl, 5;                               je    .Lbinop_α_801_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_801_6
.Lbinop_α_801_5:        movq             xmm1, rdi
.Lbinop_α_801_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_801_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_801_7:                                                              jmp   n237_assign_α
.Lbinop_α_801_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_801_240
                        add              rsp, 16;                             jmp   n235_deref_β
.Lbinop_α_801_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_assign_α
                        .size            n236_binop_bx, .-n236_binop_bx
                        .type            n237_assign_bx, @function
n237_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 238
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
                        mov              rdi, qword ptr [rip + .Lassign_α_802_0]
                        .section         .rodata
.Lassign_α_802_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_802_1_s]
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
                        pop              rax;                                 jmp   n238_statement_end_α
.Lassign_α_802_0:       .quad            .Lassign_α_802_0_s
.Lassign_α_802_0_s:     .string          "ZS"
                        .size            n237_assign_bx, .-n237_assign_bx
                        .type            n238_statement_end_bx, @function
n238_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   mov              r11, 239
                        mov              r10, 24
                        add              rsp, 144;                            jmp   n239_lit_integer_α
                        .size            n238_statement_end_bx, .-n238_statement_end_bx
                        .type            n239_lit_integer_bx, @function
n239_lit_integer_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n239_lit_integer_α:     sub              rsp, 16
                        mov              r11, 240
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_lit_integer_α
.Llit_integer_α_805_0:  .quad            25
                        .size            n239_lit_integer_bx, .-n239_lit_integer_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_806_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_call_α
.Llit_integer_α_806_0:  .quad            44
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 242
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
.Lcall_α_rkfnzd808:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd808]
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
                        cmp              al, 104;                             jne   .Lcall_α_807_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n242_statement_begin_α
.Lcall_α_807_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_statement_begin_α
n241_call_β:            mov              r11, 242
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n242_statement_begin_α
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_statement_begin_bx, @function
n242_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α: mov              r11, 243
                        mov              r10, 25;                             jmp   n243_lit_integer_α
n242_statement_begin_β: mov              r11, 243
                        add              rsp, 48;                             jmp   n247_lit_integer_α
                        .size            n242_statement_begin_bx, .-n242_statement_begin_bx
                        .type            n243_lit_integer_bx, @function
n243_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     sub              rsp, 16
                        mov              r11, 244
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_811_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_unop_α
.Llit_integer_α_811_0:  .quad            30
                        .size            n243_lit_integer_bx, .-n243_lit_integer_bx
                        .type            n244_unop_bx, @function
n244_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_unop_α:            sub              rsp, 16
                        mov              r11, 245
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_assign_α
                        .size            n244_unop_bx, .-n244_unop_bx
                        .type            n245_assign_bx, @function
n245_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              r11, 246
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
                        mov              rdi, qword ptr [rip + .Lassign_α_813_0]
                        .section         .rodata
.Lassign_α_813_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_813_1_s]
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
                        pop              rax;                                 jmp   n246_statement_end_α
.Lassign_α_813_0:       .quad            .Lassign_α_813_0_s
.Lassign_α_813_0_s:     .string          "ix"
                        .size            n245_assign_bx, .-n245_assign_bx
                        .type            n246_statement_end_bx, @function
n246_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   mov              r11, 247
                        mov              r10, 25
                        add              rsp, 80;                             jmp   n247_lit_integer_α
                        .size            n246_statement_end_bx, .-n246_statement_end_bx
                        .type            n247_lit_integer_bx, @function
n247_lit_integer_bx:
#=======================================================================================================================
# INTREAD ZS = ZS + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n247_lit_integer_α:     sub              rsp, 16
                        mov              r11, 248
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_816_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_lit_integer_α
.Llit_integer_α_816_0:  .quad            26
                        .size            n247_lit_integer_bx, .-n247_lit_integer_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     sub              rsp, 16
                        mov              r11, 249
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_817_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_call_α
.Llit_integer_α_817_0:  .quad            45
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 250
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
.Lcall_α_rkfnzd819:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd819]
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
                        cmp              al, 104;                             jne   .Lcall_α_818_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n250_statement_begin_α
.Lcall_α_818_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_statement_begin_α
n249_call_β:            mov              r11, 250
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n250_statement_begin_α
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_statement_begin_bx, @function
n250_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α: mov              r11, 251
                        mov              r10, 26;                             jmp   n251_var_α
n250_statement_begin_β: mov              r11, 251
                        add              rsp, 48;                             jmp   n259_lit_integer_α
                        .size            n250_statement_begin_bx, .-n250_statement_begin_bx
                        .type            n251_var_bx, @function
n251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
                        .size            n251_var_bx, .-n251_var_bx
                        .type            n252_var_bx, @function
n252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 253
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_var_α
n252_var_β:             mov              r11, 253
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n250_statement_begin_β
                        .size            n252_var_bx, .-n252_var_bx
                        .type            n253_var_bx, @function
n253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             sub              rsp, 16
                        mov              r11, 254
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_subscript_α
n253_var_β:             mov              r11, 254
                        add              rsp, 16;                             jmp   n252_var_β
                        .size            n253_var_bx, .-n253_var_bx
                        .type            n254_subscript_bx, @function
n254_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_subscript_α:       sub              rsp, 16
                        mov              r11, 255
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
                        cmp              al, 104;                             jne   .Lsubscript_α_825_240
                        add              rsp, 16;                             jmp   n253_var_β
.Lsubscript_α_825_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_deref_α
n254_subscript_β:       mov              r11, 255
                        add              rsp, 16;                             jmp   n253_var_β
                        .size            n254_subscript_bx, .-n254_subscript_bx
                        .type            n255_deref_bx, @function
n255_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_deref_α:           sub              rsp, 16
                        mov              r11, 256
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
                        cmp              al, 104;                             jne   .Lderef_α_826_240
                        add              rsp, 16;                             jmp   n254_subscript_β
.Lderef_α_826_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_binop_α
n255_deref_β:           mov              r11, 256
                        add              rsp, 16;                             jmp   n254_subscript_β
                        .size            n255_deref_bx, .-n255_deref_bx
                        .type            n256_binop_bx, @function
n256_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:           sub              rsp, 16
                        mov              r11, 257
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_827_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_827_7
.Lbinop_α_827_2:        and              edx, 1;                              jz    .Lbinop_α_827_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_827_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_827_4
.Lbinop_α_827_3:        movq             xmm0, rsi
.Lbinop_α_827_4:        cmp              cl, 5;                               je    .Lbinop_α_827_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_827_6
.Lbinop_α_827_5:        movq             xmm1, rdi
.Lbinop_α_827_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_827_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_827_7:                                                              jmp   n257_assign_α
.Lbinop_α_827_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_827_240
                        add              rsp, 16;                             jmp   n255_deref_β
.Lbinop_α_827_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_assign_α
                        .size            n256_binop_bx, .-n256_binop_bx
                        .type            n257_assign_bx, @function
n257_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:          mov              r11, 258
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
                        mov              rdi, qword ptr [rip + .Lassign_α_828_0]
                        .section         .rodata
.Lassign_α_828_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_828_1_s]
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
                        pop              rax;                                 jmp   n258_statement_end_α
.Lassign_α_828_0:       .quad            .Lassign_α_828_0_s
.Lassign_α_828_0_s:     .string          "ZS"
                        .size            n257_assign_bx, .-n257_assign_bx
                        .type            n258_statement_end_bx, @function
n258_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   mov              r11, 259
                        mov              r10, 26
                        add              rsp, 144;                            jmp   n259_lit_integer_α
                        .size            n258_statement_end_bx, .-n258_statement_end_bx
                        .type            n259_lit_integer_bx, @function
n259_lit_integer_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(INTREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n259_lit_integer_α:     sub              rsp, 16
                        mov              r11, 260
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_831_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_lit_integer_α
.Llit_integer_α_831_0:  .quad            27
                        .size            n259_lit_integer_bx, .-n259_lit_integer_bx
                        .type            n260_lit_integer_bx, @function
n260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     sub              rsp, 16
                        mov              r11, 261
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_call_α
.Llit_integer_α_832_0:  .quad            46
                        .size            n260_lit_integer_bx, .-n260_lit_integer_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        mov              r11, 262
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
.Lcall_α_rkfnzd834:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd834]
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
                        cmp              al, 104;                             jne   .Lcall_α_833_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n262_statement_begin_α
.Lcall_α_833_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_statement_begin_α
n261_call_β:            mov              r11, 262
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n262_statement_begin_α
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_statement_begin_bx, @function
n262_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α: mov              r11, 263
                        mov              r10, 27;                             jmp   n263_var_α
n262_statement_begin_β: mov              r11, 263
                        add              rsp, 48;                             jmp   n273_lit_integer_α
                        .size            n262_statement_begin_bx, .-n262_statement_begin_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 264
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_lit_integer_α
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_lit_integer_bx, @function
n264_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     sub              rsp, 16
                        mov              r11, 265
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_838_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_coerce_numeric_α
n264_lit_integer_β:     mov              r11, 265
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n262_statement_begin_β
.Llit_integer_α_838_0:  .quad            30
                        .size            n264_lit_integer_bx, .-n264_lit_integer_bx
                        .type            n265_coerce_numeric_bx, @function
n265_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 266
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_840_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_840_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_840_0
.Lcoerce_numeric_α_840_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_coerce_numeric_α
.Lcoerce_numeric_α_840_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_coerce_numeric_α
n265_coerce_numeric_β:  mov              r11, 266
                        add              rsp, 16;                             jmp   n264_lit_integer_β
                        .size            n265_coerce_numeric_bx, .-n265_coerce_numeric_bx
                        .type            n266_coerce_numeric_bx, @function
n266_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 267
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_842_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_842_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_842_0
.Lcoerce_numeric_α_842_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_cmp_test_α
.Lcoerce_numeric_α_842_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_cmp_test_α
n266_coerce_numeric_β:  mov              r11, 267
                        add              rsp, 16;                             jmp   n265_coerce_numeric_β
                        .size            n266_coerce_numeric_bx, .-n266_coerce_numeric_bx
                        .type            n267_cmp_test_bx, @function
n267_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_cmp_test_α:        sub              rsp, 16
                        mov              r11, 268
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_844_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_844_239
                        add              rsp, 16;                             jmp   n266_coerce_numeric_β
.Lcmp_test_α_844_239:                                                         jmp   n268_var_α
.Lcmp_test_α_844_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_844_240
                        add              rsp, 16;                             jmp   n266_coerce_numeric_β
.Lcmp_test_α_844_240:                                                         jmp   n268_var_α
n267_cmp_test_β:        mov              r11, 268
                        add              rsp, 16;                             jmp   n266_coerce_numeric_β
                        .size            n267_cmp_test_bx, .-n267_cmp_test_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 80]             # ix
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_lit_integer_α
n268_var_β:             mov              r11, 269
                        add              rsp, 16;                             jmp   n267_cmp_test_β
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_lit_integer_bx, @function
n269_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:     sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_846_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_binop_α
n269_lit_integer_β:     mov              r11, 270
                        add              rsp, 16;                             jmp   n268_var_β
.Llit_integer_α_846_0:  .quad            1
                        .size            n269_lit_integer_bx, .-n269_lit_integer_bx
                        .type            n270_binop_bx, @function
n270_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           sub              rsp, 16
                        mov              r11, 271
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_847_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_847_7
.Lbinop_α_847_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_847_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_847_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_847_4
.Lbinop_α_847_3:        movq             xmm0, rsi
.Lbinop_α_847_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_847_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_847_7:                                                              jmp   n271_assign_α
.Lbinop_α_847_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_847_240
                        add              rsp, 16;                             jmp   n269_lit_integer_β
.Lbinop_α_847_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_assign_α
                        .size            n270_binop_bx, .-n270_binop_bx
                        .type            n271_assign_bx, @function
n271_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 272
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
                        mov              rdi, qword ptr [rip + .Lassign_α_848_0]
                        .section         .rodata
.Lassign_α_848_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_848_1_s]
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
                        pop              rax;                                 jmp   n272_statement_end_α
.Lassign_α_848_0:       .quad            .Lassign_α_848_0_s
.Lassign_α_848_0_s:     .string          "ix"
                        .size            n271_assign_bx, .-n271_assign_bx
                        .type            n272_statement_end_bx, @function
n272_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   mov              r11, 273
                        mov              r10, 27
                        add              rsp, 176;                            jmp   n247_lit_integer_α
                        .size            n272_statement_end_bx, .-n272_statement_end_bx
                        .type            n273_lit_integer_bx, @function
n273_lit_integer_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n273_lit_integer_α:     sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_851_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_lit_integer_α
.Llit_integer_α_851_0:  .quad            28
                        .size            n273_lit_integer_bx, .-n273_lit_integer_bx
                        .type            n274_lit_integer_bx, @function
n274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_852_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_call_α
.Llit_integer_α_852_0:  .quad            48
                        .size            n274_lit_integer_bx, .-n274_lit_integer_bx
                        .type            n275_call_bx, @function
n275_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            sub              rsp, 16
                        mov              r11, 276
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
                        add              rsp, -16;                            jmp   n276_statement_begin_α
.Lcall_α_853_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_statement_begin_α
n275_call_β:            mov              r11, 276
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n276_statement_begin_α
                        .size            n275_call_bx, .-n275_call_bx
                        .type            n276_statement_begin_bx, @function
n276_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_begin_α: mov              r11, 277
                        mov              r10, 28;                             jmp   n277_lit_integer_α
n276_statement_begin_β: mov              r11, 277
                        add              rsp, 48;                             jmp   n280_lit_integer_α
                        .size            n276_statement_begin_bx, .-n276_statement_begin_bx
                        .type            n277_lit_integer_bx, @function
n277_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     sub              rsp, 16
                        mov              r11, 278
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_857_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_assign_α
.Llit_integer_α_857_0:  .quad            1
                        .size            n277_lit_integer_bx, .-n277_lit_integer_bx
                        .type            n278_assign_bx, @function
n278_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              r11, 279
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
                        mov              rdi, qword ptr [rip + .Lassign_α_858_0]
                        .section         .rodata
.Lassign_α_858_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_858_1_s]
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
                        pop              rax;                                 jmp   n279_statement_end_α
.Lassign_α_858_0:       .quad            .Lassign_α_858_0_s
.Lassign_α_858_0_s:     .string          "sx"
                        .size            n278_assign_bx, .-n278_assign_bx
                        .type            n279_statement_end_bx, @function
n279_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:   mov              r11, 280
                        mov              r10, 28
                        add              rsp, 64;                             jmp   n280_lit_integer_α
                        .size            n279_statement_end_bx, .-n279_statement_end_bx
                        .type            n280_lit_integer_bx, @function
n280_lit_integer_bx:
#=======================================================================================================================
# STRREAD ZS = ZS + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n280_lit_integer_α:     sub              rsp, 16
                        mov              r11, 281
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_861_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_lit_integer_α
.Llit_integer_α_861_0:  .quad            29
                        .size            n280_lit_integer_bx, .-n280_lit_integer_bx
                        .type            n281_lit_integer_bx, @function
n281_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:     sub              rsp, 16
                        mov              r11, 282
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_862_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n282_call_α
.Llit_integer_α_862_0:  .quad            49
                        .size            n281_lit_integer_bx, .-n281_lit_integer_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            sub              rsp, 16
                        mov              r11, 283
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
.Lcall_α_rkfnzd864:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd864]
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
                        cmp              al, 104;                             jne   .Lcall_α_863_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n283_statement_begin_α
.Lcall_α_863_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_statement_begin_α
n282_call_β:            mov              r11, 283
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n283_statement_begin_α
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_statement_begin_bx, @function
n283_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α: mov              r11, 284
                        mov              r10, 29;                             jmp   n284_var_α
n283_statement_begin_β: mov              r11, 284
                        add              rsp, 48;                             jmp   n301_lit_integer_α
                        .size            n283_statement_begin_bx, .-n283_statement_begin_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 285
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_var_α
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_var_bx, @function
n285_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             sub              rsp, 16
                        mov              r11, 286
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_lit_string_α
n285_var_β:             mov              r11, 286
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n283_statement_begin_β
                        .size            n285_var_bx, .-n285_var_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      sub              rsp, 16
                        mov              r11, 287
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_869_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n287_var_α
n286_lit_string_β:      mov              r11, 287
                        add              rsp, 16;                             jmp   n285_var_β
.Llit_string_α_869_0:   .quad            .Llit_string_α_869_0_s
.Llit_string_α_869_0_s: .string          "k"
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 288
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_binop_α
n287_var_β:             mov              r11, 288
                        add              rsp, 16;                             jmp   n286_lit_string_β
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_binop_bx, @function
n288_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_binop_α:           sub              rsp, 16
                        mov              r11, 289
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_subscript_α
n288_binop_β:           mov              r11, 289
                        add              rsp, 16;                             jmp   n287_var_β
                        .size            n288_binop_bx, .-n288_binop_bx
                        .type            n289_subscript_bx, @function
n289_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_subscript_α:       sub              rsp, 16
                        mov              r11, 290
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
                        cmp              al, 104;                             jne   .Lsubscript_α_872_240
                        add              rsp, 16;                             jmp   n288_binop_β
.Lsubscript_α_872_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_deref_α
n289_subscript_β:       mov              r11, 290
                        add              rsp, 16;                             jmp   n288_binop_β
                        .size            n289_subscript_bx, .-n289_subscript_bx
                        .type            n290_deref_bx, @function
n290_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_deref_α:           sub              rsp, 16
                        mov              r11, 291
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
                        cmp              al, 104;                             jne   .Lderef_α_873_240
                        add              rsp, 16;                             jmp   n289_subscript_β
.Lderef_α_873_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_binop_α
n290_deref_β:           mov              r11, 291
                        add              rsp, 16;                             jmp   n289_subscript_β
                        .size            n290_deref_bx, .-n290_deref_bx
                        .type            n291_binop_bx, @function
n291_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           sub              rsp, 16
                        mov              r11, 292
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_874_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_874_7
.Lbinop_α_874_2:        and              edx, 1;                              jz    .Lbinop_α_874_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_874_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_874_4
.Lbinop_α_874_3:        movq             xmm0, rsi
.Lbinop_α_874_4:        cmp              cl, 5;                               je    .Lbinop_α_874_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_874_6
.Lbinop_α_874_5:        movq             xmm1, rdi
.Lbinop_α_874_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_874_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_874_7:                                                              jmp   n292_var_α
.Lbinop_α_874_0:        mov              rdi, qword ptr [rsp + 112]           # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_874_240
                        add              rsp, 16;                             jmp   n290_deref_β
.Lbinop_α_874_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
n291_binop_β:           mov              r11, 292
                        add              rsp, 16;                             jmp   n290_deref_β
                        .size            n291_binop_bx, .-n291_binop_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 293
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_lit_string_α
n292_var_β:             mov              r11, 293
                        add              rsp, 16;                             jmp   n291_binop_β
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_lit_string_bx, @function
n293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      sub              rsp, 16
                        mov              r11, 294
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_876_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n294_var_α
n293_lit_string_β:      mov              r11, 294
                        add              rsp, 16;                             jmp   n292_var_β
.Llit_string_α_876_0:   .quad            .Llit_string_α_876_0_s
.Llit_string_α_876_0_s: .string          "a_much_longer_key_"
                        .size            n293_lit_string_bx, .-n293_lit_string_bx
                        .type            n294_var_bx, @function
n294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 295
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_binop_α
n294_var_β:             mov              r11, 295
                        add              rsp, 16;                             jmp   n293_lit_string_β
                        .size            n294_var_bx, .-n294_var_bx
                        .type            n295_binop_bx, @function
n295_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           sub              rsp, 16
                        mov              r11, 296
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_subscript_α
n295_binop_β:           mov              r11, 296
                        add              rsp, 16;                             jmp   n294_var_β
                        .size            n295_binop_bx, .-n295_binop_bx
                        .type            n296_subscript_bx, @function
n296_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       sub              rsp, 16
                        mov              r11, 297
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
                        cmp              al, 104;                             jne   .Lsubscript_α_879_240
                        add              rsp, 16;                             jmp   n295_binop_β
.Lsubscript_α_879_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_deref_α
n296_subscript_β:       mov              r11, 297
                        add              rsp, 16;                             jmp   n295_binop_β
                        .size            n296_subscript_bx, .-n296_subscript_bx
                        .type            n297_deref_bx, @function
n297_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_deref_α:           sub              rsp, 16
                        mov              r11, 298
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
                        cmp              al, 104;                             jne   .Lderef_α_880_240
                        add              rsp, 16;                             jmp   n296_subscript_β
.Lderef_α_880_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_binop_α
n297_deref_β:           mov              r11, 298
                        add              rsp, 16;                             jmp   n296_subscript_β
                        .size            n297_deref_bx, .-n297_deref_bx
                        .type            n298_binop_bx, @function
n298_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_binop_α:           sub              rsp, 16
                        mov              r11, 299
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_881_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_881_7
.Lbinop_α_881_2:        and              edx, 1;                              jz    .Lbinop_α_881_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_881_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_881_4
.Lbinop_α_881_3:        movq             xmm0, rsi
.Lbinop_α_881_4:        cmp              cl, 5;                               je    .Lbinop_α_881_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_881_6
.Lbinop_α_881_5:        movq             xmm1, rdi
.Lbinop_α_881_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_881_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_881_7:                                                              jmp   n299_assign_α
.Lbinop_α_881_0:        mov              rdi, qword ptr [rsp + 112]           # binop
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
                        cmp              al, 104;                             jne   .Lbinop_α_881_240
                        add              rsp, 16;                             jmp   n297_deref_β
.Lbinop_α_881_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_assign_α
                        .size            n298_binop_bx, .-n298_binop_bx
                        .type            n299_assign_bx, @function
n299_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:          mov              r11, 300
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
                        mov              rdi, qword ptr [rip + .Lassign_α_882_0]
                        .section         .rodata
.Lassign_α_882_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_882_1_s]
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
                        pop              rax;                                 jmp   n300_statement_end_α
.Lassign_α_882_0:       .quad            .Lassign_α_882_0_s
.Lassign_α_882_0_s:     .string          "ZS"
                        .size            n299_assign_bx, .-n299_assign_bx
                        .type            n300_statement_end_bx, @function
n300_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:   mov              r11, 301
                        mov              r10, 29
                        add              rsp, 288;                            jmp   n301_lit_integer_α
                        .size            n300_statement_end_bx, .-n300_statement_end_bx
                        .type            n301_lit_integer_bx, @function
n301_lit_integer_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(STRREAD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n301_lit_integer_α:     sub              rsp, 16
                        mov              r11, 302
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_885_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n302_lit_integer_α
.Llit_integer_α_885_0:  .quad            30
                        .size            n301_lit_integer_bx, .-n301_lit_integer_bx
                        .type            n302_lit_integer_bx, @function
n302_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     sub              rsp, 16
                        mov              r11, 303
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_886_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n303_call_α
.Llit_integer_α_886_0:  .quad            50
                        .size            n302_lit_integer_bx, .-n302_lit_integer_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            sub              rsp, 16
                        mov              r11, 304
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
.Lcall_α_rkfnzd888:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd888]
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
                        cmp              al, 104;                             jne   .Lcall_α_887_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n304_statement_begin_α
.Lcall_α_887_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_statement_begin_α
n303_call_β:            mov              r11, 304
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n304_statement_begin_α
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_statement_begin_bx, @function
n304_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α: mov              r11, 305
                        mov              r10, 30;                             jmp   n305_var_α
n304_statement_begin_β: mov              r11, 305
                        add              rsp, 48;                             jmp   n315_lit_integer_α
                        .size            n304_statement_begin_bx, .-n304_statement_begin_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              r11, 306
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_lit_integer_α
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_lit_integer_bx, @function
n306_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:     sub              rsp, 16
                        mov              r11, 307
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_892_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n307_coerce_numeric_α
n306_lit_integer_β:     mov              r11, 307
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n304_statement_begin_β
.Llit_integer_α_892_0:  .quad            20
                        .size            n306_lit_integer_bx, .-n306_lit_integer_bx
                        .type            n307_coerce_numeric_bx, @function
n307_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 308
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_894_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_894_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_894_0
.Lcoerce_numeric_α_894_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_coerce_numeric_α
.Lcoerce_numeric_α_894_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_coerce_numeric_α
n307_coerce_numeric_β:  mov              r11, 308
                        add              rsp, 16;                             jmp   n306_lit_integer_β
                        .size            n307_coerce_numeric_bx, .-n307_coerce_numeric_bx
                        .type            n308_coerce_numeric_bx, @function
n308_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 309
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_896_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_896_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_896_0
.Lcoerce_numeric_α_896_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_cmp_test_α
.Lcoerce_numeric_α_896_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n309_cmp_test_α
n308_coerce_numeric_β:  mov              r11, 309
                        add              rsp, 16;                             jmp   n307_coerce_numeric_β
                        .size            n308_coerce_numeric_bx, .-n308_coerce_numeric_bx
                        .type            n309_cmp_test_bx, @function
n309_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_cmp_test_α:        sub              rsp, 16
                        mov              r11, 310
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_898_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_898_239
                        add              rsp, 16;                             jmp   n308_coerce_numeric_β
.Lcmp_test_α_898_239:                                                         jmp   n310_var_α
.Lcmp_test_α_898_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_898_240
                        add              rsp, 16;                             jmp   n308_coerce_numeric_β
.Lcmp_test_α_898_240:                                                         jmp   n310_var_α
n309_cmp_test_β:        mov              r11, 310
                        add              rsp, 16;                             jmp   n308_coerce_numeric_β
                        .size            n309_cmp_test_bx, .-n309_cmp_test_bx
                        .type            n310_var_bx, @function
n310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              r11, 311
                        mov              rax, qword ptr [r9 + 96]             # sx
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_lit_integer_α
n310_var_β:             mov              r11, 311
                        add              rsp, 16;                             jmp   n309_cmp_test_β
                        .size            n310_var_bx, .-n310_var_bx
                        .type            n311_lit_integer_bx, @function
n311_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:     sub              rsp, 16
                        mov              r11, 312
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_900_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n312_binop_α
n311_lit_integer_β:     mov              r11, 312
                        add              rsp, 16;                             jmp   n310_var_β
.Llit_integer_α_900_0:  .quad            1
                        .size            n311_lit_integer_bx, .-n311_lit_integer_bx
                        .type            n312_binop_bx, @function
n312_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_binop_α:           sub              rsp, 16
                        mov              r11, 313
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_901_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_901_7
.Lbinop_α_901_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_901_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_901_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_901_4
.Lbinop_α_901_3:        movq             xmm0, rsi
.Lbinop_α_901_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_901_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_901_7:                                                              jmp   n313_assign_α
.Lbinop_α_901_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_901_240
                        add              rsp, 16;                             jmp   n311_lit_integer_β
.Lbinop_α_901_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_assign_α
                        .size            n312_binop_bx, .-n312_binop_bx
                        .type            n313_assign_bx, @function
n313_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              r11, 314
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
                        mov              rdi, qword ptr [rip + .Lassign_α_902_0]
                        .section         .rodata
.Lassign_α_902_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_902_1_s]
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
                        pop              rax;                                 jmp   n314_statement_end_α
.Lassign_α_902_0:       .quad            .Lassign_α_902_0_s
.Lassign_α_902_0_s:     .string          "sx"
                        .size            n313_assign_bx, .-n313_assign_bx
                        .type            n314_statement_end_bx, @function
n314_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:   mov              r11, 315
                        mov              r10, 30
                        add              rsp, 176;                            jmp   n280_lit_integer_α
                        .size            n314_statement_end_bx, .-n314_statement_end_bx
                        .type            n315_lit_integer_bx, @function
n315_lit_integer_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n315_lit_integer_α:     sub              rsp, 16
                        mov              r11, 316
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_lit_integer_α
.Llit_integer_α_905_0:  .quad            31
                        .size            n315_lit_integer_bx, .-n315_lit_integer_bx
                        .type            n316_lit_integer_bx, @function
n316_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     sub              rsp, 16
                        mov              r11, 317
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_call_α
.Llit_integer_α_906_0:  .quad            52
                        .size            n316_lit_integer_bx, .-n316_lit_integer_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            sub              rsp, 16
                        mov              r11, 318
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
                        add              rsp, -16;                            jmp   n318_statement_begin_α
.Lcall_α_907_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_statement_begin_α
n317_call_β:            mov              r11, 318
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n318_statement_begin_α
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_statement_begin_bx, @function
n318_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_begin_α: mov              r11, 319
                        mov              r10, 31;                             jmp   n319_lit_integer_α
n318_statement_begin_β: mov              r11, 319
                        add              rsp, 48;                             jmp   n322_lit_integer_α
                        .size            n318_statement_begin_bx, .-n318_statement_begin_bx
                        .type            n319_lit_integer_bx, @function
n319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:     sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_911_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n320_assign_α
.Llit_integer_α_911_0:  .quad            1
                        .size            n319_lit_integer_bx, .-n319_lit_integer_bx
                        .type            n320_assign_bx, @function
n320_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:          mov              r11, 321
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
                        mov              rdi, qword ptr [rip + .Lassign_α_912_0]
                        .section         .rodata
.Lassign_α_912_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_912_1_s]
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
                        pop              rax;                                 jmp   n321_statement_end_α
.Lassign_α_912_0:       .quad            .Lassign_α_912_0_s
.Lassign_α_912_0_s:     .string          "rx"
                        .size            n320_assign_bx, .-n320_assign_bx
                        .type            n321_statement_end_bx, @function
n321_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_end_α:   mov              r11, 322
                        mov              r10, 31
                        add              rsp, 64;                             jmp   n322_lit_integer_α
                        .size            n321_statement_end_bx, .-n321_statement_end_bx
                        .type            n322_lit_integer_bx, @function
n322_lit_integer_bx:
#=======================================================================================================================
# REALRD  ZS = ZS + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n322_lit_integer_α:     sub              rsp, 16
                        mov              r11, 323
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_915_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_lit_integer_α
.Llit_integer_α_915_0:  .quad            32
                        .size            n322_lit_integer_bx, .-n322_lit_integer_bx
                        .type            n323_lit_integer_bx, @function
n323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_916_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_call_α
.Llit_integer_α_916_0:  .quad            53
                        .size            n323_lit_integer_bx, .-n323_lit_integer_bx
                        .type            n324_call_bx, @function
n324_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:            sub              rsp, 16
                        mov              r11, 325
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
.Lcall_α_rkfnzd918:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd918]
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
                        cmp              al, 104;                             jne   .Lcall_α_917_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n325_statement_begin_α
.Lcall_α_917_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_statement_begin_α
n324_call_β:            mov              r11, 325
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n325_statement_begin_α
                        .size            n324_call_bx, .-n324_call_bx
                        .type            n325_statement_begin_bx, @function
n325_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_begin_α: mov              r11, 326
                        mov              r10, 32;                             jmp   n326_var_α
n325_statement_begin_β: mov              r11, 326
                        add              rsp, 48;                             jmp   n336_lit_integer_α
                        .size            n325_statement_begin_bx, .-n325_statement_begin_bx
                        .type            n326_var_bx, @function
n326_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             sub              rsp, 16
                        mov              r11, 327
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_var_α
                        .size            n326_var_bx, .-n326_var_bx
                        .type            n327_var_bx, @function
n327_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:             sub              rsp, 16
                        mov              r11, 328
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_var_α
n327_var_β:             mov              r11, 328
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n325_statement_begin_β
                        .size            n327_var_bx, .-n327_var_bx
                        .type            n328_var_bx, @function
n328_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             sub              rsp, 16
                        mov              r11, 329
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_lit_real_α
n328_var_β:             mov              r11, 329
                        add              rsp, 16;                             jmp   n327_var_β
                        .size            n328_var_bx, .-n328_var_bx
                        .type            n329_lit_real_bx, @function
n329_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_real_α:        sub              rsp, 16
                        mov              r11, 330
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_924_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n330_binop_α
.Llit_real_α_924_0:     .quad            4611686018427387904
                        .size            n329_lit_real_bx, .-n329_lit_real_bx
                        .type            n330_binop_bx, @function
n330_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_binop_α:           sub              rsp, 16
                        mov              r11, 331
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
                        cmp              al, 104;                             jne   .Lbinop_α_925_240
                        add              rsp, 32;                             jmp   n328_var_β
.Lbinop_α_925_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_subscript_α
n330_binop_β:           mov              r11, 331
                        add              rsp, 32;                             jmp   n328_var_β
                        .size            n330_binop_bx, .-n330_binop_bx
                        .type            n331_subscript_bx, @function
n331_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_subscript_α:       sub              rsp, 16
                        mov              r11, 332
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
                        cmp              al, 104;                             jne   .Lsubscript_α_926_240
                        add              rsp, 16;                             jmp   n330_binop_β
.Lsubscript_α_926_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_deref_α
n331_subscript_β:       mov              r11, 332
                        add              rsp, 16;                             jmp   n330_binop_β
                        .size            n331_subscript_bx, .-n331_subscript_bx
                        .type            n332_deref_bx, @function
n332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_deref_α:           sub              rsp, 16
                        mov              r11, 333
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
                        cmp              al, 104;                             jne   .Lderef_α_927_240
                        add              rsp, 16;                             jmp   n331_subscript_β
.Lderef_α_927_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_binop_α
n332_deref_β:           mov              r11, 333
                        add              rsp, 16;                             jmp   n331_subscript_β
                        .size            n332_deref_bx, .-n332_deref_bx
                        .type            n333_binop_bx, @function
n333_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_binop_α:           sub              rsp, 16
                        mov              r11, 334
                        mov              eax, dword ptr [rsp + 112]           # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_928_2
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_928_7
.Lbinop_α_928_2:        and              edx, 1;                              jz    .Lbinop_α_928_0
                        mov              rsi, qword ptr [rsp + 120]           # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_928_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_928_4
.Lbinop_α_928_3:        movq             xmm0, rsi
.Lbinop_α_928_4:        cmp              cl, 5;                               je    .Lbinop_α_928_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_928_6
.Lbinop_α_928_5:        movq             xmm1, rdi
.Lbinop_α_928_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_928_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_928_7:                                                              jmp   n334_assign_α
.Lbinop_α_928_0:        mov              rdi, qword ptr [rsp + 112]           # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_928_240
                        add              rsp, 16;                             jmp   n332_deref_β
.Lbinop_α_928_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_assign_α
                        .size            n333_binop_bx, .-n333_binop_bx
                        .type            n334_assign_bx, @function
n334_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:          mov              r11, 335
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
                        mov              rdi, qword ptr [rip + .Lassign_α_929_0]
                        .section         .rodata
.Lassign_α_929_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_929_1_s]
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
                        pop              rax;                                 jmp   n335_statement_end_α
.Lassign_α_929_0:       .quad            .Lassign_α_929_0_s
.Lassign_α_929_0_s:     .string          "ZS"
                        .size            n334_assign_bx, .-n334_assign_bx
                        .type            n335_statement_end_bx, @function
n335_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:   mov              r11, 336
                        mov              r10, 32
                        add              rsp, 176;                            jmp   n336_lit_integer_α
                        .size            n335_statement_end_bx, .-n335_statement_end_bx
                        .type            n336_lit_integer_bx, @function
n336_lit_integer_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(REALRD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n336_lit_integer_α:     sub              rsp, 16
                        mov              r11, 337
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_932_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n337_lit_integer_α
.Llit_integer_α_932_0:  .quad            33
                        .size            n336_lit_integer_bx, .-n336_lit_integer_bx
                        .type            n337_lit_integer_bx, @function
n337_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     sub              rsp, 16
                        mov              r11, 338
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_933_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n338_call_α
.Llit_integer_α_933_0:  .quad            54
                        .size            n337_lit_integer_bx, .-n337_lit_integer_bx
                        .type            n338_call_bx, @function
n338_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_call_α:            sub              rsp, 16
                        mov              r11, 339
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
.Lcall_α_rkfnzd935:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd935]
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
                        cmp              al, 104;                             jne   .Lcall_α_934_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n339_statement_begin_α
.Lcall_α_934_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_statement_begin_α
n338_call_β:            mov              r11, 339
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n339_statement_begin_α
                        .size            n338_call_bx, .-n338_call_bx
                        .type            n339_statement_begin_bx, @function
n339_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α: mov              r11, 340
                        mov              r10, 33;                             jmp   n340_var_α
n339_statement_begin_β: mov              r11, 340
                        add              rsp, 48;                             jmp   n350_lit_integer_α
                        .size            n339_statement_begin_bx, .-n339_statement_begin_bx
                        .type            n340_var_bx, @function
n340_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             sub              rsp, 16
                        mov              r11, 341
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_lit_integer_α
                        .size            n340_var_bx, .-n340_var_bx
                        .type            n341_lit_integer_bx, @function
n341_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_integer_α:     sub              rsp, 16
                        mov              r11, 342
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_939_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n342_coerce_numeric_α
n341_lit_integer_β:     mov              r11, 342
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
.Llit_integer_α_939_0:  .quad            12
                        .size            n341_lit_integer_bx, .-n341_lit_integer_bx
                        .type            n342_coerce_numeric_bx, @function
n342_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 343
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_941_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_941_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_941_0
.Lcoerce_numeric_α_941_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n343_coerce_numeric_α
.Lcoerce_numeric_α_941_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n343_coerce_numeric_α
n342_coerce_numeric_β:  mov              r11, 343
                        add              rsp, 16;                             jmp   n341_lit_integer_β
                        .size            n342_coerce_numeric_bx, .-n342_coerce_numeric_bx
                        .type            n343_coerce_numeric_bx, @function
n343_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 344
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_943_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_943_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_943_0
.Lcoerce_numeric_α_943_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n344_cmp_test_α
.Lcoerce_numeric_α_943_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n344_cmp_test_α
n343_coerce_numeric_β:  mov              r11, 344
                        add              rsp, 16;                             jmp   n342_coerce_numeric_β
                        .size            n343_coerce_numeric_bx, .-n343_coerce_numeric_bx
                        .type            n344_cmp_test_bx, @function
n344_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_cmp_test_α:        sub              rsp, 16
                        mov              r11, 345
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_945_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_945_239
                        add              rsp, 16;                             jmp   n343_coerce_numeric_β
.Lcmp_test_α_945_239:                                                         jmp   n345_var_α
.Lcmp_test_α_945_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_945_240
                        add              rsp, 16;                             jmp   n343_coerce_numeric_β
.Lcmp_test_α_945_240:                                                         jmp   n345_var_α
n344_cmp_test_β:        mov              r11, 345
                        add              rsp, 16;                             jmp   n343_coerce_numeric_β
                        .size            n344_cmp_test_bx, .-n344_cmp_test_bx
                        .type            n345_var_bx, @function
n345_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              r11, 346
                        mov              rax, qword ptr [r9 + 112]            # rx
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_lit_integer_α
n345_var_β:             mov              r11, 346
                        add              rsp, 16;                             jmp   n344_cmp_test_β
                        .size            n345_var_bx, .-n345_var_bx
                        .type            n346_lit_integer_bx, @function
n346_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:     sub              rsp, 16
                        mov              r11, 347
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_947_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_binop_α
n346_lit_integer_β:     mov              r11, 347
                        add              rsp, 16;                             jmp   n345_var_β
.Llit_integer_α_947_0:  .quad            1
                        .size            n346_lit_integer_bx, .-n346_lit_integer_bx
                        .type            n347_binop_bx, @function
n347_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_binop_α:           sub              rsp, 16
                        mov              r11, 348
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_948_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_948_7
.Lbinop_α_948_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_948_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_948_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_948_4
.Lbinop_α_948_3:        movq             xmm0, rsi
.Lbinop_α_948_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_948_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_948_7:                                                              jmp   n348_assign_α
.Lbinop_α_948_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_948_240
                        add              rsp, 16;                             jmp   n346_lit_integer_β
.Lbinop_α_948_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_assign_α
                        .size            n347_binop_bx, .-n347_binop_bx
                        .type            n348_assign_bx, @function
n348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 349
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
                        mov              rdi, qword ptr [rip + .Lassign_α_949_0]
                        .section         .rodata
.Lassign_α_949_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_949_1_s]
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
                        pop              rax;                                 jmp   n349_statement_end_α
.Lassign_α_949_0:       .quad            .Lassign_α_949_0_s
.Lassign_α_949_0_s:     .string          "rx"
                        .size            n348_assign_bx, .-n348_assign_bx
                        .type            n349_statement_end_bx, @function
n349_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 350
                        mov              r10, 33
                        add              rsp, 176;                            jmp   n322_lit_integer_α
                        .size            n349_statement_end_bx, .-n349_statement_end_bx
                        .type            n350_lit_integer_bx, @function
n350_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n350_lit_integer_α:     sub              rsp, 16
                        mov              r11, 351
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_952_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n351_lit_integer_α
.Llit_integer_α_952_0:  .quad            34
                        .size            n350_lit_integer_bx, .-n350_lit_integer_bx
                        .type            n351_lit_integer_bx, @function
n351_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     sub              rsp, 16
                        mov              r11, 352
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_953_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_call_α
.Llit_integer_α_953_0:  .quad            55
                        .size            n351_lit_integer_bx, .-n351_lit_integer_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            sub              rsp, 16
                        mov              r11, 353
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
.Lcall_α_rkfnzd955:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd955]
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
                        cmp              al, 104;                             jne   .Lcall_α_954_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n353_statement_begin_α
.Lcall_α_954_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_statement_begin_α
n352_call_β:            mov              r11, 353
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n353_statement_begin_α
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_statement_begin_bx, @function
n353_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α: mov              r11, 354
                        mov              r10, 34;                             jmp   n354_var_α
n353_statement_begin_β: mov              r11, 354
                        add              rsp, 48;                             jmp   n362_lit_integer_α
                        .size            n353_statement_begin_bx, .-n353_statement_begin_bx
                        .type            n354_var_bx, @function
n354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              r11, 355
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_var_α
                        .size            n354_var_bx, .-n354_var_bx
                        .type            n355_var_bx, @function
n355_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:             sub              rsp, 16
                        mov              r11, 356
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_lit_string_α
n355_var_β:             mov              r11, 356
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
                        .size            n355_var_bx, .-n355_var_bx
                        .type            n356_lit_string_bx, @function
n356_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      sub              rsp, 16
                        mov              r11, 357
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_960_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n357_subscript_α
n356_lit_string_β:      mov              r11, 357
                        add              rsp, 16;                             jmp   n355_var_β
.Llit_string_α_960_0:   .quad            .Llit_string_α_960_0_s
.Llit_string_α_960_0_s: .string          ""
                        .size            n356_lit_string_bx, .-n356_lit_string_bx
                        .type            n357_subscript_bx, @function
n357_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_subscript_α:       sub              rsp, 16
                        mov              r11, 358
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
                        cmp              al, 104;                             jne   .Lsubscript_α_961_240
                        add              rsp, 16;                             jmp   n356_lit_string_β
.Lsubscript_α_961_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_deref_α
n357_subscript_β:       mov              r11, 358
                        add              rsp, 16;                             jmp   n356_lit_string_β
                        .size            n357_subscript_bx, .-n357_subscript_bx
                        .type            n358_deref_bx, @function
n358_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_deref_α:           sub              rsp, 16
                        mov              r11, 359
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
                        cmp              al, 104;                             jne   .Lderef_α_962_240
                        add              rsp, 16;                             jmp   n357_subscript_β
.Lderef_α_962_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n359_binop_α
n358_deref_β:           mov              r11, 359
                        add              rsp, 16;                             jmp   n357_subscript_β
                        .size            n358_deref_bx, .-n358_deref_bx
                        .type            n359_binop_bx, @function
n359_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_binop_α:           sub              rsp, 16
                        mov              r11, 360
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_963_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_963_7
.Lbinop_α_963_2:        and              edx, 1;                              jz    .Lbinop_α_963_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_963_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_963_4
.Lbinop_α_963_3:        movq             xmm0, rsi
.Lbinop_α_963_4:        cmp              cl, 5;                               je    .Lbinop_α_963_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_963_6
.Lbinop_α_963_5:        movq             xmm1, rdi
.Lbinop_α_963_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_963_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_963_7:                                                              jmp   n360_assign_α
.Lbinop_α_963_0:        mov              rdi, qword ptr [rsp + 80]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_963_240
                        add              rsp, 16;                             jmp   n358_deref_β
.Lbinop_α_963_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_assign_α
                        .size            n359_binop_bx, .-n359_binop_bx
                        .type            n360_assign_bx, @function
n360_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              r11, 361
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
                        mov              rdi, qword ptr [rip + .Lassign_α_964_0]
                        .section         .rodata
.Lassign_α_964_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_964_1_s]
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
                        pop              rax;                                 jmp   n361_statement_end_α
.Lassign_α_964_0:       .quad            .Lassign_α_964_0_s
.Lassign_α_964_0_s:     .string          "ZS"
                        .size            n360_assign_bx, .-n360_assign_bx
                        .type            n361_statement_end_bx, @function
n361_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_end_α:   mov              r11, 362
                        mov              r10, 34
                        add              rsp, 144;                            jmp   n362_lit_integer_α
                        .size            n361_statement_end_bx, .-n361_statement_end_bx
                        .type            n362_lit_integer_bx, @function
n362_lit_integer_bx:
#=======================================================================================================================
#         ZS = ZS + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n362_lit_integer_α:     sub              rsp, 16
                        mov              r11, 363
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_967_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n363_lit_integer_α
.Llit_integer_α_967_0:  .quad            35
                        .size            n362_lit_integer_bx, .-n362_lit_integer_bx
                        .type            n363_lit_integer_bx, @function
n363_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_integer_α:     sub              rsp, 16
                        mov              r11, 364
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_968_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n364_call_α
.Llit_integer_α_968_0:  .quad            57
                        .size            n363_lit_integer_bx, .-n363_lit_integer_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            sub              rsp, 16
                        mov              r11, 365
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
.Lcall_α_rkfnzd970:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd970]
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
                        cmp              al, 104;                             jne   .Lcall_α_969_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n365_statement_begin_α
.Lcall_α_969_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_statement_begin_α
n364_call_β:            mov              r11, 365
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n365_statement_begin_α
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_statement_begin_bx, @function
n365_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_begin_α: mov              r11, 366
                        mov              r10, 35;                             jmp   n366_var_α
n365_statement_begin_β: mov              r11, 366
                        add              rsp, 48;                             jmp   n388_lit_integer_α
                        .size            n365_statement_begin_bx, .-n365_statement_begin_bx
                        .type            n366_var_bx, @function
n366_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              r11, 367
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_var_α
                        .size            n366_var_bx, .-n366_var_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 368
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_lit_integer_α
n367_var_β:             mov              r11, 368
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n365_statement_begin_β
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_lit_integer_bx, @function
n368_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     sub              rsp, 16
                        mov              r11, 369
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_975_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n369_subscript_α
n368_lit_integer_β:     mov              r11, 369
                        add              rsp, 16;                             jmp   n367_var_β
.Llit_integer_α_975_0:  .quad            9999
                        .size            n368_lit_integer_bx, .-n368_lit_integer_bx
                        .type            n369_subscript_bx, @function
n369_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_subscript_α:       sub              rsp, 16
                        mov              r11, 370
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
                        cmp              al, 104;                             jne   .Lsubscript_α_976_240
                        add              rsp, 16;                             jmp   n368_lit_integer_β
.Lsubscript_α_976_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_deref_α
n369_subscript_β:       mov              r11, 370
                        add              rsp, 16;                             jmp   n368_lit_integer_β
                        .size            n369_subscript_bx, .-n369_subscript_bx
                        .type            n370_deref_bx, @function
n370_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_deref_α:           sub              rsp, 16
                        mov              r11, 371
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
                        cmp              al, 104;                             jne   .Lderef_α_977_240
                        add              rsp, 16;                             jmp   n369_subscript_β
.Lderef_α_977_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_call_α
n370_deref_β:           mov              r11, 371
                        add              rsp, 16;                             jmp   n369_subscript_β
                        .size            n370_deref_bx, .-n370_deref_bx
                        .type            n371_call_bx, @function
n371_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            sub              rsp, 16
                        mov              r11, 372
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd979:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd979]
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
                        cmp              al, 104;                             jne   .Lcall_α_978_240
                        add              rsp, 16;                             jmp   n370_deref_β
.Lcall_α_978_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_binop_α
n371_call_β:            mov              r11, 372
                        add              rsp, 16;                             jmp   n370_deref_β
                        .size            n371_call_bx, .-n371_call_bx
                        .type            n372_binop_bx, @function
n372_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_binop_α:           sub              rsp, 16
                        mov              r11, 373
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_980_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_980_7
.Lbinop_α_980_2:        and              edx, 1;                              jz    .Lbinop_α_980_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_980_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_980_4
.Lbinop_α_980_3:        movq             xmm0, rsi
.Lbinop_α_980_4:        cmp              cl, 5;                               je    .Lbinop_α_980_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_980_6
.Lbinop_α_980_5:        movq             xmm1, rdi
.Lbinop_α_980_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_980_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_980_7:                                                              jmp   n373_var_α
.Lbinop_α_980_0:        mov              rdi, qword ptr [rsp + 96]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_980_240
                        add              rsp, 32;                             jmp   n370_deref_β
.Lbinop_α_980_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_var_α
n372_binop_β:           mov              r11, 373
                        add              rsp, 32;                             jmp   n370_deref_β
                        .size            n372_binop_bx, .-n372_binop_bx
                        .type            n373_var_bx, @function
n373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             sub              rsp, 16
                        mov              r11, 374
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_lit_string_α
n373_var_β:             mov              r11, 374
                        add              rsp, 16;                             jmp   n372_binop_β
                        .size            n373_var_bx, .-n373_var_bx
                        .type            n374_lit_string_bx, @function
n374_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      sub              rsp, 16
                        mov              r11, 375
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_982_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n375_subscript_α
n374_lit_string_β:      mov              r11, 375
                        add              rsp, 16;                             jmp   n373_var_β
.Llit_string_α_982_0:   .quad            .Llit_string_α_982_0_s
.Llit_string_α_982_0_s: .string          "absent"
                        .size            n374_lit_string_bx, .-n374_lit_string_bx
                        .type            n375_subscript_bx, @function
n375_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_subscript_α:       sub              rsp, 16
                        mov              r11, 376
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
                        cmp              al, 104;                             jne   .Lsubscript_α_983_240
                        add              rsp, 16;                             jmp   n374_lit_string_β
.Lsubscript_α_983_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_deref_α
n375_subscript_β:       mov              r11, 376
                        add              rsp, 16;                             jmp   n374_lit_string_β
                        .size            n375_subscript_bx, .-n375_subscript_bx
                        .type            n376_deref_bx, @function
n376_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_deref_α:           sub              rsp, 16
                        mov              r11, 377
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
                        cmp              al, 104;                             jne   .Lderef_α_984_240
                        add              rsp, 16;                             jmp   n375_subscript_β
.Lderef_α_984_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_call_α
n376_deref_β:           mov              r11, 377
                        add              rsp, 16;                             jmp   n375_subscript_β
                        .size            n376_deref_bx, .-n376_deref_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            sub              rsp, 16
                        mov              r11, 378
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd986:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd986]
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
                        cmp              al, 104;                             jne   .Lcall_α_985_240
                        add              rsp, 16;                             jmp   n376_deref_β
.Lcall_α_985_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_binop_α
n377_call_β:            mov              r11, 378
                        add              rsp, 16;                             jmp   n376_deref_β
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_binop_bx, @function
n378_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_binop_α:           sub              rsp, 16
                        mov              r11, 379
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_987_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_987_7
.Lbinop_α_987_2:        and              edx, 1;                              jz    .Lbinop_α_987_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_987_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_987_4
.Lbinop_α_987_3:        movq             xmm0, rsi
.Lbinop_α_987_4:        cmp              cl, 5;                               je    .Lbinop_α_987_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_987_6
.Lbinop_α_987_5:        movq             xmm1, rdi
.Lbinop_α_987_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_987_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_987_7:                                                              jmp   n379_var_α
.Lbinop_α_987_0:        mov              rdi, qword ptr [rsp + 96]            # binop
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
                        cmp              al, 104;                             jne   .Lbinop_α_987_240
                        add              rsp, 32;                             jmp   n376_deref_β
.Lbinop_α_987_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_var_α
n378_binop_β:           mov              r11, 379
                        add              rsp, 32;                             jmp   n376_deref_β
                        .size            n378_binop_bx, .-n378_binop_bx
                        .type            n379_var_bx, @function
n379_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             sub              rsp, 16
                        mov              r11, 380
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_lit_integer_α
n379_var_β:             mov              r11, 380
                        add              rsp, 16;                             jmp   n378_binop_β
                        .size            n379_var_bx, .-n379_var_bx
                        .type            n380_lit_integer_bx, @function
n380_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     sub              rsp, 16
                        mov              r11, 381
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_989_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n381_unop_α
n380_lit_integer_β:     mov              r11, 381
                        add              rsp, 16;                             jmp   n379_var_β
.Llit_integer_α_989_0:  .quad            9999
                        .size            n380_lit_integer_bx, .-n380_lit_integer_bx
                        .type            n381_unop_bx, @function
n381_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_unop_α:            sub              rsp, 16
                        mov              r11, 382
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_subscript_α
n381_unop_β:            mov              r11, 382
                        add              rsp, 16;                             jmp   n380_lit_integer_β
                        .size            n381_unop_bx, .-n381_unop_bx
                        .type            n382_subscript_bx, @function
n382_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_subscript_α:       sub              rsp, 16
                        mov              r11, 383
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
                        cmp              al, 104;                             jne   .Lsubscript_α_991_240
                        add              rsp, 16;                             jmp   n381_unop_β
.Lsubscript_α_991_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_deref_α
n382_subscript_β:       mov              r11, 383
                        add              rsp, 16;                             jmp   n381_unop_β
                        .size            n382_subscript_bx, .-n382_subscript_bx
                        .type            n383_deref_bx, @function
n383_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_deref_α:           sub              rsp, 16
                        mov              r11, 384
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
                        cmp              al, 104;                             jne   .Lderef_α_992_240
                        add              rsp, 16;                             jmp   n382_subscript_β
.Lderef_α_992_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_call_α
n383_deref_β:           mov              r11, 384
                        add              rsp, 16;                             jmp   n382_subscript_β
                        .size            n383_deref_bx, .-n383_deref_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            sub              rsp, 16
                        mov              r11, 385
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd994:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd994]
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
                        cmp              al, 104;                             jne   .Lcall_α_993_240
                        add              rsp, 16;                             jmp   n383_deref_β
.Lcall_α_993_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_binop_α
n384_call_β:            mov              r11, 385
                        add              rsp, 16;                             jmp   n383_deref_β
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_binop_bx, @function
n385_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_binop_α:           sub              rsp, 16
                        mov              r11, 386
                        mov              eax, dword ptr [rsp + 112]           # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_995_2
                        mov              rax, qword ptr [rsp + 120]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_995_7
.Lbinop_α_995_2:        and              edx, 1;                              jz    .Lbinop_α_995_0
                        mov              rsi, qword ptr [rsp + 120]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_995_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_995_4
.Lbinop_α_995_3:        movq             xmm0, rsi
.Lbinop_α_995_4:        cmp              cl, 5;                               je    .Lbinop_α_995_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_995_6
.Lbinop_α_995_5:        movq             xmm1, rdi
.Lbinop_α_995_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_995_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_995_7:                                                              jmp   n386_assign_α
.Lbinop_α_995_0:        mov              rdi, qword ptr [rsp + 112]           # binop
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
                        cmp              al, 104;                             jne   .Lbinop_α_995_240
                        add              rsp, 32;                             jmp   n383_deref_β
.Lbinop_α_995_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_assign_α
                        .size            n385_binop_bx, .-n385_binop_bx
                        .type            n386_assign_bx, @function
n386_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_assign_α:          mov              r11, 387
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
                        mov              rdi, qword ptr [rip + .Lassign_α_996_0]
                        .section         .rodata
.Lassign_α_996_1_s:     .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_996_1_s]
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
                        pop              rax;                                 jmp   n387_statement_end_α
.Lassign_α_996_0:       .quad            .Lassign_α_996_0_s
.Lassign_α_996_0_s:     .string          "ZS"
                        .size            n386_assign_bx, .-n386_assign_bx
                        .type            n387_statement_end_bx, @function
n387_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_end_α:   mov              r11, 388
                        mov              r10, 35
                        add              rsp, 368;                            jmp   n388_lit_integer_α
                        .size            n387_statement_end_bx, .-n387_statement_end_bx
                        .type            n388_lit_integer_bx, @function
n388_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n388_lit_integer_α:     sub              rsp, 16
                        mov              r11, 389
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_999_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n389_lit_integer_α
.Llit_integer_α_999_0:  .quad            36
                        .size            n388_lit_integer_bx, .-n388_lit_integer_bx
                        .type            n389_lit_integer_bx, @function
n389_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     sub              rsp, 16
                        mov              r11, 390
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1000_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_call_α
.Llit_integer_α_1000_0: .quad            58
                        .size            n389_lit_integer_bx, .-n389_lit_integer_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            sub              rsp, 16
                        mov              r11, 391
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
.Lcall_α_rkfnzd1002:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1002]
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
                        cmp              al, 104;                             jne   .Lcall_α_1001_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n391_statement_begin_α
.Lcall_α_1001_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_statement_begin_α
n390_call_β:            mov              r11, 391
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n391_statement_begin_α
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_statement_begin_bx, @function
n391_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_begin_α: mov              r11, 392
                        mov              r10, 36;                             jmp   n392_var_α
n391_statement_begin_β: mov              r11, 392
                        add              rsp, 48;                             jmp   n402_lit_integer_α
                        .size            n391_statement_begin_bx, .-n391_statement_begin_bx
                        .type            n392_var_bx, @function
n392_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             sub              rsp, 16
                        mov              r11, 393
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_var_α
                        .size            n392_var_bx, .-n392_var_bx
                        .type            n393_var_bx, @function
n393_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             sub              rsp, 16
                        mov              r11, 394
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_coerce_numeric_α
n393_var_β:             mov              r11, 394
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n391_statement_begin_β
                        .size            n393_var_bx, .-n393_var_bx
                        .type            n394_coerce_numeric_bx, @function
n394_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 395
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1008_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1008_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1008_0
.Lcoerce_numeric_α_1008_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n395_coerce_numeric_α
.Lcoerce_numeric_α_1008_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n395_coerce_numeric_α
n394_coerce_numeric_β:  mov              r11, 395
                        add              rsp, 16;                             jmp   n393_var_β
                        .size            n394_coerce_numeric_bx, .-n394_coerce_numeric_bx
                        .type            n395_coerce_numeric_bx, @function
n395_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 396
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1010_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1010_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1010_0
.Lcoerce_numeric_α_1010_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n396_cmp_test_α
.Lcoerce_numeric_α_1010_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n396_cmp_test_α
n395_coerce_numeric_β:  mov              r11, 396
                        add              rsp, 16;                             jmp   n394_coerce_numeric_β
                        .size            n395_coerce_numeric_bx, .-n395_coerce_numeric_bx
                        .type            n396_cmp_test_bx, @function
n396_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_cmp_test_α:        sub              rsp, 16
                        mov              r11, 397
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_1012_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_1012_239
                        add              rsp, 16;                             jmp   n395_coerce_numeric_β
.Lcmp_test_α_1012_239:                                                        jmp   n397_var_α
.Lcmp_test_α_1012_0:    lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_1012_240
                        add              rsp, 16;                             jmp   n395_coerce_numeric_β
.Lcmp_test_α_1012_240:                                                        jmp   n397_var_α
n396_cmp_test_β:        mov              r11, 397
                        add              rsp, 16;                             jmp   n395_coerce_numeric_β
                        .size            n396_cmp_test_bx, .-n396_cmp_test_bx
                        .type            n397_var_bx, @function
n397_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             sub              rsp, 16
                        mov              r11, 398
                        mov              rax, qword ptr [r9 + 32]             # ZI
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_lit_integer_α
n397_var_β:             mov              r11, 398
                        add              rsp, 16;                             jmp   n396_cmp_test_β
                        .size            n397_var_bx, .-n397_var_bx
                        .type            n398_lit_integer_bx, @function
n398_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:     sub              rsp, 16
                        mov              r11, 399
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1014_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n399_binop_α
n398_lit_integer_β:     mov              r11, 399
                        add              rsp, 16;                             jmp   n397_var_β
.Llit_integer_α_1014_0: .quad            1
                        .size            n398_lit_integer_bx, .-n398_lit_integer_bx
                        .type            n399_binop_bx, @function
n399_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_binop_α:           sub              rsp, 16
                        mov              r11, 400
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_1015_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1015_7
.Lbinop_α_1015_2:       mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_1015_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_1015_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1015_4
.Lbinop_α_1015_3:       movq             xmm0, rsi
.Lbinop_α_1015_4:       cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1015_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1015_7:                                                             jmp   n400_assign_α
.Lbinop_α_1015_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1015_240
                        add              rsp, 16;                             jmp   n398_lit_integer_β
.Lbinop_α_1015_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_assign_α
                        .size            n399_binop_bx, .-n399_binop_bx
                        .type            n400_assign_bx, @function
n400_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              r11, 401
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1016_0]
                        .section         .rodata
.Lassign_α_1016_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1016_1_s]
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
                        pop              rax;                                 jmp   n401_statement_end_α
.Lassign_α_1016_0:      .quad            .Lassign_α_1016_0_s
.Lassign_α_1016_0_s:    .string          "ZI"
                        .size            n400_assign_bx, .-n400_assign_bx
                        .type            n401_statement_end_bx, @function
n401_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_end_α:   mov              r11, 402
                        mov              r10, 36
                        add              rsp, 176;                            jmp   n43_lit_integer_α
                        .size            n401_statement_end_bx, .-n401_statement_end_bx
                        .type            n402_lit_integer_bx, @function
n402_lit_integer_bx:
#=======================================================================================================================
#         TABLE_VARIETY = ZS                              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
n402_lit_integer_α:     sub              rsp, 16
                        mov              r11, 403
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1019_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_lit_integer_α
.Llit_integer_α_1019_0: .quad            37
                        .size            n402_lit_integer_bx, .-n402_lit_integer_bx
                        .type            n403_lit_integer_bx, @function
n403_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     sub              rsp, 16
                        mov              r11, 404
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1020_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n404_call_α
.Llit_integer_α_1020_0: .quad            59
                        .size            n403_lit_integer_bx, .-n403_lit_integer_bx
                        .type            n404_call_bx, @function
n404_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            sub              rsp, 16
                        mov              r11, 405
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
.Lcall_α_rkfnzd1022:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1022]
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
                        cmp              al, 104;                             jne   .Lcall_α_1021_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n405_statement_begin_α
.Lcall_α_1021_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_statement_begin_α
n404_call_β:            mov              r11, 405
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n405_statement_begin_α
                        .size            n404_call_bx, .-n404_call_bx
                        .type            n405_statement_begin_bx, @function
n405_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_begin_α: mov              r11, 406
                        mov              r10, 37;                             jmp   n406_var_α
n405_statement_begin_β: mov              r11, 406
                        add              rsp, 48;                             jmp   RETURN
                        .size            n405_statement_begin_bx, .-n405_statement_begin_bx
                        .type            n406_var_bx, @function
n406_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              r11, 407
                        mov              rax, qword ptr [r9 + 48]             # ZS
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_assign_α
                        .size            n406_var_bx, .-n406_var_bx
                        .type            n407_assign_bx, @function
n407_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:          mov              r11, 408
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1026_0]
                        .section         .rodata
.Lassign_α_1026_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1026_1_s]
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
                        pop              rax;                                 jmp   n408_statement_end_α
.Lassign_α_1026_0:      .quad            .Lassign_α_1026_0_s
.Lassign_α_1026_0_s:    .string          "TABLE_VARIETY"
                        .size            n407_assign_bx, .-n407_assign_bx
                        .type            n408_statement_end_bx, @function
n408_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_end_α:   mov              r11, 409
                        mov              r10, 37
                        add              rsp, 64;                             jmp   RETURN
                        .size            n408_statement_end_bx, .-n408_statement_end_bx
                        .type            n409_statement_begin_bx, @function
n409_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_statement_begin_α: mov              r11, 410
                        mov              r10, 38;                             jmp   n410_statement_end_α
n409_statement_begin_β: mov              r11, 410
                        add              rsp, 48;                             jmp   n411_lit_integer_α
                        .size            n409_statement_begin_bx, .-n409_statement_begin_bx
                        .type            n410_statement_end_bx, @function
n410_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_end_α:   mov              r11, 411
                        mov              r10, 38
                        add              rsp, 48;                             jmp   n411_lit_integer_α
                        .size            n410_statement_end_bx, .-n410_statement_end_bx
                        .type            n411_lit_integer_bx, @function
n411_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'census of one pass  = ' TABLE_VARIETY(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n411_lit_integer_α:     sub              rsp, 16
                        mov              r11, 412
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1033_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_lit_integer_α
.Llit_integer_α_1033_0: .quad            39
                        .size            n411_lit_integer_bx, .-n411_lit_integer_bx
                        .type            n412_lit_integer_bx, @function
n412_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     sub              rsp, 16
                        mov              r11, 413
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1034_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n413_call_α
.Llit_integer_α_1034_0: .quad            62
                        .size            n412_lit_integer_bx, .-n412_lit_integer_bx
                        .type            n413_call_bx, @function
n413_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_call_α:            sub              rsp, 16
                        mov              r11, 414
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
.Lcall_α_rkfnzd1036:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1036]
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
                        cmp              al, 104;                             jne   .Lcall_α_1035_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n414_statement_begin_α
.Lcall_α_1035_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_statement_begin_α
n413_call_β:            mov              r11, 414
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n414_statement_begin_α
                        .size            n413_call_bx, .-n413_call_bx
                        .type            n414_statement_begin_bx, @function
n414_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_begin_α: mov              r11, 415
                        mov              r10, 39;                             jmp   n415_lit_string_α
n414_statement_begin_β: mov              r11, 415
                        add              rsp, 48;                             jmp   n421_lit_integer_α
                        .size            n414_statement_begin_bx, .-n414_statement_begin_bx
                        .type            n415_lit_string_bx, @function
n415_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_1039_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n416_lit_integer_α
.Llit_string_α_1039_0:  .quad            .Llit_string_α_1039_0_s
.Llit_string_α_1039_0_s:
                        .string          "census of one pass  = "
                        .size            n415_lit_string_bx, .-n415_lit_string_bx
                        .type            n416_lit_integer_bx, @function
n416_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:     sub              rsp, 16
                        mov              r11, 417
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1040_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n417_call_α
n416_lit_integer_β:     mov              r11, 417
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n414_statement_begin_β
.Llit_integer_α_1040_0: .quad            1
                        .size            n416_lit_integer_bx, .-n416_lit_integer_bx
                        .type            n417_call_bx, @function
n417_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:            sub              rsp, 16
                        mov              r11, 418
                        lea              rcx, [rip + .Lcall_α_sig1042z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig1042z:      .quad            1
                        .quad            .Lcall_α_1042_2
                        .quad            .Lcall_α_1042_2
                        .quad            16
.Lcall_α_1042_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_1042_29
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
.Lcall_α_1042_29:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_1042_240
                        add              rsp, 16;                             jmp   n416_lit_integer_β
.Lcall_α_1042_240:                                                            jmp   n418_binop_α
n417_call_β:            mov              r11, 418;                            jmp   n416_lit_integer_β
.Lcall_β_1042_0:        .quad            .Lcall_β_1042_0_s
.Lcall_β_1042_0_s:      .string          "TABLE_VARIETY"
                        .size            n417_call_bx, .-n417_call_bx
                        .type            n418_binop_bx, @function
n418_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_binop_α:           sub              rsp, 16
                        mov              r11, 419
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n419_assign_α
                        .size            n418_binop_bx, .-n418_binop_bx
                        .type            n419_assign_bx, @function
n419_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:          mov              r11, 420
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1044_0]
                        .section         .rodata
.Lassign_α_1044_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1044_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1044_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_statement_end_α
.Lassign_α_1044_0:      .quad            .Lassign_α_1044_0_s
.Lassign_α_1044_0_s:    .string          "OUTPUT"
                        .size            n419_assign_bx, .-n419_assign_bx
                        .type            n420_statement_end_bx, @function
n420_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:   mov              r11, 421
                        mov              r10, 39
                        add              rsp, 112;                            jmp   n421_lit_integer_α
                        .size            n420_statement_end_bx, .-n420_statement_end_bx
                        .type            n421_lit_integer_bx, @function
n421_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' TABLE_VARIETY(40)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n421_lit_integer_α:     sub              rsp, 16
                        mov              r11, 422
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1047_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n422_lit_integer_α
.Llit_integer_α_1047_0: .quad            40
                        .size            n421_lit_integer_bx, .-n421_lit_integer_bx
                        .type            n422_lit_integer_bx, @function
n422_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_integer_α:     sub              rsp, 16
                        mov              r11, 423
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1048_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_call_α
.Llit_integer_α_1048_0: .quad            63
                        .size            n422_lit_integer_bx, .-n422_lit_integer_bx
                        .type            n423_call_bx, @function
n423_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        mov              r11, 424
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
.Lcall_α_rkfnzd1050:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1050]
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
                        cmp              al, 104;                             jne   .Lcall_α_1049_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n424_statement_begin_α
.Lcall_α_1049_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_statement_begin_α
n423_call_β:            mov              r11, 424
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n424_statement_begin_α
                        .size            n423_call_bx, .-n423_call_bx
                        .type            n424_statement_begin_bx, @function
n424_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_begin_α: mov              r11, 425
                        mov              r10, 40;                             jmp   n425_lit_string_α
n424_statement_begin_β: mov              r11, 425
                        add              rsp, 48;                             jmp   n431_lit_integer_α
                        .size            n424_statement_begin_bx, .-n424_statement_begin_bx
                        .type            n425_lit_string_bx, @function
n425_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      sub              rsp, 16
                        mov              r11, 426
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_1053_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n426_lit_integer_α
.Llit_string_α_1053_0:  .quad            .Llit_string_α_1053_0_s
.Llit_string_α_1053_0_s:
                        .string          "census of 40 passes = "
                        .size            n425_lit_string_bx, .-n425_lit_string_bx
                        .type            n426_lit_integer_bx, @function
n426_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:     sub              rsp, 16
                        mov              r11, 427
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1054_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n427_call_α
n426_lit_integer_β:     mov              r11, 427
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n424_statement_begin_β
.Llit_integer_α_1054_0: .quad            40
                        .size            n426_lit_integer_bx, .-n426_lit_integer_bx
                        .type            n427_call_bx, @function
n427_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_call_α:            sub              rsp, 16
                        mov              r11, 428
                        lea              rcx, [rip + .Lcall_α_sig1056z]
                        lea              rax, [rip + TABLE_VARIETY_α];        jmp   rax
.Lcall_α_sig1056z:      .quad            1
                        .quad            .Lcall_α_1056_2
                        .quad            .Lcall_α_1056_2
                        .quad            16
.Lcall_α_1056_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_1056_29
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
.Lcall_α_1056_29:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_1056_240
                        add              rsp, 16;                             jmp   n426_lit_integer_β
.Lcall_α_1056_240:                                                            jmp   n428_binop_α
n427_call_β:            mov              r11, 428;                            jmp   n426_lit_integer_β
.Lcall_β_1056_0:        .quad            .Lcall_β_1056_0_s
.Lcall_β_1056_0_s:      .string          "TABLE_VARIETY"
                        .size            n427_call_bx, .-n427_call_bx
                        .type            n428_binop_bx, @function
n428_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_binop_α:           sub              rsp, 16
                        mov              r11, 429
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_assign_α
                        .size            n428_binop_bx, .-n428_binop_bx
                        .type            n429_assign_bx, @function
n429_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              r11, 430
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1058_0]
                        .section         .rodata
.Lassign_α_1058_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1058_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1058_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n430_statement_end_α
.Lassign_α_1058_0:      .quad            .Lassign_α_1058_0_s
.Lassign_α_1058_0_s:    .string          "OUTPUT"
                        .size            n429_assign_bx, .-n429_assign_bx
                        .type            n430_statement_end_bx, @function
n430_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 431
                        mov              r10, 40
                        add              rsp, 112;                            jmp   n431_lit_integer_α
                        .size            n430_statement_end_bx, .-n430_statement_end_bx
                        .type            n431_lit_integer_bx, @function
n431_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n431_lit_integer_α:     sub              rsp, 16
                        mov              r11, 432
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1061_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n432_lit_integer_α
.Llit_integer_α_1061_0: .quad            41
                        .size            n431_lit_integer_bx, .-n431_lit_integer_bx
                        .type            n432_lit_integer_bx, @function
n432_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     sub              rsp, 16
                        mov              r11, 433
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1062_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_call_α
.Llit_integer_α_1062_0: .quad            64
                        .size            n432_lit_integer_bx, .-n432_lit_integer_bx
                        .type            n433_call_bx, @function
n433_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:            sub              rsp, 16
                        mov              r11, 434
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
.Lcall_α_rkfnzd1064:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1064]
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
                        cmp              al, 104;                             jne   .Lcall_α_1063_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n434_statement_begin_α
.Lcall_α_1063_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_statement_begin_α
n433_call_β:            mov              r11, 434
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n434_statement_begin_α
                        .size            n433_call_bx, .-n433_call_bx
                        .type            n434_statement_begin_bx, @function
n434_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α: mov              r11, 435
                        mov              r10, 41;                             jmp   n435_lit_string_α
n434_statement_begin_β: mov              r11, 435
                        add              rsp, -320;                           jmp   n457_lit_integer_α
                        .size            n434_statement_begin_bx, .-n434_statement_begin_bx
                        .type            n435_lit_string_bx, @function
n435_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      sub              rsp, 16
                        mov              r11, 436
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_1067_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n436_var_α
.Llit_string_α_1067_0:  .quad            .Llit_string_α_1067_0_s
.Llit_string_α_1067_0_s:
                        .string          "tab[17] = "
                        .size            n435_lit_string_bx, .-n435_lit_string_bx
                        .type            n436_var_bx, @function
n436_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             sub              rsp, 16
                        mov              r11, 437
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_lit_integer_α
n436_var_β:             mov              r11, 437
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n434_statement_begin_β
                        .size            n436_var_bx, .-n436_var_bx
                        .type            n437_lit_integer_bx, @function
n437_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:     sub              rsp, 16
                        mov              r11, 438
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1069_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_subscript_α
n437_lit_integer_β:     mov              r11, 438
                        add              rsp, 16;                             jmp   n436_var_β
.Llit_integer_α_1069_0: .quad            17
                        .size            n437_lit_integer_bx, .-n437_lit_integer_bx
                        .type            n438_subscript_bx, @function
n438_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_subscript_α:       sub              rsp, 16
                        mov              r11, 439
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
                        cmp              al, 104;                             jne   .Lsubscript_α_1070_240
                        add              rsp, 16;                             jmp   n437_lit_integer_β
.Lsubscript_α_1070_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_deref_α
n438_subscript_β:       mov              r11, 439
                        add              rsp, 16;                             jmp   n437_lit_integer_β
                        .size            n438_subscript_bx, .-n438_subscript_bx
                        .type            n439_deref_bx, @function
n439_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_deref_α:           sub              rsp, 16
                        mov              r11, 440
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
                        cmp              al, 104;                             jne   .Lderef_α_1071_240
                        add              rsp, 16;                             jmp   n438_subscript_β
.Lderef_α_1071_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_binop_α
n439_deref_β:           mov              r11, 440
                        add              rsp, 16;                             jmp   n438_subscript_β
                        .size            n439_deref_bx, .-n439_deref_bx
                        .type            n440_binop_bx, @function
n440_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:           sub              rsp, 16
                        mov              r11, 441
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_lit_string_α
n440_binop_β:           mov              r11, 441
                        add              rsp, 16;                             jmp   n439_deref_β
                        .size            n440_binop_bx, .-n440_binop_bx
                        .type            n441_lit_string_bx, @function
n441_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      sub              rsp, 16
                        mov              r11, 442
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_1073_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n442_binop_α
n441_lit_string_β:      mov              r11, 442
                        add              rsp, 16;                             jmp   n440_binop_β
.Llit_string_α_1073_0:  .quad            .Llit_string_α_1073_0_s
.Llit_string_α_1073_0_s:
                        .string          "   tab[\"17\"] = "
                        .size            n441_lit_string_bx, .-n441_lit_string_bx
                        .type            n442_binop_bx, @function
n442_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_binop_α:           sub              rsp, 16
                        mov              r11, 443
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n443_var_α
n442_binop_β:           mov              r11, 443
                        add              rsp, 16;                             jmp   n441_lit_string_β
                        .size            n442_binop_bx, .-n442_binop_bx
                        .type            n443_var_bx, @function
n443_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             sub              rsp, 16
                        mov              r11, 444
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_lit_string_α
n443_var_β:             mov              r11, 444
                        add              rsp, 16;                             jmp   n442_binop_β
                        .size            n443_var_bx, .-n443_var_bx
                        .type            n444_lit_string_bx, @function
n444_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      sub              rsp, 16
                        mov              r11, 445
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1076_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_subscript_α
n444_lit_string_β:      mov              r11, 445
                        add              rsp, 16;                             jmp   n443_var_β
.Llit_string_α_1076_0:  .quad            .Llit_string_α_1076_0_s
.Llit_string_α_1076_0_s:
                        .string          "17"
                        .size            n444_lit_string_bx, .-n444_lit_string_bx
                        .type            n445_subscript_bx, @function
n445_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_subscript_α:       sub              rsp, 16
                        mov              r11, 446
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
                        cmp              al, 104;                             jne   .Lsubscript_α_1077_240
                        add              rsp, 16;                             jmp   n444_lit_string_β
.Lsubscript_α_1077_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_deref_α
n445_subscript_β:       mov              r11, 446
                        add              rsp, 16;                             jmp   n444_lit_string_β
                        .size            n445_subscript_bx, .-n445_subscript_bx
                        .type            n446_deref_bx, @function
n446_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_deref_α:           sub              rsp, 16
                        mov              r11, 447
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
                        cmp              al, 104;                             jne   .Lderef_α_1078_240
                        add              rsp, 16;                             jmp   n445_subscript_β
.Lderef_α_1078_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_binop_α
n446_deref_β:           mov              r11, 447
                        add              rsp, 16;                             jmp   n445_subscript_β
                        .size            n446_deref_bx, .-n446_deref_bx
                        .type            n447_binop_bx, @function
n447_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_binop_α:           sub              rsp, 16
                        mov              r11, 448
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n448_lit_string_α
n447_binop_β:           mov              r11, 448
                        add              rsp, 16;                             jmp   n446_deref_β
                        .size            n447_binop_bx, .-n447_binop_bx
                        .type            n448_lit_string_bx, @function
n448_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      sub              rsp, 16
                        mov              r11, 449
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_1080_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_binop_α
n448_lit_string_β:      mov              r11, 449
                        add              rsp, 16;                             jmp   n447_binop_β
.Llit_string_α_1080_0:  .quad            .Llit_string_α_1080_0_s
.Llit_string_α_1080_0_s:
                        .string          "   tab[5] = "
                        .size            n448_lit_string_bx, .-n448_lit_string_bx
                        .type            n449_binop_bx, @function
n449_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_binop_α:           sub              rsp, 16
                        mov              r11, 450
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n450_var_α
n449_binop_β:           mov              r11, 450
                        add              rsp, 16;                             jmp   n448_lit_string_β
                        .size            n449_binop_bx, .-n449_binop_bx
                        .type            n450_var_bx, @function
n450_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              r11, 451
                        mov              rax, qword ptr [r9 + 64]             # tab
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_lit_integer_α
n450_var_β:             mov              r11, 451
                        add              rsp, 16;                             jmp   n449_binop_β
                        .size            n450_var_bx, .-n450_var_bx
                        .type            n451_lit_integer_bx, @function
n451_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_integer_α:     sub              rsp, 16
                        mov              r11, 452
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1083_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n452_subscript_α
n451_lit_integer_β:     mov              r11, 452
                        add              rsp, 16;                             jmp   n450_var_β
.Llit_integer_α_1083_0: .quad            5
                        .size            n451_lit_integer_bx, .-n451_lit_integer_bx
                        .type            n452_subscript_bx, @function
n452_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_subscript_α:       sub              rsp, 16
                        mov              r11, 453
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
                        cmp              al, 104;                             jne   .Lsubscript_α_1084_240
                        add              rsp, 16;                             jmp   n451_lit_integer_β
.Lsubscript_α_1084_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_deref_α
n452_subscript_β:       mov              r11, 453
                        add              rsp, 16;                             jmp   n451_lit_integer_β
                        .size            n452_subscript_bx, .-n452_subscript_bx
                        .type            n453_deref_bx, @function
n453_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_deref_α:           sub              rsp, 16
                        mov              r11, 454
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
                        cmp              al, 104;                             jne   .Lderef_α_1085_240
                        add              rsp, 16;                             jmp   n452_subscript_β
.Lderef_α_1085_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n454_binop_α
n453_deref_β:           mov              r11, 454
                        add              rsp, 16;                             jmp   n452_subscript_β
                        .size            n453_deref_bx, .-n453_deref_bx
                        .type            n454_binop_bx, @function
n454_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_binop_α:           sub              rsp, 16
                        mov              r11, 455
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_assign_α
                        .size            n454_binop_bx, .-n454_binop_bx
                        .type            n455_assign_bx, @function
n455_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              r11, 456
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1087_0]
                        .section         .rodata
.Lassign_α_1087_1_s:    .string          "table_variety.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1087_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1087_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_statement_end_α
.Lassign_α_1087_0:      .quad            .Lassign_α_1087_0_s
.Lassign_α_1087_0_s:    .string          "OUTPUT"
                        .size            n455_assign_bx, .-n455_assign_bx
                        .type            n456_statement_end_bx, @function
n456_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   mov              r11, 457
                        mov              r10, 41;                             jmp   n457_lit_integer_α
                        .size            n456_statement_end_bx, .-n456_statement_end_bx
                        .type            n457_lit_integer_bx, @function
n457_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:     sub              rsp, 16
                        mov              r11, 458
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1090_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n458_lit_integer_α
.Llit_integer_α_1090_0: .quad            42
                        .size            n457_lit_integer_bx, .-n457_lit_integer_bx
                        .type            n458_lit_integer_bx, @function
n458_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     sub              rsp, 16
                        mov              r11, 459
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1091_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_call_α
.Llit_integer_α_1091_0: .quad            65
                        .size            n458_lit_integer_bx, .-n458_lit_integer_bx
                        .type            n459_call_bx, @function
n459_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        mov              r11, 460
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
.Lcall_α_rkfnzd1093:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1093]
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
                        cmp              al, 104;                             jne   .Lcall_α_1092_240
                        add              rsp, 16
                        add              rsp, 400;                            jmp   main_γ
.Lcall_α_1092_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 416;                            jmp   main_γ
n459_call_β:            mov              r11, 460
                        add              rsp, 16
                        add              rsp, 400;                            jmp   main_γ
                        .size            n459_call_bx, .-n459_call_bx
                        .type            n460_goto_bx, @function
n460_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_goto_α:            mov              r11, 461;                            jmp   LBL__TABLE_VARIETY
n460_goto_β:            mov              r11, 461;                            jmp   main_ω
                        .size            n460_goto_bx, .-n460_goto_bx
                        .type            n461_lit_integer_bx, @function
n461_lit_integer_bx:
#=======================================================================================================================
# TABLE_VARIETY  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
LBL__TABLE_VARIETY:     sub              rsp, 16
                        mov              r11, 462
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__TABLE_VARIETY_α_1095_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n462_lit_integer_α
.LLBL__TABLE_VARIETY_α_1095_0:
                        .quad            5
                        .size            n461_lit_integer_bx, .-n461_lit_integer_bx
                        .type            n462_lit_integer_bx, @function
n462_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:     sub              rsp, 16
                        mov              r11, 463
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1096_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_call_α
.Llit_integer_α_1096_0: .quad            17
                        .size            n462_lit_integer_bx, .-n462_lit_integer_bx
                        .type            n463_call_bx, @function
n463_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_call_α:            sub              rsp, 16
                        mov              r11, 464
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
.Lcall_α_rkfnzd1098:    .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1098]
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
                        cmp              al, 104;                             jne   .Lcall_α_1097_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
.Lcall_α_1097_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_statement_begin_α
n463_call_β:            mov              r11, 464
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
                        .size            n463_call_bx, .-n463_call_bx
                        .type            n464_goto_bx, @function
n464_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_goto_α:            mov              r11, 465;                            jmp   n43_lit_integer_α
n464_goto_β:            mov              r11, 465;                            jmp   main_ω
                        .size            n464_goto_bx, .-n464_goto_bx
                        .type            n465_goto_bx, @function
n465_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_goto_α:            mov              r11, 466;                            jmp   n59_lit_integer_α
n465_goto_β:            mov              r11, 466;                            jmp   main_ω
                        .size            n465_goto_bx, .-n465_goto_bx
                        .type            n466_goto_bx, @function
n466_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_goto_α:            mov              r11, 467;                            jmp   n91_lit_integer_α
n466_goto_β:            mov              r11, 467;                            jmp   main_ω
                        .size            n466_goto_bx, .-n466_goto_bx
                        .type            n467_goto_bx, @function
n467_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_goto_α:            mov              r11, 468;                            jmp   n147_lit_integer_α
n467_goto_β:            mov              r11, 468;                            jmp   main_ω
                        .size            n467_goto_bx, .-n467_goto_bx
                        .type            n468_goto_bx, @function
n468_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_goto_α:            mov              r11, 469;                            jmp   n247_lit_integer_α
n468_goto_β:            mov              r11, 469;                            jmp   main_ω
                        .size            n468_goto_bx, .-n468_goto_bx
                        .type            n469_goto_bx, @function
n469_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_goto_α:            mov              r11, 470;                            jmp   n280_lit_integer_α
n469_goto_β:            mov              r11, 470;                            jmp   main_ω
                        .size            n469_goto_bx, .-n469_goto_bx
                        .type            n470_goto_bx, @function
n470_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_goto_α:            mov              r11, 471;                            jmp   n322_lit_integer_α
n470_goto_β:            mov              r11, 471;                            jmp   main_ω
                        .size            n470_goto_bx, .-n470_goto_bx
                        .type            n471_goto_bx, @function
n471_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_goto_α:            mov              r11, 472;                            jmp   n29_lit_integer_α
n471_goto_β:            mov              r11, 472;                            jmp   main_ω
                        .size            n471_goto_bx, .-n471_goto_bx
                        .type            n472_define_bx, @function
n472_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 473
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
                        .size            n472_define_bx, .-n472_define_bx
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
                        .long            7824
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
