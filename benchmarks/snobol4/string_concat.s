                        .intel_syntax    noprefix
                        .text
                        .file            1 "string_concat.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
                        call             rt_label_table_install@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
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
.Lgvan0:                .string          "STRING_CONCAT"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "S"
.Lgvan3:                .string          "ZI"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "STRING_CONCAT"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "STRING_CONCAT_END"
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
                        .loc             1 6 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_106_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_107_0:  .quad            6
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_108_0:   .quad            .Llit_string_α_108_0_s
.Llit_string_α_108_0_s: .string          "string_concat.sno"
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
.Lcall_α_rkfnzd110:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd110]
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
                        cmp              al, 104;                             jne   .Lcall_α_109_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_109_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_113_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_114_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_114_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_114_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_114_0:
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
                        .loc             1 7 0
n8_lit_integer_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_117_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_117_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_118_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_118_0:  .quad            7
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
.Lcall_α_rkfnzd120:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd120]
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
                        cmp              al, 104;                             jne   .Lcall_α_119_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_119_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_123_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_124_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_124_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_124_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_124_0:
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
                        .loc             1 8 0
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_127_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_128_0:  .quad            8
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
.Lcall_α_rkfnzd130:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd130]
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
                        cmp              al, 104;                             jne   .Lcall_α_129_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_129_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_133_0:  .quad            1
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
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_135_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_135_0:
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
#         DEFINE('STRING_CONCAT(N)')                      :(STRING_CONCAT_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
.Llit_integer_α_138_0:  .quad            4
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Llit_integer_α_139_0:  .quad            9
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
                        add              rsp, -16;                            jmp   n26_statement_begin_α
.Lcall_α_140_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_145_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_145_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + STRING_CONCAT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_145_0]
                        lea              rsi, [rip + STRING_CONCAT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__STRING_CONCAT]
                        mov              rcx, qword ptr [rip + body_cell$STRING_CONCAT@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n28_statement_end_α
n27_define_β:           mov              r11, 28;                             jmp   n26_statement_begin_β
.Ldefine_α_145_0:       .quad            .Ldefine_α_145_0_s
.Ldefine_α_145_0_s:     .string          "STRING_CONCAT"
.Ldefine_α_145_1:       .quad            .Ldefine_α_145_1_s
.Ldefine_α_145_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_146_245
#-----------------------------------------------------------------------------------------------------------------------
STRING_CONCAT_α:        sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # STRING_CONCAT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_146_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_146_41
.Ldefine_α_146_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_146_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_146_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_146_230
.Ldefine_α_146_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_146_232]
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
.Ldefine_α_146_230:                                                           jmp   .Ldefine_α_146_231
.Ldefine_α_146_232:     .quad            .Ldefine_α_146_232_s
.Ldefine_α_146_232_s:   .string          "STRING_CONCAT"
.Ldefine_α_146_231:     lea              rcx, [rip + STRING_CONCAT_γ]
                        lea              rax, [rip + STRING_CONCAT_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$STRING_CONCAT:
                        .quad            LBL__STRING_CONCAT
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$STRING_CONCAT@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
STRING_CONCAT_γ:        mov              rdi, qword ptr [r9 + 0]              # STRING_CONCAT
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_146_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_146_235
.Ldefine_α_146_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_146_237]
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
.Ldefine_α_146_235:                                                           jmp   .Ldefine_α_146_236
.Ldefine_α_146_237:     .quad            .Ldefine_α_146_237_s
.Ldefine_α_146_237_s:   .string          "STRING_CONCAT"
.Ldefine_α_146_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_146_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_146_110
.Ldefine_α_146_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_146_110:     push             rcx
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
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
STRING_CONCAT_ω:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # STRING_CONCAT
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_146_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_146_180
.Ldefine_α_146_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_146_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_146_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_146_249
.Ldefine_α_146_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_146_237]
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
.Ldefine_α_146_249:     push             rcx
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
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_146_245:
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
# STRING_CONCAT_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Llit_integer_α_149_0:  .quad            10
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_150_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_150_0:  .quad            15
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
.Lcall_α_rkfnzd152:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd152]
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
                        cmp              al, 104;                             jne   .Lcall_α_151_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n74_statement_begin_α
.Lcall_α_151_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_statement_begin_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n74_statement_begin_α
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 5;                              jmp   n33_lit_string_α
n32_statement_begin_β:  mov              r11, 33
                        add              rsp, 48;                             jmp   n36_lit_integer_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Llit_string_α_155_0:   .quad            .Llit_string_α_155_0_s
.Llit_string_α_155_0_s: .string          ""
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # S
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
                        mov              rdi, qword ptr [rip + .Lassign_α_156_0]
                        .section         .rodata
.Lassign_α_156_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_156_1_s]
                        mov              r8, 15
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
.Lassign_α_156_0:       .quad            .Lassign_α_156_0_s
.Lassign_α_156_0_s:     .string          "S"
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
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
.Llit_integer_α_159_0:  .quad            6
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Llit_integer_α_160_0:  .quad            11
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
.Lcall_α_rkfnzd162:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd162]
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
                        cmp              al, 104;                             jne   .Lcall_α_161_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_statement_begin_α
.Lcall_α_161_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Llit_integer_α_165_0:  .quad            1
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
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
                        mov              rdi, qword ptr [rip + .Lassign_α_166_0]
                        .section         .rodata
.Lassign_α_166_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_166_1_s]
                        mov              r8, 11
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
.Lassign_α_166_0:       .quad            .Lassign_α_166_0_s
.Lassign_α_166_0_s:     .string          "ZI"
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
# ZBL     S = S 'x'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_lit_integer_α
.Llit_integer_α_169_0:  .quad            7
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
.Llit_integer_α_170_0:  .quad            12
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
.Lcall_α_rkfnzd172:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd172]
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
                        cmp              al, 104;                             jne   .Lcall_α_171_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
.Lcall_α_171_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_statement_begin_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 7;                              jmp   n47_var_α
n46_statement_begin_β:  mov              r11, 47
                        add              rsp, 48;                             jmp   n52_lit_integer_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 32]             # S
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_lit_string_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_binop_α
n48_lit_string_β:       mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "x"
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_binop_bx, @function
n49_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            sub              rsp, 16
                        mov              r11, 50
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_assign_α
                        .size            n49_binop_bx, .-n49_binop_bx
                        .type            n50_assign_bx, @function
n50_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # S
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
                        mov              rdi, qword ptr [rip + .Lassign_α_178_0]
                        .section         .rodata
.Lassign_α_178_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_178_1_s]
                        mov              r8, 12
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
                        pop              rax;                                 jmp   n51_statement_end_α
.Lassign_α_178_0:       .quad            .Lassign_α_178_0_s
.Lassign_α_178_0_s:     .string          "S"
                        .size            n50_assign_bx, .-n50_assign_bx
                        .type            n51_statement_end_bx, @function
n51_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        mov              r10, 7
                        add              rsp, 96;                             jmp   n52_lit_integer_α
                        .size            n51_statement_end_bx, .-n51_statement_end_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_lit_integer_α
.Llit_integer_α_181_0:  .quad            8
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_α
.Llit_integer_α_182_0:  .quad            13
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
                        mov              r11, 55
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
.Lcall_α_rkfnzd184:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd184]
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
                        cmp              al, 104;                             jne   .Lcall_α_183_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n55_statement_begin_α
.Lcall_α_183_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_statement_begin_α
n54_call_β:             mov              r11, 55
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n55_statement_begin_α
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 56
                        mov              r10, 8;                              jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 56
                        add              rsp, 48;                             jmp   n66_lit_integer_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_var_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_coerce_numeric_α
n57_var_β:              mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_coerce_numeric_bx, @function
n58_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 59
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_190_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_190_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_190_0
.Lcoerce_numeric_α_190_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_coerce_numeric_α
.Lcoerce_numeric_α_190_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_coerce_numeric_α
n58_coerce_numeric_β:   mov              r11, 59
                        add              rsp, 16;                             jmp   n57_var_β
                        .size            n58_coerce_numeric_bx, .-n58_coerce_numeric_bx
                        .type            n59_coerce_numeric_bx, @function
n59_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 60
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_192_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_192_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_192_0
.Lcoerce_numeric_α_192_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_cmp_test_α
.Lcoerce_numeric_α_192_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_cmp_test_α
n59_coerce_numeric_β:   mov              r11, 60
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
                        .size            n59_coerce_numeric_bx, .-n59_coerce_numeric_bx
                        .type            n60_cmp_test_bx, @function
n60_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_cmp_test_α:         sub              rsp, 16
                        mov              r11, 61
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_194_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_194_239
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
.Lcmp_test_α_194_239:                                                         jmp   n61_var_α
.Lcmp_test_α_194_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_194_240
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
.Lcmp_test_α_194_240:                                                         jmp   n61_var_α
n60_cmp_test_β:         mov              r11, 61
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
                        .size            n60_cmp_test_bx, .-n60_cmp_test_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_lit_integer_α
n61_var_β:              mov              r11, 62
                        add              rsp, 16;                             jmp   n60_cmp_test_β
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_binop_α
n62_lit_integer_β:      mov              r11, 63
                        add              rsp, 16;                             jmp   n61_var_β
.Llit_integer_α_196_0:  .quad            1
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_binop_bx, @function
n63_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            sub              rsp, 16
                        mov              r11, 64
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_197_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_197_7
.Lbinop_α_197_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_197_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_197_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_197_4
.Lbinop_α_197_3:        movq             xmm0, rsi
.Lbinop_α_197_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_197_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_197_7:                                                              jmp   n64_assign_α
.Lbinop_α_197_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_197_240
                        add              rsp, 16;                             jmp   n62_lit_integer_β
.Lbinop_α_197_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_α
                        .size            n63_binop_bx, .-n63_binop_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
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
                        mov              rdi, qword ptr [rip + .Lassign_α_198_0]
                        .section         .rodata
.Lassign_α_198_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_198_1_s]
                        mov              r8, 13
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
                        pop              rax;                                 jmp   n65_statement_end_α
.Lassign_α_198_0:       .quad            .Lassign_α_198_0_s
.Lassign_α_198_0_s:     .string          "ZI"
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_statement_end_bx, @function
n65_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 8
                        add              rsp, 176;                            jmp   n43_lit_integer_α
                        .size            n65_statement_end_bx, .-n65_statement_end_bx
                        .type            n66_lit_integer_bx, @function
n66_lit_integer_bx:
#=======================================================================================================================
#         STRING_CONCAT = SIZE(S)                         :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_lit_integer_α
.Llit_integer_α_201_0:  .quad            9
                        .size            n66_lit_integer_bx, .-n66_lit_integer_bx
                        .type            n67_lit_integer_bx, @function
n67_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_202_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_call_α
.Llit_integer_α_202_0:  .quad            14
                        .size            n67_lit_integer_bx, .-n67_lit_integer_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        mov              r11, 69
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
.Lcall_α_rkfnzd204:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd204]
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
                        cmp              al, 104;                             jne   .Lcall_α_203_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n69_statement_begin_α
.Lcall_α_203_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_statement_begin_α
n68_call_β:             mov              r11, 69
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n69_statement_begin_α
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 9;                              jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 70
                        add              rsp, 48;                             jmp   RETURN
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 32]             # S
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_call_α
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_call_bx, @function
n71_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             sub              rsp, 16
                        mov              r11, 72
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd209:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd209]
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
                        cmp              al, 104;                             jne   .Lcall_α_208_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
.Lcall_α_208_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_assign_α
n71_call_β:             mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
                        .size            n71_call_bx, .-n71_call_bx
                        .type            n72_assign_bx, @function
n72_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # STRING_CONCAT
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
                        mov              rdi, qword ptr [rip + .Lassign_α_210_0]
                        .section         .rodata
.Lassign_α_210_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_210_1_s]
                        mov              r8, 14
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
                        pop              rax;                                 jmp   n73_statement_end_α
.Lassign_α_210_0:       .quad            .Lassign_α_210_0_s
.Lassign_α_210_0_s:     .string          "STRING_CONCAT"
                        .size            n72_assign_bx, .-n72_assign_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        mov              r10, 9
                        add              rsp, 80;                             jmp   RETURN
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:  mov              r11, 75
                        mov              r10, 10;                             jmp   n75_statement_end_α
n74_statement_begin_β:  mov              r11, 75
                        add              rsp, 48;                             jmp   n76_lit_integer_α
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 10
                        add              rsp, 48;                             jmp   n76_lit_integer_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'length after 10 appends = ' STRING_CONCAT(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n76_lit_integer_α:      sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_lit_integer_α
.Llit_integer_α_217_0:  .quad            11
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
.Llit_integer_α_218_0:  .quad            17
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
.Lcall_α_rkfnzd220:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd220]
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
                        cmp              al, 104;                             jne   .Lcall_α_219_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_statement_begin_α
.Lcall_α_219_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_statement_begin_α
n78_call_β:             mov              r11, 79
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n79_statement_begin_α
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_statement_begin_bx, @function
n79_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 80
                        mov              r10, 11;                             jmp   n80_lit_string_α
n79_statement_begin_β:  mov              r11, 80
                        add              rsp, 48;                             jmp   n86_lit_integer_α
                        .size            n79_statement_begin_bx, .-n79_statement_begin_bx
                        .type            n80_lit_string_bx, @function
n80_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Llit_string_α_223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_lit_integer_α
.Llit_string_α_223_0:   .quad            .Llit_string_α_223_0_s
.Llit_string_α_223_0_s: .string          "length after 10 appends = "
                        .size            n80_lit_string_bx, .-n80_lit_string_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_call_α
n81_lit_integer_β:      mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n79_statement_begin_β
.Llit_integer_α_224_0:  .quad            10
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             sub              rsp, 16
                        mov              r11, 83
                        lea              rcx, [rip + .Lcall_α_sig226z]
                        lea              rax, [rip + STRING_CONCAT_α];        jmp   rax
.Lcall_α_sig226z:       .quad            1
                        .quad            .Lcall_α_226_2
                        .quad            .Lcall_α_226_2
                        .quad            16
.Lcall_α_226_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_226_29
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
.Lcall_α_226_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_226_240
                        add              rsp, 16;                             jmp   n81_lit_integer_β
.Lcall_α_226_240:                                                             jmp   n83_binop_α
n82_call_β:             mov              r11, 83;                             jmp   n81_lit_integer_β
.Lcall_β_226_0:         .quad            .Lcall_β_226_0_s
.Lcall_β_226_0_s:       .string          "STRING_CONCAT"
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              r11, 84
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_assign_α
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_assign_bx, @function
n84_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 85
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
                        mov              rdi, qword ptr [rip + .Lassign_α_228_0]
                        .section         .rodata
.Lassign_α_228_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_228_1_s]
                        mov              r8, 17
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
                        mov              rdi, qword ptr [rip + .Lassign_α_228_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_statement_end_α
.Lassign_α_228_0:       .quad            .Lassign_α_228_0_s
.Lassign_α_228_0_s:     .string          "OUTPUT"
                        .size            n84_assign_bx, .-n84_assign_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86
                        mov              r10, 11
                        add              rsp, 112;                            jmp   n86_lit_integer_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'length after 1000 appends = ' STRING_CONCAT(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_lit_integer_α
.Llit_integer_α_231_0:  .quad            12
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_call_α
.Llit_integer_α_232_0:  .quad            18
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
                        add              rsp, -16;                            jmp   n89_statement_begin_α
.Lcall_α_233_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_statement_begin_α
n88_call_β:             mov              r11, 89
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n89_statement_begin_α
                        .size            n88_call_bx, .-n88_call_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90
                        mov              r10, 12;                             jmp   n90_lit_string_α
n89_statement_begin_β:  mov              r11, 90
                        add              rsp, -64;                            jmp   n96_lit_integer_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Llit_string_α_237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_lit_integer_α
.Llit_string_α_237_0:   .quad            .Llit_string_α_237_0_s
.Llit_string_α_237_0_s: .string          "length after 1000 appends = "
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_call_α
n91_lit_integer_β:      mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Llit_integer_α_238_0:  .quad            1000
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             sub              rsp, 16
                        mov              r11, 93
                        lea              rcx, [rip + .Lcall_α_sig240z]
                        lea              rax, [rip + STRING_CONCAT_α];        jmp   rax
.Lcall_α_sig240z:       .quad            1
                        .quad            .Lcall_α_240_2
                        .quad            .Lcall_α_240_2
                        .quad            16
.Lcall_α_240_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_240_29
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
.Lcall_α_240_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_240_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lcall_α_240_240:                                                             jmp   n93_binop_α
n92_call_β:             mov              r11, 93;                             jmp   n91_lit_integer_β
.Lcall_β_240_0:         .quad            .Lcall_β_240_0_s
.Lcall_β_240_0_s:       .string          "STRING_CONCAT"
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_binop_bx, @function
n93_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:            sub              rsp, 16
                        mov              r11, 94
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_assign_α
                        .size            n93_binop_bx, .-n93_binop_bx
                        .type            n94_assign_bx, @function
n94_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              r11, 95
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
                        mov              rdi, qword ptr [rip + .Lassign_α_242_0]
                        .section         .rodata
.Lassign_α_242_1_s:     .string          "string_concat.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_242_1_s]
                        mov              r8, 18
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
                        mov              rdi, qword ptr [rip + .Lassign_α_242_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_statement_end_α
.Lassign_α_242_0:       .quad            .Lassign_α_242_0_s
.Lassign_α_242_0_s:     .string          "OUTPUT"
                        .size            n94_assign_bx, .-n94_assign_bx
                        .type            n95_statement_end_bx, @function
n95_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 96
                        mov              r10, 12;                             jmp   n96_lit_integer_α
                        .size            n95_statement_end_bx, .-n95_statement_end_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_lit_integer_α
.Llit_integer_α_245_0:  .quad            13
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_call_α
.Llit_integer_α_246_0:  .quad            19
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             sub              rsp, 16
                        mov              r11, 99
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
                        add              rsp, 144;                            jmp   main_γ
.Lcall_α_247_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160;                            jmp   main_γ
n98_call_β:             mov              r11, 99
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_goto_bx, @function
n99_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:             mov              r11, 100;                            jmp   LBL__STRING_CONCAT
n99_goto_β:             mov              r11, 100;                            jmp   main_ω
                        .size            n99_goto_bx, .-n99_goto_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#=======================================================================================================================
# STRING_CONCAT  S = ''
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
LBL__STRING_CONCAT:     sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__STRING_CONCAT_α_250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_lit_integer_α
.LLBL__STRING_CONCAT_α_250_0:
                        .quad            5
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_call_α
.Llit_integer_α_251_0:  .quad            10
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        mov              r11, 103
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
.Lcall_α_rkfnzd253:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd253]
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
                        cmp              al, 104;                             jne   .Lcall_α_252_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
.Lcall_α_252_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_statement_begin_α
n102_call_β:            mov              r11, 103
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_goto_bx, @function
n103_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_goto_α:            mov              r11, 104;                            jmp   n43_lit_integer_α
n103_goto_β:            mov              r11, 104;                            jmp   main_ω
                        .size            n103_goto_bx, .-n103_goto_bx
                        .type            n104_goto_bx, @function
n104_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_goto_α:            mov              r11, 105;                            jmp   n29_lit_integer_α
n104_goto_β:            mov              r11, 105;                            jmp   main_ω
                        .size            n104_goto_bx, .-n104_goto_bx
                        .type            n105_define_bx, @function
n105_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 106
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
                        .size            n105_define_bx, .-n105_define_bx
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
.Lstartup_pname0:       .string          "LBL__STRING_CONCAT"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__STRING_CONCAT
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1904
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "STRING_CONCAT"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            STRING_CONCAT_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + STRING_CONCAT_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
