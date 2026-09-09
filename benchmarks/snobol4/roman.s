                        .intel_syntax    noprefix
                        .text
                        .file            1 "roman.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 7
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
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "ROMAN_RUN"
.Lgvan4:                .string          "ZI"
.Lgvan5:                .string          "ZS"
.Lgvan6:                .string          "K"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "ROMAN"
.Llbln1:                .string          "ROMAN_END"
.Llbln2:                .string          "ROMAN_RUN"
.Llbln3:                .string          "ZBL"
.Llbln4:                .string          "ROMAN_RUN_END"
.Llbln5:                .string          "RTAB"
.Llbln6:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .quad            .Llbln6
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_238_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_239_0:  .quad            9
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_240_0:   .quad            .Llit_string_α_240_0_s
.Llit_string_α_240_0_s: .string          "roman.sno"
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
.Lcall_α_rkfnzd242:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd242]
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
                        cmp              al, 104;                             jne   .Lcall_α_241_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_241_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_245_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_246_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_246_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_246_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_246_0:
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
                        .loc             1 10 0
n8_lit_integer_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_249_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_250_0:  .quad            10
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
.Lcall_α_rkfnzd252:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd252]
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
                        cmp              al, 104;                             jne   .Lcall_α_251_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_251_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_255_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_256_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_256_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_256_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_256_0:
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
                        .loc             1 11 0
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_259_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_260_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_260_0:  .quad            11
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
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_261_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_265_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_267_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_267_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_267_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_267_0:
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
#         DEFINE('ROMAN(N)T')                             :(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
.Llit_integer_α_270_0:  .quad            4
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Llit_integer_α_271_0:  .quad            12
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
.Lcall_α_rkfnzd273:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd273]
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
                        cmp              al, 104;                             jne   .Lcall_α_272_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n26_statement_begin_α
.Lcall_α_272_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_277_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_277_1]
                        mov              edx, 2
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + ROMAN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_277_0]
                        lea              rsi, [rip + ROMAN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__ROMAN]
                        mov              rcx, qword ptr [rip + body_cell$ROMAN@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n28_statement_end_α
n27_define_β:           mov              r11, 28;                             jmp   n26_statement_begin_β
.Ldefine_α_277_0:       .quad            .Ldefine_α_277_0_s
.Ldefine_α_277_0_s:     .string          "ROMAN"
.Ldefine_α_277_1:       .quad            .Ldefine_α_277_1_s
.Ldefine_α_277_1_s:     .string          "N,T"
                                                                              jmp   .Ldefine_α_278_245
#-----------------------------------------------------------------------------------------------------------------------
ROMAN_α:                sub              rsp, 80
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              rax, qword ptr [r9 + 0]              # ROMAN
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 48], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_278_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_278_41
.Ldefine_α_278_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_278_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_278_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_278_230
.Ldefine_α_278_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_278_232]
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
.Ldefine_α_278_230:                                                           jmp   .Ldefine_α_278_231
.Ldefine_α_278_232:     .quad            .Ldefine_α_278_232_s
.Ldefine_α_278_232_s:   .string          "ROMAN"
.Ldefine_α_278_231:     lea              rcx, [rip + ROMAN_γ]
                        lea              rax, [rip + ROMAN_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$ROMAN:        .quad            LBL__ROMAN
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$ROMAN@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ROMAN_γ:                mov              rdi, qword ptr [r9 + 0]              # ROMAN
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_278_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_278_235
.Ldefine_α_278_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_278_237]
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
.Ldefine_α_278_235:                                                           jmp   .Ldefine_α_278_236
.Ldefine_α_278_237:     .quad            .Ldefine_α_278_237_s
.Ldefine_α_278_237_s:   .string          "ROMAN"
.Ldefine_α_278_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # T
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_278_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_278_110
.Ldefine_α_278_80:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_278_110:     push             rcx
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
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ROMAN_ω:                mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax              # ROMAN
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # T
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_278_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_278_180
.Ldefine_α_278_150:     mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_278_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_278_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_278_249
.Ldefine_α_278_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_278_237]
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
.Ldefine_α_278_249:     push             rcx
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
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_278_245:
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
# ROMAN_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Llit_integer_α_281_0:  .quad            8
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_282_0:  .quad            16
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
                        add              rsp, -16;                            jmp   n70_statement_begin_α
.Lcall_α_283_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_statement_begin_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n70_statement_begin_α
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 5;                              jmp   n33_var_α
n32_statement_begin_β:  mov              r11, 33
                        add              rsp, 48;                             jmp   RETURN
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_match_begin_α
n33_var_β:              mov              r11, 34
                        add              rsp, 16
                        add              rsp, 48;                             jmp   RETURN
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_match_begin_bx, @function
n34_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_begin_α:      mov              r11, 35
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_289_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_289_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n35_match_rpos_α
n34_match_begin_β:      mov              r11, 35
.Lmatch_begin_α_289_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_289_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_289_1
                                                                              jmp   .Lmatch_begin_α_289_0
.Lmatch_begin_β_289_1:
.Lmatch_begin_γ_34_af:  mov              r11, 35
.Lmatch_begin_ω_34_af:  mov              r11, 35
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n33_var_β
                        .size            n34_match_begin_bx, .-n34_match_begin_bx
                        .type            n35_match_rpos_bx, @function
n35_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_match_rpos_α:       mov              r11, 36
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n34_match_begin_β
                                                                              jmp   n36_match_assign_save_α
n35_match_rpos_β:       mov              r11, 36;                             jmp   n34_match_begin_β
                        .size            n35_match_rpos_bx, .-n35_match_rpos_bx
                        .type            n36_match_assign_save_bx, @function
n36_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 37
                        mov              dword ptr [rsp + 0], r14d;           jmp   n37_match_len_α
n36_match_assign_save_β:
                        mov              r11, 37
                        add              rsp, 16;                             jmp   n34_match_begin_β
                        .size            n36_match_assign_save_bx, .-n36_match_assign_save_bx
                        .type            n37_match_len_bx, @function
n37_match_len_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_len_α:        mov              r11, 38
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lmatch_len_α_293_240
                        add              rsp, 16;                             jmp   n34_match_begin_β
.Lmatch_len_α_293_240:  add              r14d, 1;                             jmp   n38_match_assign_cond_α
n37_match_len_β:        mov              r11, 38
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n34_match_begin_β
                        .size            n37_match_len_bx, .-n37_match_len_bx
                        .type            n38_match_assign_cond_bx, @function
n38_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_cond_α:
                        mov              r11, 39
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n39_match_end_α
n38_match_assign_cond_β:
                        mov              r11, 39
                        sub              r12, 24;                             jmp   n37_match_len_β
                        .size            n38_match_assign_cond_bx, .-n38_match_assign_cond_bx
                        .type            n39_match_end_bx, @function
n39_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_end_α:        mov              r11, 40
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -36], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmatch_end_α_297_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_34_af
.Lmatch_end_α_297_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -36]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n40_lit_string_α
                        .size            n39_match_end_bx, .-n39_match_end_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_match_replace_α
.Llit_string_α_298_0:   .quad            .Llit_string_α_298_0_s
.Llit_string_α_298_0_s: .string          ""
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_match_replace_bx, @function
n41_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_match_replace_α:    mov              r11, 42
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_300_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_300_1
.Lmatch_replace_α_300_0:
                        .quad            .Lmatch_replace_α_300_0_s
.Lmatch_replace_α_300_0_s:
                        .string          "N"
.Lmatch_replace_α_300_1:
                                                                              jmp   n42_statement_end_α
                        .size            n41_match_replace_bx, .-n41_match_replace_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n43_lit_integer_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#=======================================================================================================================
#         '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' T BREAK(',') . T   :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_303_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_lit_integer_α
.Llit_integer_α_303_0:  .quad            6
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_304_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
.Llit_integer_α_304_0:  .quad            14
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
.Lcall_α_rkfnzd306:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd306]
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
                        cmp              al, 104;                             jne   .Lcall_α_305_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
.Lcall_α_305_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_statement_begin_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 6;                              jmp   n47_lit_string_α
n46_statement_begin_β:  mov              r11, 47
                        add              rsp, 48;                             jmp   FRETURN
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Llit_string_α_309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_var_α
n47_lit_string_β:       mov              r11, 48
                        add              rsp, 16
                        add              rsp, 48;                             jmp   FRETURN
.Llit_string_α_309_0:   .quad            .Llit_string_α_309_0_s
.Llit_string_α_309_0_s: .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_assign_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16;                             jmp   n47_lit_string_β
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # var
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
                        mov              rdi, qword ptr [rip + .Lassign_α_311_0]
                        .section         .rodata
.Lassign_α_311_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_311_1_s]
                        mov              r8, 14
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_311_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_match_begin_α
n49_assign_β:           mov              r11, 50;                             jmp   n48_var_β
.Lassign_α_311_0:       .quad            .Lassign_α_311_0_s
.Lassign_α_311_0_s:     .string          "PATV$0"
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_match_begin_bx, @function
n50_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_match_begin_α:      mov              r11, 51
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_313_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_313_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n51_match_defer_α
n50_match_begin_β:      mov              r11, 51
.Lmatch_begin_α_313_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_313_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_313_1
                                                                              jmp   .Lmatch_begin_α_313_0
.Lmatch_begin_β_313_1:
.Lmatch_begin_γ_50_af:  mov              r11, 51
.Lmatch_begin_ω_50_af:  mov              r11, 51
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n49_assign_β
                        .size            n50_match_begin_bx, .-n50_match_begin_bx
                        .type            n51_match_defer_bx, @function
n51_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:      mov              r11, 52
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_314_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_314_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_314_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_314_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_314_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_314_23
                                                                              jmp   .Lmatch_defer_α_314_22
.Lmatch_defer_α_314_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_314_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_314_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_314_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_314_0
.Lmatch_defer_α_314_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_314_0
.Lmatch_defer_α_314_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lmatch_defer_α_314_23: test             rax, rax;                            jz    .Lmatch_defer_α_314_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_314_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_314_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_314_4:                                                        jmp   n52_match_assign_save_α
.Lmatch_defer_α_314_5:                                                        jmp   n50_match_begin_β
.Lmatch_defer_α_314_0:  mov              eax, edx
                        test             eax, eax;                            js    n50_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_314_6]
                        push             rcx
                        push             rax;                                 jmp   n52_match_assign_save_α
.Lmatch_defer_α_314_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n50_match_begin_β
n51_match_defer_β:      mov              r11, 52
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_314_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_314_12
                                                                              jmp   rax
.Lmatch_defer_β_314_12:                                                       jmp   qword ptr [rsp]
                        .size            n51_match_defer_bx, .-n51_match_defer_bx
                        .type            n52_match_assign_save_bx, @function
n52_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 53
                        mov              dword ptr [rsp + 0], r14d;           jmp   n53_match_break_α
n52_match_assign_save_β:
                        mov              r11, 53
                        add              rsp, 16;                             jmp   n51_match_defer_β
                        .size            n52_match_assign_save_bx, .-n52_match_assign_save_bx
                        .type            n53_match_break_bx, @function
n53_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_match_break_α:      sub              rsp, 16
                        mov              r11, 54
                        movsxd           rcx, r14d
.Lmatch_break_α_318_0:  cmp              ecx, r15d;                           jl    .Lmatch_break_α_318_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_match_defer_β
.Lmatch_break_α_318_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_318_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_318_0
.Lmatch_break_α_318_1:  mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n54_match_assign_cond_α
n53_match_break_β:      mov              r11, 54
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_match_defer_β
                        .size            n53_match_break_bx, .-n53_match_break_bx
                        .type            n54_match_assign_cond_bx, @function
n54_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_match_assign_cond_α:
                        mov              r11, 55
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n55_match_end_α
n54_match_assign_cond_β:
                        mov              r11, 55
                        sub              r12, 24;                             jmp   n53_match_break_β
                        .size            n54_match_assign_cond_bx, .-n54_match_assign_cond_bx
                        .type            n55_match_end_bx, @function
n55_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_end_α:        mov              r11, 56
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmatch_end_α_322_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_50_af
.Lmatch_end_α_322_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n56_statement_end_α
                        .size            n55_match_end_bx, .-n55_match_end_bx
                        .type            n56_statement_end_bx, @function
n56_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 6
                        add              rsp, 80;                             jmp   n57_lit_integer_α
                        .size            n56_statement_end_bx, .-n56_statement_end_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#=======================================================================================================================
#         ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_lit_integer_α
.Llit_integer_α_325_0:  .quad            7
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_326_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_call_α
.Llit_integer_α_326_0:  .quad            15
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             sub              rsp, 16
                        mov              r11, 60
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
.Lcall_α_rkfnzd328:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd328]
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
                        cmp              al, 104;                             jne   .Lcall_α_327_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n60_statement_begin_α
.Lcall_α_327_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_statement_begin_α
n59_call_β:             mov              r11, 60
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n60_statement_begin_α
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_statement_begin_bx, @function
n60_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 61
                        mov              r10, 7;                              jmp   n61_var_α
n60_statement_begin_β:  mov              r11, 61
                        add              rsp, 48;                             jmp   FRETURN
                        .size            n60_statement_begin_bx, .-n60_statement_begin_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_call_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             sub              rsp, 16
                        mov              r11, 63
                        lea              rcx, [rip + .Lcall_α_sig333z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig333z:       .quad            1
                        .quad            .Lcall_α_333_2
                        .quad            .Lcall_α_333_2
                        .quad            16
.Lcall_α_333_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_333_29
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
.Lcall_α_333_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_333_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Lcall_α_333_240:                                                             jmp   n63_lit_string_α
n62_call_β:             mov              r11, 63;                             jmp   n60_statement_begin_β
.Lcall_β_333_0:         .quad            .Lcall_β_333_0_s
.Lcall_β_333_0_s:       .string          "ROMAN"
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_334_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_lit_string_α
n63_lit_string_β:       mov              r11, 64
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n60_statement_begin_β
.Llit_string_α_334_0:   .quad            .Llit_string_α_334_0_s
.Llit_string_α_334_0_s: .string          "IVXLCDM"
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_call_α
n64_lit_string_β:       mov              r11, 65
                        add              rsp, 16;                             jmp   n63_lit_string_β
.Llit_string_α_335_0:   .quad            .Llit_string_α_335_0_s
.Llit_string_α_335_0_s: .string          "XLCDM**"
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             sub              rsp, 16
                        mov              r11, 66
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
.Lcall_α_rkfnzd337:     .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd337]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 458798
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_336_240
                        add              rsp, 16;                             jmp   n64_lit_string_β
.Lcall_α_336_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_var_α
n65_call_β:             mov              r11, 66
                        add              rsp, 16;                             jmp   n64_lit_string_β
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_binop_α
n66_var_β:              mov              r11, 67
                        add              rsp, 32;                             jmp   n64_lit_string_β
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_binop_bx, @function
n67_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              r11, 68
                        mov              rdi, qword ptr [rsp + 32]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_assign_α
                        .size            n67_binop_bx, .-n67_binop_bx
                        .type            n68_assign_bx, @function
n68_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ROMAN
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
                        mov              rdi, qword ptr [rip + .Lassign_α_340_0]
                        .section         .rodata
.Lassign_α_340_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_340_1_s]
                        mov              r8, 15
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
                        pop              rax;                                 jmp   n69_statement_end_α
.Lassign_α_340_0:       .quad            .Lassign_α_340_0_s
.Lassign_α_340_0_s:     .string          "ROMAN"
                        .size            n68_assign_bx, .-n68_assign_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        mov              r10, 7
                        add              rsp, 160;                            jmp   RETURN
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71
                        mov              r10, 8;                              jmp   n71_statement_end_α
n70_statement_begin_β:  mov              r11, 71
                        add              rsp, 48;                             jmp   n72_lit_integer_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 72
                        mov              r10, 8
                        add              rsp, 48;                             jmp   n72_lit_integer_α
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('ROMAN_RUN(N)')                          :(ROMAN_RUN_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_347_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_lit_integer_α
.Llit_integer_α_347_0:  .quad            9
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_lit_integer_bx, @function
n73_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_call_α
.Llit_integer_α_348_0:  .quad            17
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_call_bx, @function
n74_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             sub              rsp, 16
                        mov              r11, 75
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
.Lcall_α_rkfnzd350:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd350]
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
                        cmp              al, 104;                             jne   .Lcall_α_349_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n75_statement_begin_α
.Lcall_α_349_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_statement_begin_α
n74_call_β:             mov              r11, 75
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n75_statement_begin_α
                        .size            n74_call_bx, .-n74_call_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 76
                        mov              r10, 9;                              jmp   n76_define_α
n75_statement_begin_β:  mov              r11, 76
                        add              rsp, 48;                             jmp   n78_lit_integer_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_define_bx, @function
n76_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_define_α:           mov              r11, 77
                        mov              rdi, qword ptr [rip + .Ldefine_α_354_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_354_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + ROMAN_RUN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_354_0]
                        lea              rsi, [rip + ROMAN_RUN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__ROMAN_RUN]
                        mov              rcx, qword ptr [rip + body_cell$ROMAN_RUN@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n77_statement_end_α
n76_define_β:           mov              r11, 77;                             jmp   n75_statement_begin_β
.Ldefine_α_354_0:       .quad            .Ldefine_α_354_0_s
.Ldefine_α_354_0_s:     .string          "ROMAN_RUN"
.Ldefine_α_354_1:       .quad            .Ldefine_α_354_1_s
.Ldefine_α_354_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_355_245
#-----------------------------------------------------------------------------------------------------------------------
ROMAN_RUN_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 48]             # ROMAN_RUN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_355_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_355_41
.Ldefine_α_355_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_355_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_355_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_355_230
.Ldefine_α_355_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_355_232]
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
.Ldefine_α_355_230:                                                           jmp   .Ldefine_α_355_231
.Ldefine_α_355_232:     .quad            .Ldefine_α_355_232_s
.Ldefine_α_355_232_s:   .string          "ROMAN_RUN"
.Ldefine_α_355_231:     lea              rcx, [rip + ROMAN_RUN_γ]
                        lea              rax, [rip + ROMAN_RUN_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$ROMAN_RUN:    .quad            LBL__ROMAN_RUN
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$ROMAN_RUN@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ROMAN_RUN_γ:            mov              rdi, qword ptr [r9 + 48]             # ROMAN_RUN
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_355_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_355_235
.Ldefine_α_355_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_355_237]
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
.Ldefine_α_355_235:                                                           jmp   .Ldefine_α_355_236
.Ldefine_α_355_237:     .quad            .Ldefine_α_355_237_s
.Ldefine_α_355_237_s:   .string          "ROMAN_RUN"
.Ldefine_α_355_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_355_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_355_110
.Ldefine_α_355_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_355_110:     push             rcx
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
ROMAN_RUN_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax             # ROMAN_RUN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_355_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_355_180
.Ldefine_α_355_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_355_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_355_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_355_249
.Ldefine_α_355_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_355_237]
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
.Ldefine_α_355_249:     push             rcx
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
.Ldefine_α_355_245:
                        .size            n76_define_bx, .-n76_define_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 78
                        mov              r10, 9
                        add              rsp, 48;                             jmp   n78_lit_integer_α
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_lit_integer_bx, @function
n78_lit_integer_bx:
#=======================================================================================================================
# ROMAN_RUN_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_lit_integer_α
.Llit_integer_α_358_0:  .quad            15
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_359_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_call_α
.Llit_integer_α_359_0:  .quad            23
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             sub              rsp, 16
                        mov              r11, 81
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
.Lcall_α_rkfnzd361:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd361]
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
                        cmp              al, 104;                             jne   .Lcall_α_360_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n126_statement_begin_α
.Lcall_α_360_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_statement_begin_α
n80_call_β:             mov              r11, 81
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n126_statement_begin_α
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_statement_begin_bx, @function
n81_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 82
                        mov              r10, 10;                             jmp   n82_lit_integer_α
n81_statement_begin_β:  mov              r11, 82
                        add              rsp, 48;                             jmp   n85_lit_integer_α
                        .size            n81_statement_begin_bx, .-n81_statement_begin_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_364_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_assign_α
.Llit_integer_α_364_0:  .quad            1
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_assign_bx, @function
n83_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 84
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
                        mov              rdi, qword ptr [rip + .Lassign_α_365_0]
                        .section         .rodata
.Lassign_α_365_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_365_1_s]
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
                        pop              rax;                                 jmp   n84_statement_end_α
.Lassign_α_365_0:       .quad            .Lassign_α_365_0_s
.Lassign_α_365_0_s:     .string          "ZI"
                        .size            n83_assign_bx, .-n83_assign_bx
                        .type            n84_statement_end_bx, @function
n84_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 85
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n85_lit_integer_α
                        .size            n84_statement_end_bx, .-n84_statement_end_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_lit_integer_α
.Llit_integer_α_368_0:  .quad            11
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_call_α
.Llit_integer_α_369_0:  .quad            19
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
.Lcall_α_rkfnzd371:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd371]
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
                        cmp              al, 104;                             jne   .Lcall_α_370_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n88_statement_begin_α
.Lcall_α_370_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_statement_begin_α
n87_call_β:             mov              r11, 88
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n88_statement_begin_α
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89
                        mov              r10, 11;                             jmp   n89_lit_integer_α
n88_statement_begin_β:  mov              r11, 89
                        add              rsp, 48;                             jmp   n92_lit_integer_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_lit_integer_bx, @function
n89_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_assign_α
.Llit_integer_α_374_0:  .quad            0
                        .size            n89_lit_integer_bx, .-n89_lit_integer_bx
                        .type            n90_assign_bx, @function
n90_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_375_0]
                        .section         .rodata
.Lassign_α_375_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_375_1_s]
                        mov              r8, 19
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
                        pop              rax;                                 jmp   n91_statement_end_α
.Lassign_α_375_0:       .quad            .Lassign_α_375_0_s
.Lassign_α_375_0_s:     .string          "ZS"
                        .size            n90_assign_bx, .-n90_assign_bx
                        .type            n91_statement_end_bx, @function
n91_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 92
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n92_lit_integer_α
                        .size            n91_statement_end_bx, .-n91_statement_end_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#=======================================================================================================================
# ZBL     ZS = ZS + SIZE(ROMAN(1000 + ZI))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n92_lit_integer_α:      sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_lit_integer_α
.Llit_integer_α_378_0:  .quad            12
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_call_α
.Llit_integer_α_379_0:  .quad            20
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_call_bx, @function
n94_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             sub              rsp, 16
                        mov              r11, 95
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
.Lcall_α_rkfnzd381:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd381]
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
                        cmp              al, 104;                             jne   .Lcall_α_380_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n95_statement_begin_α
.Lcall_α_380_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_statement_begin_α
n94_call_β:             mov              r11, 95
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n95_statement_begin_α
                        .size            n94_call_bx, .-n94_call_bx
                        .type            n95_statement_begin_bx, @function
n95_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:  mov              r11, 96
                        mov              r10, 12;                             jmp   n96_var_α
n95_statement_begin_β:  mov              r11, 96
                        add              rsp, 48;                             jmp   n105_lit_integer_α
                        .size            n95_statement_begin_bx, .-n95_statement_begin_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 80]             # ZS
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_lit_integer_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_var_α
n97_lit_integer_β:      mov              r11, 98
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
.Llit_integer_α_385_0:  .quad            1000
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 64]             # ZI
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_binop_α
n98_var_β:              mov              r11, 99
                        add              rsp, 16;                             jmp   n97_lit_integer_β
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_binop_bx, @function
n99_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:            sub              rsp, 16
                        mov              r11, 100
                        mov              eax, dword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              al, 3;                               jne   .Lbinop_α_387_2
                        mov              rax, 1000
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_387_7
.Lbinop_α_387_2:        mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lbinop_α_387_0
                        mov              rsi, 1000
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cvtsi2sd         xmm0, rsi
                        cmp              cl, 5;                               je    .Lbinop_α_387_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_387_6
.Lbinop_α_387_5:        movq             xmm1, rdi
.Lbinop_α_387_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_387_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_387_7:                                                              jmp   n100_call_α
.Lbinop_α_387_0:        mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_387_240
                        add              rsp, 16;                             jmp   n98_var_β
.Lbinop_α_387_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_call_α
n99_binop_β:            mov              r11, 100
                        add              rsp, 16;                             jmp   n98_var_β
                        .size            n99_binop_bx, .-n99_binop_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        mov              r11, 101
                        lea              rcx, [rip + .Lcall_α_sig389z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig389z:       .quad            1
                        .quad            .Lcall_α_389_2
                        .quad            .Lcall_α_389_2
                        .quad            16
.Lcall_α_389_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_389_29
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
.Lcall_α_389_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_389_240
                        add              rsp, 16;                             jmp   n99_binop_β
.Lcall_α_389_240:                                                             jmp   n101_call_α
n100_call_β:            mov              r11, 101;                            jmp   n99_binop_β
.Lcall_β_389_0:         .quad            .Lcall_β_389_0_s
.Lcall_β_389_0_s:       .string          "ROMAN"
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            sub              rsp, 16
                        mov              r11, 102
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd391:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd391]
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
                        cmp              al, 104;                             jne   .Lcall_α_390_240
                        add              rsp, 32;                             jmp   n99_binop_β
.Lcall_α_390_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_binop_α
n101_call_β:            mov              r11, 102
                        add              rsp, 32;                             jmp   n99_binop_β
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_binop_bx, @function
n102_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              r11, 103
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_392_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_392_7
.Lbinop_α_392_2:        and              edx, 1;                              jz    .Lbinop_α_392_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_392_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_392_4
.Lbinop_α_392_3:        movq             xmm0, rsi
.Lbinop_α_392_4:        cmp              cl, 5;                               je    .Lbinop_α_392_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_392_6
.Lbinop_α_392_5:        movq             xmm1, rdi
.Lbinop_α_392_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_392_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_392_7:                                                              jmp   n103_assign_α
.Lbinop_α_392_0:        mov              rdi, qword ptr [rsp + 96]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_392_240
                        add              rsp, 48;                             jmp   n99_binop_β
.Lbinop_α_392_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_assign_α
                        .size            n102_binop_bx, .-n102_binop_bx
                        .type            n103_assign_bx, @function
n103_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_393_0]
                        .section         .rodata
.Lassign_α_393_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_393_1_s]
                        mov              r8, 20
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
                        pop              rax;                                 jmp   n104_statement_end_α
.Lassign_α_393_0:       .quad            .Lassign_α_393_0_s
.Lassign_α_393_0_s:     .string          "ZS"
                        .size            n103_assign_bx, .-n103_assign_bx
                        .type            n104_statement_end_bx, @function
n104_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 12
                        add              rsp, 160;                            jmp   n105_lit_integer_α
                        .size            n104_statement_end_bx, .-n104_statement_end_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_396_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_lit_integer_α
.Llit_integer_α_396_0:  .quad            13
                        .size            n105_lit_integer_bx, .-n105_lit_integer_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_call_α
.Llit_integer_α_397_0:  .quad            21
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_call_bx, @function
n107_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            sub              rsp, 16
                        mov              r11, 108
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
.Lcall_α_rkfnzd399:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd399]
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
                        cmp              al, 104;                             jne   .Lcall_α_398_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n108_statement_begin_α
.Lcall_α_398_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_statement_begin_α
n107_call_β:            mov              r11, 108
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n108_statement_begin_α
                        .size            n107_call_bx, .-n107_call_bx
                        .type            n108_statement_begin_bx, @function
n108_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 109
                        mov              r10, 13;                             jmp   n109_var_α
n108_statement_begin_β: mov              r11, 109
                        add              rsp, 48;                             jmp   n119_lit_integer_α
                        .size            n108_statement_begin_bx, .-n108_statement_begin_bx
                        .type            n109_var_bx, @function
n109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 64]             # ZI
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_var_α
                        .size            n109_var_bx, .-n109_var_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_coerce_numeric_α
n110_var_β:             mov              r11, 111
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n108_statement_begin_β
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_coerce_numeric_bx, @function
n111_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 112
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_405_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_405_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_405_0
.Lcoerce_numeric_α_405_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_coerce_numeric_α
.Lcoerce_numeric_α_405_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_coerce_numeric_α
n111_coerce_numeric_β:  mov              r11, 112
                        add              rsp, 16;                             jmp   n110_var_β
                        .size            n111_coerce_numeric_bx, .-n111_coerce_numeric_bx
                        .type            n112_coerce_numeric_bx, @function
n112_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 113
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_407_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_407_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_407_0
.Lcoerce_numeric_α_407_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_cmp_test_α
.Lcoerce_numeric_α_407_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_cmp_test_α
n112_coerce_numeric_β:  mov              r11, 113
                        add              rsp, 16;                             jmp   n111_coerce_numeric_β
                        .size            n112_coerce_numeric_bx, .-n112_coerce_numeric_bx
                        .type            n113_cmp_test_bx, @function
n113_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_cmp_test_α:        sub              rsp, 16
                        mov              r11, 114
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_409_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_409_239
                        add              rsp, 16;                             jmp   n112_coerce_numeric_β
.Lcmp_test_α_409_239:                                                         jmp   n114_var_α
.Lcmp_test_α_409_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_409_240
                        add              rsp, 16;                             jmp   n112_coerce_numeric_β
.Lcmp_test_α_409_240:                                                         jmp   n114_var_α
n113_cmp_test_β:        mov              r11, 114
                        add              rsp, 16;                             jmp   n112_coerce_numeric_β
                        .size            n113_cmp_test_bx, .-n113_cmp_test_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 64]             # ZI
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_lit_integer_α
n114_var_β:             mov              r11, 115
                        add              rsp, 16;                             jmp   n113_cmp_test_β
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_lit_integer_bx, @function
n115_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              r11, 116
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_411_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_binop_α
n115_lit_integer_β:     mov              r11, 116
                        add              rsp, 16;                             jmp   n114_var_β
.Llit_integer_α_411_0:  .quad            1
                        .size            n115_lit_integer_bx, .-n115_lit_integer_bx
                        .type            n116_binop_bx, @function
n116_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:           sub              rsp, 16
                        mov              r11, 117
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_412_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_412_7
.Lbinop_α_412_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_412_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_412_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_412_4
.Lbinop_α_412_3:        movq             xmm0, rsi
.Lbinop_α_412_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_412_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_412_7:                                                              jmp   n117_assign_α
.Lbinop_α_412_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_412_240
                        add              rsp, 16;                             jmp   n115_lit_integer_β
.Lbinop_α_412_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_assign_α
                        .size            n116_binop_bx, .-n116_binop_bx
                        .type            n117_assign_bx, @function
n117_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              r11, 118
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
                        mov              rdi, qword ptr [rip + .Lassign_α_413_0]
                        .section         .rodata
.Lassign_α_413_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_413_1_s]
                        mov              r8, 21
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
                        pop              rax;                                 jmp   n118_statement_end_α
.Lassign_α_413_0:       .quad            .Lassign_α_413_0_s
.Lassign_α_413_0_s:     .string          "ZI"
                        .size            n117_assign_bx, .-n117_assign_bx
                        .type            n118_statement_end_bx, @function
n118_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   mov              r11, 119
                        mov              r10, 13
                        add              rsp, 176;                            jmp   n92_lit_integer_α
                        .size            n118_statement_end_bx, .-n118_statement_end_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#=======================================================================================================================
#         ROMAN_RUN = ZS                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_416_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_lit_integer_α
.Llit_integer_α_416_0:  .quad            14
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_lit_integer_bx, @function
n120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     sub              rsp, 16
                        mov              r11, 121
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_417_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_call_α
.Llit_integer_α_417_0:  .quad            22
                        .size            n120_lit_integer_bx, .-n120_lit_integer_bx
                        .type            n121_call_bx, @function
n121_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:            sub              rsp, 16
                        mov              r11, 122
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
.Lcall_α_rkfnzd419:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd419]
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
                        cmp              al, 104;                             jne   .Lcall_α_418_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n122_statement_begin_α
.Lcall_α_418_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_statement_begin_α
n121_call_β:            mov              r11, 122
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n122_statement_begin_α
                        .size            n121_call_bx, .-n121_call_bx
                        .type            n122_statement_begin_bx, @function
n122_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 123
                        mov              r10, 14;                             jmp   n123_var_α
n122_statement_begin_β: mov              r11, 123
                        add              rsp, 48;                             jmp   RETURN
                        .size            n122_statement_begin_bx, .-n122_statement_begin_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 80]             # ZS
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_assign_bx, @function
n124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ROMAN_RUN
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
                        mov              rdi, qword ptr [rip + .Lassign_α_423_0]
                        .section         .rodata
.Lassign_α_423_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_423_1_s]
                        mov              r8, 22
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
                        pop              rax;                                 jmp   n125_statement_end_α
.Lassign_α_423_0:       .quad            .Lassign_α_423_0_s
.Lassign_α_423_0_s:     .string          "ROMAN_RUN"
                        .size            n124_assign_bx, .-n124_assign_bx
                        .type            n125_statement_end_bx, @function
n125_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   mov              r11, 126
                        mov              r10, 14
                        add              rsp, 64;                             jmp   RETURN
                        .size            n125_statement_end_bx, .-n125_statement_end_bx
                        .type            n126_statement_begin_bx, @function
n126_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α: mov              r11, 127
                        mov              r10, 15;                             jmp   n127_statement_end_α
n126_statement_begin_β: mov              r11, 127
                        add              rsp, 48;                             jmp   n128_lit_integer_α
                        .size            n126_statement_begin_bx, .-n126_statement_begin_bx
                        .type            n127_statement_end_bx, @function
n127_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 128
                        mov              r10, 15
                        add              rsp, 48;                             jmp   n128_lit_integer_α
                        .size            n127_statement_end_bx, .-n127_statement_end_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '1776 -> ' ROMAN(1776)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n128_lit_integer_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_lit_integer_α
.Llit_integer_α_430_0:  .quad            16
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_call_α
.Llit_integer_α_431_0:  .quad            25
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
                        add              rsp, -16;                            jmp   n131_statement_begin_α
.Lcall_α_432_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_statement_begin_α
n130_call_β:            mov              r11, 131
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n131_statement_begin_α
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 132
                        mov              r10, 16;                             jmp   n132_lit_string_α
n131_statement_begin_β: mov              r11, 132
                        add              rsp, 48;                             jmp   n138_lit_integer_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_lit_string_bx, @function
n132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_436_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_lit_integer_α
.Llit_string_α_436_0:   .quad            .Llit_string_α_436_0_s
.Llit_string_α_436_0_s: .string          "1776 -> "
                        .size            n132_lit_string_bx, .-n132_lit_string_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_437_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_α
n133_lit_integer_β:     mov              r11, 134
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Llit_integer_α_437_0:  .quad            1776
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        mov              r11, 135
                        lea              rcx, [rip + .Lcall_α_sig439z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig439z:       .quad            1
                        .quad            .Lcall_α_439_2
                        .quad            .Lcall_α_439_2
                        .quad            16
.Lcall_α_439_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_439_29
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
.Lcall_α_439_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_439_240
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lcall_α_439_240:                                                             jmp   n135_binop_α
n134_call_β:            mov              r11, 135;                            jmp   n133_lit_integer_β
.Lcall_β_439_0:         .quad            .Lcall_β_439_0_s
.Lcall_β_439_0_s:       .string          "ROMAN"
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_binop_bx, @function
n135_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:           sub              rsp, 16
                        mov              r11, 136
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_assign_α
                        .size            n135_binop_bx, .-n135_binop_bx
                        .type            n136_assign_bx, @function
n136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              r11, 137
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
                        mov              rdi, qword ptr [rip + .Lassign_α_441_0]
                        .section         .rodata
.Lassign_α_441_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_441_1_s]
                        mov              r8, 25
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_441_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_statement_end_α
.Lassign_α_441_0:       .quad            .Lassign_α_441_0_s
.Lassign_α_441_0_s:     .string          "OUTPUT"
                        .size            n136_assign_bx, .-n136_assign_bx
                        .type            n137_statement_end_bx, @function
n137_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   mov              r11, 138
                        mov              r10, 16
                        add              rsp, 112;                            jmp   n138_lit_integer_α
                        .size            n137_statement_end_bx, .-n137_statement_end_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '2026 -> ' ROMAN(2026)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n138_lit_integer_α:     sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_lit_integer_α
.Llit_integer_α_444_0:  .quad            17
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_445_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_call_α
.Llit_integer_α_445_0:  .quad            26
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_call_bx, @function
n140_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            sub              rsp, 16
                        mov              r11, 141
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
.Lcall_α_rkfnzd447:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd447]
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
                        cmp              al, 104;                             jne   .Lcall_α_446_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n141_statement_begin_α
.Lcall_α_446_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_statement_begin_α
n140_call_β:            mov              r11, 141
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n141_statement_begin_α
                        .size            n140_call_bx, .-n140_call_bx
                        .type            n141_statement_begin_bx, @function
n141_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α: mov              r11, 142
                        mov              r10, 17;                             jmp   n142_lit_string_α
n141_statement_begin_β: mov              r11, 142
                        add              rsp, 48;                             jmp   n148_lit_integer_α
                        .size            n141_statement_begin_bx, .-n141_statement_begin_bx
                        .type            n142_lit_string_bx, @function
n142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_lit_integer_α
.Llit_string_α_450_0:   .quad            .Llit_string_α_450_0_s
.Llit_string_α_450_0_s: .string          "2026 -> "
                        .size            n142_lit_string_bx, .-n142_lit_string_bx
                        .type            n143_lit_integer_bx, @function
n143_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     sub              rsp, 16
                        mov              r11, 144
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_451_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_call_α
n143_lit_integer_β:     mov              r11, 144
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
.Llit_integer_α_451_0:  .quad            2026
                        .size            n143_lit_integer_bx, .-n143_lit_integer_bx
                        .type            n144_call_bx, @function
n144_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        mov              r11, 145
                        lea              rcx, [rip + .Lcall_α_sig453z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig453z:       .quad            1
                        .quad            .Lcall_α_453_2
                        .quad            .Lcall_α_453_2
                        .quad            16
.Lcall_α_453_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_453_29
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
.Lcall_α_453_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_453_240
                        add              rsp, 16;                             jmp   n143_lit_integer_β
.Lcall_α_453_240:                                                             jmp   n145_binop_α
n144_call_β:            mov              r11, 145;                            jmp   n143_lit_integer_β
.Lcall_β_453_0:         .quad            .Lcall_β_453_0_s
.Lcall_β_453_0_s:       .string          "ROMAN"
                        .size            n144_call_bx, .-n144_call_bx
                        .type            n145_binop_bx, @function
n145_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           sub              rsp, 16
                        mov              r11, 146
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_assign_α
                        .size            n145_binop_bx, .-n145_binop_bx
                        .type            n146_assign_bx, @function
n146_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 147
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
                        mov              rdi, qword ptr [rip + .Lassign_α_455_0]
                        .section         .rodata
.Lassign_α_455_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_455_1_s]
                        mov              r8, 26
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
                        mov              rdi, qword ptr [rip + .Lassign_α_455_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_statement_end_α
.Lassign_α_455_0:       .quad            .Lassign_α_455_0_s
.Lassign_α_455_0_s:     .string          "OUTPUT"
                        .size            n146_assign_bx, .-n146_assign_bx
                        .type            n147_statement_end_bx, @function
n147_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 148
                        mov              r10, 17
                        add              rsp, 112;                            jmp   n148_lit_integer_α
                        .size            n147_statement_end_bx, .-n147_statement_end_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '   4 -> ' ROMAN(4)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n148_lit_integer_α:     sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_458_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_lit_integer_α
.Llit_integer_α_458_0:  .quad            18
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_lit_integer_bx, @function
n149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_459_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_call_α
.Llit_integer_α_459_0:  .quad            27
                        .size            n149_lit_integer_bx, .-n149_lit_integer_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            sub              rsp, 16
                        mov              r11, 151
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
.Lcall_α_rkfnzd461:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd461]
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
                        cmp              al, 104;                             jne   .Lcall_α_460_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n151_statement_begin_α
.Lcall_α_460_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_statement_begin_α
n150_call_β:            mov              r11, 151
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n151_statement_begin_α
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 152
                        mov              r10, 18;                             jmp   n152_lit_string_α
n151_statement_begin_β: mov              r11, 152
                        add              rsp, 48;                             jmp   n158_lit_integer_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_lit_string_bx, @function
n152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_464_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_lit_integer_α
.Llit_string_α_464_0:   .quad            .Llit_string_α_464_0_s
.Llit_string_α_464_0_s: .string          "   4 -> "
                        .size            n152_lit_string_bx, .-n152_lit_string_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_465_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_call_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
.Llit_integer_α_465_0:  .quad            4
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            sub              rsp, 16
                        mov              r11, 155
                        lea              rcx, [rip + .Lcall_α_sig467z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig467z:       .quad            1
                        .quad            .Lcall_α_467_2
                        .quad            .Lcall_α_467_2
                        .quad            16
.Lcall_α_467_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_467_29
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
.Lcall_α_467_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_467_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lcall_α_467_240:                                                             jmp   n155_binop_α
n154_call_β:            mov              r11, 155;                            jmp   n153_lit_integer_β
.Lcall_β_467_0:         .quad            .Lcall_β_467_0_s
.Lcall_β_467_0_s:       .string          "ROMAN"
                        .size            n154_call_bx, .-n154_call_bx
                        .type            n155_binop_bx, @function
n155_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              r11, 156
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_assign_α
                        .size            n155_binop_bx, .-n155_binop_bx
                        .type            n156_assign_bx, @function
n156_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              r11, 157
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
                        mov              rdi, qword ptr [rip + .Lassign_α_469_0]
                        .section         .rodata
.Lassign_α_469_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_469_1_s]
                        mov              r8, 27
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
                        mov              rdi, qword ptr [rip + .Lassign_α_469_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_statement_end_α
.Lassign_α_469_0:       .quad            .Lassign_α_469_0_s
.Lassign_α_469_0_s:     .string          "OUTPUT"
                        .size            n156_assign_bx, .-n156_assign_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 158
                        mov              r10, 18
                        add              rsp, 112;                            jmp   n158_lit_integer_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_lit_integer_bx, @function
n158_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '  40 -> ' ROMAN(40)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_lit_integer_α
.Llit_integer_α_472_0:  .quad            19
                        .size            n158_lit_integer_bx, .-n158_lit_integer_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_call_α
.Llit_integer_α_473_0:  .quad            28
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_call_bx, @function
n160_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        mov              r11, 161
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
.Lcall_α_rkfnzd475:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd475]
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
                        cmp              al, 104;                             jne   .Lcall_α_474_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n161_statement_begin_α
.Lcall_α_474_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_statement_begin_α
n160_call_β:            mov              r11, 161
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n161_statement_begin_α
                        .size            n160_call_bx, .-n160_call_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α: mov              r11, 162
                        mov              r10, 19;                             jmp   n162_lit_string_α
n161_statement_begin_β: mov              r11, 162
                        add              rsp, 48;                             jmp   n168_lit_integer_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_lit_string_bx, @function
n162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_lit_integer_α
.Llit_string_α_478_0:   .quad            .Llit_string_α_478_0_s
.Llit_string_α_478_0_s: .string          "  40 -> "
                        .size            n162_lit_string_bx, .-n162_lit_string_bx
                        .type            n163_lit_integer_bx, @function
n163_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_call_α
n163_lit_integer_β:     mov              r11, 164
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n161_statement_begin_β
.Llit_integer_α_479_0:  .quad            40
                        .size            n163_lit_integer_bx, .-n163_lit_integer_bx
                        .type            n164_call_bx, @function
n164_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            sub              rsp, 16
                        mov              r11, 165
                        lea              rcx, [rip + .Lcall_α_sig481z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig481z:       .quad            1
                        .quad            .Lcall_α_481_2
                        .quad            .Lcall_α_481_2
                        .quad            16
.Lcall_α_481_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_481_29
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
.Lcall_α_481_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_481_240
                        add              rsp, 16;                             jmp   n163_lit_integer_β
.Lcall_α_481_240:                                                             jmp   n165_binop_α
n164_call_β:            mov              r11, 165;                            jmp   n163_lit_integer_β
.Lcall_β_481_0:         .quad            .Lcall_β_481_0_s
.Lcall_β_481_0_s:       .string          "ROMAN"
                        .size            n164_call_bx, .-n164_call_bx
                        .type            n165_binop_bx, @function
n165_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_binop_α:           sub              rsp, 16
                        mov              r11, 166
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n166_assign_α
                        .size            n165_binop_bx, .-n165_binop_bx
                        .type            n166_assign_bx, @function
n166_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              r11, 167
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
                        mov              rdi, qword ptr [rip + .Lassign_α_483_0]
                        .section         .rodata
.Lassign_α_483_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_483_1_s]
                        mov              r8, 28
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
                        mov              rdi, qword ptr [rip + .Lassign_α_483_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_statement_end_α
.Lassign_α_483_0:       .quad            .Lassign_α_483_0_s
.Lassign_α_483_0_s:     .string          "OUTPUT"
                        .size            n166_assign_bx, .-n166_assign_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 168
                        mov              r10, 19
                        add              rsp, 112;                            jmp   n168_lit_integer_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_lit_integer_bx, @function
n168_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '3999 -> ' ROMAN(3999)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_lit_integer_α
.Llit_integer_α_486_0:  .quad            20
                        .size            n168_lit_integer_bx, .-n168_lit_integer_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              r11, 170
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_487_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_α
.Llit_integer_α_487_0:  .quad            29
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_call_bx, @function
n170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            sub              rsp, 16
                        mov              r11, 171
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
.Lcall_α_rkfnzd489:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd489]
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
                        cmp              al, 104;                             jne   .Lcall_α_488_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n171_statement_begin_α
.Lcall_α_488_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_statement_begin_α
n170_call_β:            mov              r11, 171
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n171_statement_begin_α
                        .size            n170_call_bx, .-n170_call_bx
                        .type            n171_statement_begin_bx, @function
n171_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 172
                        mov              r10, 20;                             jmp   n172_lit_string_α
n171_statement_begin_β: mov              r11, 172
                        add              rsp, 48;                             jmp   n178_lit_integer_α
                        .size            n171_statement_begin_bx, .-n171_statement_begin_bx
                        .type            n172_lit_string_bx, @function
n172_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_492_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_lit_integer_α
.Llit_string_α_492_0:   .quad            .Llit_string_α_492_0_s
.Llit_string_α_492_0_s: .string          "3999 -> "
                        .size            n172_lit_string_bx, .-n172_lit_string_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_493_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_call_α
n173_lit_integer_β:     mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
.Llit_integer_α_493_0:  .quad            3999
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            sub              rsp, 16
                        mov              r11, 175
                        lea              rcx, [rip + .Lcall_α_sig495z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig495z:       .quad            1
                        .quad            .Lcall_α_495_2
                        .quad            .Lcall_α_495_2
                        .quad            16
.Lcall_α_495_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_495_29
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
.Lcall_α_495_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_495_240
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lcall_α_495_240:                                                             jmp   n175_binop_α
n174_call_β:            mov              r11, 175;                            jmp   n173_lit_integer_β
.Lcall_β_495_0:         .quad            .Lcall_β_495_0_s
.Lcall_β_495_0_s:       .string          "ROMAN"
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_binop_bx, @function
n175_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           sub              rsp, 16
                        mov              r11, 176
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_assign_α
                        .size            n175_binop_bx, .-n175_binop_bx
                        .type            n176_assign_bx, @function
n176_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              r11, 177
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
                        mov              rdi, qword ptr [rip + .Lassign_α_497_0]
                        .section         .rodata
.Lassign_α_497_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_497_1_s]
                        mov              r8, 29
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
                        mov              rdi, qword ptr [rip + .Lassign_α_497_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_statement_end_α
.Lassign_α_497_0:       .quad            .Lassign_α_497_0_s
.Lassign_α_497_0_s:     .string          "OUTPUT"
                        .size            n176_assign_bx, .-n176_assign_bx
                        .type            n177_statement_end_bx, @function
n177_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        mov              r10, 20
                        add              rsp, 112;                            jmp   n178_lit_integer_α
                        .size            n177_statement_end_bx, .-n177_statement_end_bx
                        .type            n178_lit_integer_bx, @function
n178_lit_integer_bx:
#=======================================================================================================================
#         K = 1001
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n178_lit_integer_α:     sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_500_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_lit_integer_α
.Llit_integer_α_500_0:  .quad            21
                        .size            n178_lit_integer_bx, .-n178_lit_integer_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     sub              rsp, 16
                        mov              r11, 180
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_501_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_call_α
.Llit_integer_α_501_0:  .quad            30
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
.Lcall_α_rkfnzd503:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd503]
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
                        cmp              al, 104;                             jne   .Lcall_α_502_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n181_statement_begin_α
.Lcall_α_502_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_statement_begin_α
n180_call_β:            mov              r11, 181
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n181_statement_begin_α
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_statement_begin_bx, @function
n181_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α: mov              r11, 182
                        mov              r10, 21;                             jmp   n182_lit_integer_α
n181_statement_begin_β: mov              r11, 182
                        add              rsp, 48;                             jmp   n185_lit_integer_α
                        .size            n181_statement_begin_bx, .-n181_statement_begin_bx
                        .type            n182_lit_integer_bx, @function
n182_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 183
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_assign_α
.Llit_integer_α_506_0:  .quad            1001
                        .size            n182_lit_integer_bx, .-n182_lit_integer_bx
                        .type            n183_assign_bx, @function
n183_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # K
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
                        mov              rdi, qword ptr [rip + .Lassign_α_507_0]
                        .section         .rodata
.Lassign_α_507_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_507_1_s]
                        mov              r8, 30
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
                        pop              rax;                                 jmp   n184_statement_end_α
.Lassign_α_507_0:       .quad            .Lassign_α_507_0_s
.Lassign_α_507_0_s:     .string          "K"
                        .size            n183_assign_bx, .-n183_assign_bx
                        .type            n184_statement_end_bx, @function
n184_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 185
                        mov              r10, 21
                        add              rsp, 64;                             jmp   n185_lit_integer_α
                        .size            n184_statement_end_bx, .-n184_statement_end_bx
                        .type            n185_lit_integer_bx, @function
n185_lit_integer_bx:
#=======================================================================================================================
# RTAB    OUTPUT = K ' -> ' ROMAN(K)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n185_lit_integer_α:     sub              rsp, 16
                        mov              r11, 186
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_lit_integer_α
.Llit_integer_α_510_0:  .quad            22
                        .size            n185_lit_integer_bx, .-n185_lit_integer_bx
                        .type            n186_lit_integer_bx, @function
n186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_511_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_call_α
.Llit_integer_α_511_0:  .quad            31
                        .size            n186_lit_integer_bx, .-n186_lit_integer_bx
                        .type            n187_call_bx, @function
n187_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:            sub              rsp, 16
                        mov              r11, 188
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
.Lcall_α_rkfnzd513:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd513]
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
                        cmp              al, 104;                             jne   .Lcall_α_512_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n188_statement_begin_α
.Lcall_α_512_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_statement_begin_α
n187_call_β:            mov              r11, 188
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n188_statement_begin_α
                        .size            n187_call_bx, .-n187_call_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189
                        mov              r10, 22;                             jmp   n189_var_α
n188_statement_begin_β: mov              r11, 189
                        add              rsp, 48;                             jmp   n197_lit_integer_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 190
                        mov              rax, qword ptr [r9 + 96]             # K
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_lit_string_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_lit_string_bx, @function
n190_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_517_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_binop_α
n190_lit_string_β:      mov              r11, 191
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
.Llit_string_α_517_0:   .quad            .Llit_string_α_517_0_s
.Llit_string_α_517_0_s: .string          " -> "
                        .size            n190_lit_string_bx, .-n190_lit_string_bx
                        .type            n191_binop_bx, @function
n191_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:           sub              rsp, 16
                        mov              r11, 192
                        mov              rdi, qword ptr [rsp + 32]            # var
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_var_α
n191_binop_β:           mov              r11, 192
                        add              rsp, 16;                             jmp   n190_lit_string_β
                        .size            n191_binop_bx, .-n191_binop_bx
                        .type            n192_var_bx, @function
n192_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              r11, 193
                        mov              rax, qword ptr [r9 + 96]             # K
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_call_α
n192_var_β:             mov              r11, 193
                        add              rsp, 16;                             jmp   n191_binop_β
                        .size            n192_var_bx, .-n192_var_bx
                        .type            n193_call_bx, @function
n193_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            sub              rsp, 16
                        mov              r11, 194
                        lea              rcx, [rip + .Lcall_α_sig521z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig521z:       .quad            1
                        .quad            .Lcall_α_521_2
                        .quad            .Lcall_α_521_2
                        .quad            16
.Lcall_α_521_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_521_29
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
.Lcall_α_521_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_521_240
                        add              rsp, 16;                             jmp   n192_var_β
.Lcall_α_521_240:                                                             jmp   n194_binop_α
n193_call_β:            mov              r11, 194;                            jmp   n192_var_β
.Lcall_β_521_0:         .quad            .Lcall_β_521_0_s
.Lcall_β_521_0_s:       .string          "ROMAN"
                        .size            n193_call_bx, .-n193_call_bx
                        .type            n194_binop_bx, @function
n194_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_binop_α:           sub              rsp, 16
                        mov              r11, 195
                        mov              rdi, qword ptr [rsp + 48]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_assign_α
                        .size            n194_binop_bx, .-n194_binop_bx
                        .type            n195_assign_bx, @function
n195_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:          mov              r11, 196
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
                        mov              rdi, qword ptr [rip + .Lassign_α_523_0]
                        .section         .rodata
.Lassign_α_523_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_523_1_s]
                        mov              r8, 31
                        mov              r9, 22
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
                        mov              rdi, qword ptr [rip + .Lassign_α_523_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n196_statement_end_α
.Lassign_α_523_0:       .quad            .Lassign_α_523_0_s
.Lassign_α_523_0_s:     .string          "OUTPUT"
                        .size            n195_assign_bx, .-n195_assign_bx
                        .type            n196_statement_end_bx, @function
n196_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:   mov              r11, 197
                        mov              r10, 22
                        add              rsp, 144;                            jmp   n197_lit_integer_α
                        .size            n196_statement_end_bx, .-n196_statement_end_bx
                        .type            n197_lit_integer_bx, @function
n197_lit_integer_bx:
#=======================================================================================================================
#         K = LT(K, 1010) K + 1                           :S(RTAB)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n197_lit_integer_α:     sub              rsp, 16
                        mov              r11, 198
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_lit_integer_α
.Llit_integer_α_526_0:  .quad            23
                        .size            n197_lit_integer_bx, .-n197_lit_integer_bx
                        .type            n198_lit_integer_bx, @function
n198_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:     sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_call_α
.Llit_integer_α_527_0:  .quad            32
                        .size            n198_lit_integer_bx, .-n198_lit_integer_bx
                        .type            n199_call_bx, @function
n199_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:            sub              rsp, 16
                        mov              r11, 200
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
                        add              rsp, -16;                            jmp   n200_statement_begin_α
.Lcall_α_528_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_statement_begin_α
n199_call_β:            mov              r11, 200
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n200_statement_begin_α
                        .size            n199_call_bx, .-n199_call_bx
                        .type            n200_statement_begin_bx, @function
n200_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 201
                        mov              r10, 23;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 201
                        add              rsp, 48;                             jmp   n211_lit_integer_α
                        .size            n200_statement_begin_bx, .-n200_statement_begin_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 96]             # K
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_lit_integer_α
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_lit_integer_bx, @function
n202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     sub              rsp, 16
                        mov              r11, 203
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_coerce_numeric_α
n202_lit_integer_β:     mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
.Llit_integer_α_533_0:  .quad            1010
                        .size            n202_lit_integer_bx, .-n202_lit_integer_bx
                        .type            n203_coerce_numeric_bx, @function
n203_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 204
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_535_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_535_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_535_0
.Lcoerce_numeric_α_535_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
.Lcoerce_numeric_α_535_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_coerce_numeric_α
n203_coerce_numeric_β:  mov              r11, 204
                        add              rsp, 16;                             jmp   n202_lit_integer_β
                        .size            n203_coerce_numeric_bx, .-n203_coerce_numeric_bx
                        .type            n204_coerce_numeric_bx, @function
n204_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 205
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_537_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_537_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_537_0
.Lcoerce_numeric_α_537_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_cmp_test_α
.Lcoerce_numeric_α_537_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_cmp_test_α
n204_coerce_numeric_β:  mov              r11, 205
                        add              rsp, 16;                             jmp   n203_coerce_numeric_β
                        .size            n204_coerce_numeric_bx, .-n204_coerce_numeric_bx
                        .type            n205_cmp_test_bx, @function
n205_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_cmp_test_α:        sub              rsp, 16
                        mov              r11, 206
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_539_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_539_239
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lcmp_test_α_539_239:                                                         jmp   n206_var_α
.Lcmp_test_α_539_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_539_240
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lcmp_test_α_539_240:                                                         jmp   n206_var_α
n205_cmp_test_β:        mov              r11, 206
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
                        .size            n205_cmp_test_bx, .-n205_cmp_test_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 96]             # K
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_lit_integer_α
n206_var_β:             mov              r11, 207
                        add              rsp, 16;                             jmp   n205_cmp_test_β
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_lit_integer_bx, @function
n207_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:     sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_541_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_binop_α
n207_lit_integer_β:     mov              r11, 208
                        add              rsp, 16;                             jmp   n206_var_β
.Llit_integer_α_541_0:  .quad            1
                        .size            n207_lit_integer_bx, .-n207_lit_integer_bx
                        .type            n208_binop_bx, @function
n208_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_binop_α:           sub              rsp, 16
                        mov              r11, 209
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_542_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_542_7
.Lbinop_α_542_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_542_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_542_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_542_4
.Lbinop_α_542_3:        movq             xmm0, rsi
.Lbinop_α_542_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_542_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_542_7:                                                              jmp   n209_assign_α
.Lbinop_α_542_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_542_240
                        add              rsp, 16;                             jmp   n207_lit_integer_β
.Lbinop_α_542_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_assign_α
                        .size            n208_binop_bx, .-n208_binop_bx
                        .type            n209_assign_bx, @function
n209_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # K
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
                        mov              rdi, qword ptr [rip + .Lassign_α_543_0]
                        .section         .rodata
.Lassign_α_543_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_543_1_s]
                        mov              r8, 32
                        mov              r9, 23
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
                        pop              rax;                                 jmp   n210_statement_end_α
.Lassign_α_543_0:       .quad            .Lassign_α_543_0_s
.Lassign_α_543_0_s:     .string          "K"
                        .size            n209_assign_bx, .-n209_assign_bx
                        .type            n210_statement_end_bx, @function
n210_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_end_α:   mov              r11, 211
                        mov              r10, 23
                        add              rsp, 176;                            jmp   n185_lit_integer_α
                        .size            n210_statement_end_bx, .-n210_statement_end_bx
                        .type            n211_lit_integer_bx, @function
n211_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'total numeral length for 1001..1200 = ' ROMAN_RUN(200)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n211_lit_integer_α:     sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_546_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_lit_integer_α
.Llit_integer_α_546_0:  .quad            24
                        .size            n211_lit_integer_bx, .-n211_lit_integer_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_547_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_call_α
.Llit_integer_α_547_0:  .quad            33
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            sub              rsp, 16
                        mov              r11, 214
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
.Lcall_α_rkfnzd549:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd549]
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
                        cmp              al, 104;                             jne   .Lcall_α_548_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n214_statement_begin_α
.Lcall_α_548_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_statement_begin_α
n213_call_β:            mov              r11, 214
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n214_statement_begin_α
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_statement_begin_bx, @function
n214_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 215
                        mov              r10, 24;                             jmp   n215_lit_string_α
n214_statement_begin_β: mov              r11, 215
                        add              rsp, -64;                            jmp   n221_lit_integer_α
                        .size            n214_statement_begin_bx, .-n214_statement_begin_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Llit_string_α_552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_lit_integer_α
.Llit_string_α_552_0:   .quad            .Llit_string_α_552_0_s
.Llit_string_α_552_0_s: .string          "total numeral length for 1001..1200 = "
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_lit_integer_bx, @function
n216_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_call_α
n216_lit_integer_β:     mov              r11, 217
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n214_statement_begin_β
.Llit_integer_α_553_0:  .quad            200
                        .size            n216_lit_integer_bx, .-n216_lit_integer_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        mov              r11, 218
                        lea              rcx, [rip + .Lcall_α_sig555z]
                        lea              rax, [rip + ROMAN_RUN_α];            jmp   rax
.Lcall_α_sig555z:       .quad            1
                        .quad            .Lcall_α_555_2
                        .quad            .Lcall_α_555_2
                        .quad            16
.Lcall_α_555_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_555_29
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
.Lcall_α_555_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_555_240
                        add              rsp, 16;                             jmp   n216_lit_integer_β
.Lcall_α_555_240:                                                             jmp   n218_binop_α
n217_call_β:            mov              r11, 218;                            jmp   n216_lit_integer_β
.Lcall_β_555_0:         .quad            .Lcall_β_555_0_s
.Lcall_β_555_0_s:       .string          "ROMAN_RUN"
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_binop_bx, @function
n218_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_binop_α:           sub              rsp, 16
                        mov              r11, 219
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_assign_α
                        .size            n218_binop_bx, .-n218_binop_bx
                        .type            n219_assign_bx, @function
n219_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_α:          mov              r11, 220
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
                        mov              rdi, qword ptr [rip + .Lassign_α_557_0]
                        .section         .rodata
.Lassign_α_557_1_s:     .string          "roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_557_1_s]
                        mov              r8, 33
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_557_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n220_statement_end_α
.Lassign_α_557_0:       .quad            .Lassign_α_557_0_s
.Lassign_α_557_0_s:     .string          "OUTPUT"
                        .size            n219_assign_bx, .-n219_assign_bx
                        .type            n220_statement_end_bx, @function
n220_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_end_α:   mov              r11, 221
                        mov              r10, 24;                             jmp   n221_lit_integer_α
                        .size            n220_statement_end_bx, .-n220_statement_end_bx
                        .type            n221_lit_integer_bx, @function
n221_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_560_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_lit_integer_α
.Llit_integer_α_560_0:  .quad            25
                        .size            n221_lit_integer_bx, .-n221_lit_integer_bx
                        .type            n222_lit_integer_bx, @function
n222_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     sub              rsp, 16
                        mov              r11, 223
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_561_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n223_call_α
.Llit_integer_α_561_0:  .quad            34
                        .size            n222_lit_integer_bx, .-n222_lit_integer_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
                        mov              r11, 224
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
.Lcall_α_rkfnzd563:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd563]
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
                        cmp              al, 104;                             jne   .Lcall_α_562_240
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
.Lcall_α_562_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160;                            jmp   main_γ
n223_call_β:            mov              r11, 224
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_goto_bx, @function
n224_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_goto_α:            mov              r11, 225;                            jmp   LBL__ROMAN
n224_goto_β:            mov              r11, 225;                            jmp   main_ω
                        .size            n224_goto_bx, .-n224_goto_bx
                        .type            n225_lit_integer_bx, @function
n225_lit_integer_bx:
#=======================================================================================================================
# ROMAN   N ? RPOS(1) LEN(1) . T =                        :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
LBL__ROMAN:             sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__ROMAN_α_565_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_lit_integer_α
.LLBL__ROMAN_α_565_0:   .quad            5
                        .size            n225_lit_integer_bx, .-n225_lit_integer_bx
                        .type            n226_lit_integer_bx, @function
n226_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     sub              rsp, 16
                        mov              r11, 227
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_566_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_call_α
.Llit_integer_α_566_0:  .quad            13
                        .size            n226_lit_integer_bx, .-n226_lit_integer_bx
                        .type            n227_call_bx, @function
n227_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            sub              rsp, 16
                        mov              r11, 228
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
.Lcall_α_rkfnzd568:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd568]
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
                        cmp              al, 104;                             jne   .Lcall_α_567_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
.Lcall_α_567_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_statement_begin_α
n227_call_β:            mov              r11, 228
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
                        .size            n227_call_bx, .-n227_call_bx
                        .type            n228_goto_bx, @function
n228_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_goto_α:            mov              r11, 229;                            jmp   n29_lit_integer_α
n228_goto_β:            mov              r11, 229;                            jmp   main_ω
                        .size            n228_goto_bx, .-n228_goto_bx
                        .type            n229_goto_bx, @function
n229_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_goto_α:            mov              r11, 230;                            jmp   LBL__ROMAN_RUN
n229_goto_β:            mov              r11, 230;                            jmp   main_ω
                        .size            n229_goto_bx, .-n229_goto_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#=======================================================================================================================
# ROMAN_RUN  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
LBL__ROMAN_RUN:         sub              rsp, 16
                        mov              r11, 231
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__ROMAN_RUN_α_571_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_lit_integer_α
.LLBL__ROMAN_RUN_α_571_0:
                        .quad            10
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_lit_integer_bx, @function
n231_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_call_α
.Llit_integer_α_572_0:  .quad            18
                        .size            n231_lit_integer_bx, .-n231_lit_integer_bx
                        .type            n232_call_bx, @function
n232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
                        mov              r11, 233
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
.Lcall_α_rkfnzd574:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd574]
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
                        cmp              al, 104;                             jne   .Lcall_α_573_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n81_statement_begin_α
.Lcall_α_573_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_statement_begin_α
n232_call_β:            mov              r11, 233
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n81_statement_begin_α
                        .size            n232_call_bx, .-n232_call_bx
                        .type            n233_goto_bx, @function
n233_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_goto_α:            mov              r11, 234;                            jmp   n92_lit_integer_α
n233_goto_β:            mov              r11, 234;                            jmp   main_ω
                        .size            n233_goto_bx, .-n233_goto_bx
                        .type            n234_goto_bx, @function
n234_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:            mov              r11, 235;                            jmp   n78_lit_integer_α
n234_goto_β:            mov              r11, 235;                            jmp   main_ω
                        .size            n234_goto_bx, .-n234_goto_bx
                        .type            n235_goto_bx, @function
n235_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:            mov              r11, 236;                            jmp   n185_lit_integer_α
n235_goto_β:            mov              r11, 236;                            jmp   main_ω
                        .size            n235_goto_bx, .-n235_goto_bx
                        .type            n236_define_bx, @function
n236_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 237
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
                        .size            n236_define_bx, .-n236_define_bx
                        .type            n237_define_bx, @function
n237_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 238
                        mov              edi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n237_define_bx, .-n237_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ROMAN"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__ROMAN
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4416
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__ROMAN_RUN"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__ROMAN_RUN
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4416
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala2:               .string          "ROMAN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ROMAN_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + ROMAN_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "ROMAN_RUN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ROMAN_RUN_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + ROMAN_RUN_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "T"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
