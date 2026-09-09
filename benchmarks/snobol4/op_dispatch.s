                        .intel_syntax    noprefix
                        .text
                        .file            1 "op_dispatch.sno"
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
.Lgvan0:                .string          "OP_DISPATCH"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "M"
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
.Llbln0:                .string          "OP_DISPATCH"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "OP_DISPATCH_END"
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_137_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_137_0:  .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_138_0:  .quad            4
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_139_0:   .quad            .Llit_string_α_139_0_s
.Llit_string_α_139_0_s: .string          "op_dispatch.sno"
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
.Lcall_α_rkfnzd141:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd141]
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
                        cmp              al, 104;                             jne   .Lcall_α_140_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_140_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_kw_assign_snobol4_α
.Llit_integer_α_144_0:  .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_kw_assign_snobol4_bx, @function
n6_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_kw_assign_snobol4_α: sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_145_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_145_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lkw_assign_snobol4_α_145_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lkw_assign_snobol4_α_145_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_148_0:  .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Llit_integer_α_149_0:  .quad            5
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
.Lcall_α_rkfnzd151:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd151]
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
                        cmp              al, 104;                             jne   .Lcall_α_150_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n11_statement_begin_α
.Lcall_α_150_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_154_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_kw_assign_snobol4_α
.Llit_integer_α_154_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_kw_assign_snobol4_bx, @function
n13_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_155_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_155_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Lkw_assign_snobol4_α_155_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_end_α
.Lkw_assign_snobol4_α_155_0:
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_integer_α
.Llit_integer_α_158_0:  .quad            3
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_159_0:  .quad            6
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
.Lcall_α_rkfnzd161:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd161]
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
                        cmp              al, 104;                             jne   .Lcall_α_160_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n18_statement_begin_α
.Lcall_α_160_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_164_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_166_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_166_240
                        add              rsp, 16;                             jmp   n20_unop_β
.Lkw_assign_snobol4_α_166_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_statement_end_α
.Lkw_assign_snobol4_α_166_0:
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
#         DEFINE('OP_DISPATCH(N)')                        :(OP_DISPATCH_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
.Llit_integer_α_169_0:  .quad            4
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Llit_integer_α_170_0:  .quad            7
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
                        add              rsp, -16;                            jmp   n26_statement_begin_α
.Lcall_α_171_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_176_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_176_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + OP_DISPATCH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_176_0]
                        lea              rsi, [rip + OP_DISPATCH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__OP_DISPATCH]
                        mov              rcx, qword ptr [rip + body_cell$OP_DISPATCH@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n28_statement_end_α
n27_define_β:           mov              r11, 28;                             jmp   n26_statement_begin_β
.Ldefine_α_176_0:       .quad            .Ldefine_α_176_0_s
.Ldefine_α_176_0_s:     .string          "OP_DISPATCH"
.Ldefine_α_176_1:       .quad            .Ldefine_α_176_1_s
.Ldefine_α_176_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_177_245
#-----------------------------------------------------------------------------------------------------------------------
OP_DISPATCH_α:          sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # OP_DISPATCH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_177_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_177_41
.Ldefine_α_177_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_177_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_177_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_177_230
.Ldefine_α_177_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_177_232]
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
.Ldefine_α_177_230:                                                           jmp   .Ldefine_α_177_231
.Ldefine_α_177_232:     .quad            .Ldefine_α_177_232_s
.Ldefine_α_177_232_s:   .string          "OP_DISPATCH"
.Ldefine_α_177_231:     lea              rcx, [rip + OP_DISPATCH_γ]
                        lea              rax, [rip + OP_DISPATCH_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$OP_DISPATCH:  .quad            LBL__OP_DISPATCH
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$OP_DISPATCH@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
OP_DISPATCH_γ:          mov              rdi, qword ptr [r9 + 0]              # OP_DISPATCH
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_177_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_177_235
.Ldefine_α_177_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_177_237]
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
.Ldefine_α_177_235:                                                           jmp   .Ldefine_α_177_236
.Ldefine_α_177_237:     .quad            .Ldefine_α_177_237_s
.Ldefine_α_177_237_s:   .string          "OP_DISPATCH"
.Ldefine_α_177_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_177_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_177_110
.Ldefine_α_177_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_177_110:     push             rcx
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
OP_DISPATCH_ω:          mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # OP_DISPATCH
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_177_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_177_180
.Ldefine_α_177_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_177_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_177_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_177_249
.Ldefine_α_177_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_177_237]
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
.Ldefine_α_177_249:     push             rcx
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
.Ldefine_α_177_245:
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
# OP_DISPATCH_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Llit_integer_α_180_0:  .quad            13
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Llit_integer_α_181_0:  .quad            16
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
.Lcall_α_rkfnzd183:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd183]
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
                        cmp              al, 104;                             jne   .Lcall_α_182_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n105_statement_begin_α
.Lcall_α_182_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_statement_begin_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n105_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Llit_integer_α_186_0:  .quad            1
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # M
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
                        mov              rdi, qword ptr [rip + .Lassign_α_187_0]
                        .section         .rodata
.Lassign_α_187_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_187_1_s]
                        mov              r8, 16
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
.Lassign_α_187_0:       .quad            .Lassign_α_187_0_s
.Lassign_α_187_0_s:     .string          "M"
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
                        .loc             1 9 0
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
.Llit_integer_α_190_0:  .quad            6
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Llit_integer_α_191_0:  .quad            9
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
.Lcall_α_rkfnzd193:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd193]
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
                        cmp              al, 104;                             jne   .Lcall_α_192_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_statement_begin_α
.Lcall_α_192_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Llit_integer_α_196_0:  .quad            1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_197_0]
                        .section         .rodata
.Lassign_α_197_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_197_1_s]
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
                        pop              rax;                                 jmp   n42_statement_end_α
.Lassign_α_197_0:       .quad            .Lassign_α_197_0_s
.Lassign_α_197_0_s:     .string          "ZI"
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
# ZBL     M = M + 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_lit_integer_α
.Llit_integer_α_200_0:  .quad            7
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
.Llit_integer_α_201_0:  .quad            10
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
.Lcall_α_rkfnzd203:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd203]
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
                        cmp              al, 104;                             jne   .Lcall_α_202_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n46_statement_begin_α
.Lcall_α_202_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [r9 + 32]             # M
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_lit_integer_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_binop_α
n48_lit_integer_β:      mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Llit_integer_α_207_0:  .quad            3
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_binop_bx, @function
n49_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            sub              rsp, 16
                        mov              r11, 50
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_208_2
                        add              rax, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_208_7
.Lbinop_α_208_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_208_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_208_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_208_4
.Lbinop_α_208_3:        movq             xmm0, rsi
.Lbinop_α_208_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_208_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_208_7:                                                              jmp   n50_assign_α
.Lbinop_α_208_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_208_240
                        add              rsp, 16;                             jmp   n48_lit_integer_β
.Lbinop_α_208_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_assign_α
                        .size            n49_binop_bx, .-n49_binop_bx
                        .type            n50_assign_bx, @function
n50_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # M
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
                        mov              rdi, qword ptr [rip + .Lassign_α_209_0]
                        .section         .rodata
.Lassign_α_209_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_209_1_s]
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
                        pop              rax;                                 jmp   n51_statement_end_α
.Lassign_α_209_0:       .quad            .Lassign_α_209_0_s
.Lassign_α_209_0_s:     .string          "M"
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
#         M = M - 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_lit_integer_α
.Llit_integer_α_212_0:  .quad            8
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_α
.Llit_integer_α_213_0:  .quad            11
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
.Lcall_α_rkfnzd215:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd215]
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
                        cmp              al, 104;                             jne   .Lcall_α_214_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n55_statement_begin_α
.Lcall_α_214_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 48;                             jmp   n61_lit_integer_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 32]             # M
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_integer_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_binop_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Llit_integer_α_219_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              r11, 59
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_220_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_220_7
.Lbinop_α_220_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_220_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_220_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_220_4
.Lbinop_α_220_3:        movq             xmm0, rsi
.Lbinop_α_220_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_220_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_220_7:                                                              jmp   n59_assign_α
.Lbinop_α_220_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_220_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lbinop_α_220_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_assign_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # M
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
.Lassign_α_221_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_221_1_s]
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
                        pop              rax;                                 jmp   n60_statement_end_α
.Lassign_α_221_0:       .quad            .Lassign_α_221_0_s
.Lassign_α_221_0_s:     .string          "M"
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 8
                        add              rsp, 96;                             jmp   n61_lit_integer_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#=======================================================================================================================
#         M = M * 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_lit_integer_α
.Llit_integer_α_224_0:  .quad            9
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_call_α
.Llit_integer_α_225_0:  .quad            12
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
                        add              rsp, -16;                            jmp   n64_statement_begin_α
.Lcall_α_226_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_statement_begin_α
n63_call_β:             mov              r11, 64
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n64_statement_begin_α
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65
                        mov              r10, 9;                              jmp   n65_var_α
n64_statement_begin_β:  mov              r11, 65
                        add              rsp, 48;                             jmp   n70_lit_integer_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 32]             # M
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_integer_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_lit_integer_bx, @function
n66_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_binop_α
n66_lit_integer_β:      mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Llit_integer_α_231_0:  .quad            2
                        .size            n66_lit_integer_bx, .-n66_lit_integer_bx
                        .type            n67_binop_bx, @function
n67_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              r11, 68
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_232_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_232_7
.Lbinop_α_232_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_232_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_232_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_232_4
.Lbinop_α_232_3:        movq             xmm0, rsi
.Lbinop_α_232_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_232_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_232_7:                                                              jmp   n68_assign_α
.Lbinop_α_232_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_232_240
                        add              rsp, 16;                             jmp   n66_lit_integer_β
.Lbinop_α_232_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_assign_α
                        .size            n67_binop_bx, .-n67_binop_bx
                        .type            n68_assign_bx, @function
n68_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # M
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
                        mov              rdi, qword ptr [rip + .Lassign_α_233_0]
                        .section         .rodata
.Lassign_α_233_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_233_1_s]
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
                        pop              rax;                                 jmp   n69_statement_end_α
.Lassign_α_233_0:       .quad            .Lassign_α_233_0_s
.Lassign_α_233_0_s:     .string          "M"
                        .size            n68_assign_bx, .-n68_assign_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        mov              r10, 9
                        add              rsp, 96;                             jmp   n70_lit_integer_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#=======================================================================================================================
#         M = GE(M, 1000000) M / 1000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n70_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_lit_integer_α
.Llit_integer_α_236_0:  .quad            10
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_call_α
.Llit_integer_α_237_0:  .quad            13
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
                        add              rsp, -16;                            jmp   n73_statement_begin_α
.Lcall_α_238_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              rax, qword ptr [r9 + 32]             # M
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_coerce_numeric_α
n75_lit_integer_β:      mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Llit_integer_α_243_0:  .quad            1000000
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_coerce_numeric_bx, @function
n76_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 77
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_245_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_245_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_245_0
.Lcoerce_numeric_α_245_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_coerce_numeric_α
.Lcoerce_numeric_α_245_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
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
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_247_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_247_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_247_0
.Lcoerce_numeric_α_247_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_cmp_test_α
.Lcoerce_numeric_α_247_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_249_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lcmp_test_α_249_239
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lcmp_test_α_249_239:                                                         jmp   n79_var_α
.Lcmp_test_α_249_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lcmp_test_α_249_240
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
.Lcmp_test_α_249_240:                                                         jmp   n79_var_α
n78_cmp_test_β:         mov              r11, 79
                        add              rsp, 16;                             jmp   n77_coerce_numeric_β
                        .size            n78_cmp_test_bx, .-n78_cmp_test_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 32]             # M
                        mov              rdx, qword ptr [r9 + 40]
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_binop_α
n80_lit_integer_β:      mov              r11, 81
                        add              rsp, 16;                             jmp   n79_var_β
.Llit_integer_α_251_0:  .quad            1000
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_binop_bx, @function
n81_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            sub              rsp, 16
                        mov              r11, 82
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_252_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lbinop_α_252_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_assign_α
                        .size            n81_binop_bx, .-n81_binop_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # M
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
                        mov              rdi, qword ptr [rip + .Lassign_α_253_0]
                        .section         .rodata
.Lassign_α_253_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_253_1_s]
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
                        pop              rax;                                 jmp   n83_statement_end_α
.Lassign_α_253_0:       .quad            .Lassign_α_253_0_s
.Lassign_α_253_0_s:     .string          "M"
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 84
                        mov              r10, 10
                        add              rsp, 176;                            jmp   n84_lit_integer_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_integer_α
.Llit_integer_α_256_0:  .quad            11
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_α
.Llit_integer_α_257_0:  .quad            14
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
.Lcall_α_rkfnzd259:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd259]
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
                        cmp              al, 104;                             jne   .Lcall_α_258_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n87_statement_begin_α
.Lcall_α_258_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_statement_begin_α
n86_call_β:             mov              r11, 87
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n87_statement_begin_α
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88
                        mov              r10, 11;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 88
                        add              rsp, 48;                             jmp   n98_lit_integer_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_var_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_coerce_numeric_α
n89_var_β:              mov              r11, 90
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_coerce_numeric_bx, @function
n90_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 91
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_265_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_265_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_265_0
.Lcoerce_numeric_α_265_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_coerce_numeric_α
.Lcoerce_numeric_α_265_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_coerce_numeric_α
n90_coerce_numeric_β:   mov              r11, 91
                        add              rsp, 16;                             jmp   n89_var_β
                        .size            n90_coerce_numeric_bx, .-n90_coerce_numeric_bx
                        .type            n91_coerce_numeric_bx, @function
n91_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 92
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_267_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_267_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_267_0
.Lcoerce_numeric_α_267_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_cmp_test_α
.Lcoerce_numeric_α_267_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_cmp_test_α
n91_coerce_numeric_β:   mov              r11, 92
                        add              rsp, 16;                             jmp   n90_coerce_numeric_β
                        .size            n91_coerce_numeric_bx, .-n91_coerce_numeric_bx
                        .type            n92_cmp_test_bx, @function
n92_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_cmp_test_α:         sub              rsp, 16
                        mov              r11, 93
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_269_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_269_239
                        add              rsp, 16;                             jmp   n91_coerce_numeric_β
.Lcmp_test_α_269_239:                                                         jmp   n93_var_α
.Lcmp_test_α_269_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_269_240
                        add              rsp, 16;                             jmp   n91_coerce_numeric_β
.Lcmp_test_α_269_240:                                                         jmp   n93_var_α
n92_cmp_test_β:         mov              r11, 93
                        add              rsp, 16;                             jmp   n91_coerce_numeric_β
                        .size            n92_cmp_test_bx, .-n92_cmp_test_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 94
                        mov              rax, qword ptr [r9 + 48]             # ZI
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_lit_integer_α
n93_var_β:              mov              r11, 94
                        add              rsp, 16;                             jmp   n92_cmp_test_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_lit_integer_bx, @function
n94_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_binop_α
n94_lit_integer_β:      mov              r11, 95
                        add              rsp, 16;                             jmp   n93_var_β
.Llit_integer_α_271_0:  .quad            1
                        .size            n94_lit_integer_bx, .-n94_lit_integer_bx
                        .type            n95_binop_bx, @function
n95_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:            sub              rsp, 16
                        mov              r11, 96
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_272_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_272_7
.Lbinop_α_272_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_272_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_272_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_272_4
.Lbinop_α_272_3:        movq             xmm0, rsi
.Lbinop_α_272_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_272_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_272_7:                                                              jmp   n96_assign_α
.Lbinop_α_272_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_272_240
                        add              rsp, 16;                             jmp   n94_lit_integer_β
.Lbinop_α_272_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_assign_α
                        .size            n95_binop_bx, .-n95_binop_bx
                        .type            n96_assign_bx, @function
n96_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              r11, 97
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
                        mov              rdi, qword ptr [rip + .Lassign_α_273_0]
                        .section         .rodata
.Lassign_α_273_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_273_1_s]
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
                        pop              rax;                                 jmp   n97_statement_end_α
.Lassign_α_273_0:       .quad            .Lassign_α_273_0_s
.Lassign_α_273_0_s:     .string          "ZI"
                        .size            n96_assign_bx, .-n96_assign_bx
                        .type            n97_statement_end_bx, @function
n97_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    mov              r11, 98
                        mov              r10, 11
                        add              rsp, 176;                            jmp   n43_lit_integer_α
                        .size            n97_statement_end_bx, .-n97_statement_end_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#=======================================================================================================================
#         OP_DISPATCH = M                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n98_lit_integer_α:      sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_lit_integer_α
.Llit_integer_α_276_0:  .quad            12
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_call_α
.Llit_integer_α_277_0:  .quad            15
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        mov              r11, 101
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
.Lcall_α_rkfnzd279:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd279]
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
                        cmp              al, 104;                             jne   .Lcall_α_278_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n101_statement_begin_α
.Lcall_α_278_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_statement_begin_α
n100_call_β:            mov              r11, 101
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n101_statement_begin_α
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_statement_begin_bx, @function
n101_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 102
                        mov              r10, 12;                             jmp   n102_var_α
n101_statement_begin_β: mov              r11, 102
                        add              rsp, 48;                             jmp   RETURN
                        .size            n101_statement_begin_bx, .-n101_statement_begin_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 32]             # M
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_assign_α
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_assign_bx, @function
n103_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # OP_DISPATCH
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
                        mov              rdi, qword ptr [rip + .Lassign_α_283_0]
                        .section         .rodata
.Lassign_α_283_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_283_1_s]
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
                        pop              rax;                                 jmp   n104_statement_end_α
.Lassign_α_283_0:       .quad            .Lassign_α_283_0_s
.Lassign_α_283_0_s:     .string          "OP_DISPATCH"
                        .size            n103_assign_bx, .-n103_assign_bx
                        .type            n104_statement_end_bx, @function
n104_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 12
                        add              rsp, 64;                             jmp   RETURN
                        .size            n104_statement_end_bx, .-n104_statement_end_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106
                        mov              r10, 13;                             jmp   n106_statement_end_α
n105_statement_begin_β: mov              r11, 106
                        add              rsp, 48;                             jmp   n107_lit_integer_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_statement_end_bx, @function
n106_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 107
                        mov              r10, 13
                        add              rsp, 48;                             jmp   n107_lit_integer_α
                        .size            n106_statement_end_bx, .-n106_statement_end_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'after 1 pass    = ' OP_DISPATCH(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_lit_integer_α
.Llit_integer_α_290_0:  .quad            14
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_lit_integer_bx, @function
n108_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_call_α
.Llit_integer_α_291_0:  .quad            18
                        .size            n108_lit_integer_bx, .-n108_lit_integer_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
                        mov              r11, 110
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
.Lcall_α_rkfnzd293:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd293]
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
                        cmp              al, 104;                             jne   .Lcall_α_292_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n110_statement_begin_α
.Lcall_α_292_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_statement_begin_α
n109_call_β:            mov              r11, 110
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n110_statement_begin_α
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 111
                        mov              r10, 14;                             jmp   n111_lit_string_α
n110_statement_begin_β: mov              r11, 111
                        add              rsp, 48;                             jmp   n117_lit_integer_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_lit_string_bx, @function
n111_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_lit_integer_α
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          "after 1 pass    = "
                        .size            n111_lit_string_bx, .-n111_lit_string_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_call_α
n112_lit_integer_β:     mov              r11, 113
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Llit_integer_α_297_0:  .quad            1
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            sub              rsp, 16
                        mov              r11, 114
                        lea              rcx, [rip + .Lcall_α_sig299z]
                        lea              rax, [rip + OP_DISPATCH_α];          jmp   rax
.Lcall_α_sig299z:       .quad            1
                        .quad            .Lcall_α_299_2
                        .quad            .Lcall_α_299_2
                        .quad            16
.Lcall_α_299_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_299_29
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
.Lcall_α_299_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_299_240
                        add              rsp, 16;                             jmp   n112_lit_integer_β
.Lcall_α_299_240:                                                             jmp   n114_binop_α
n113_call_β:            mov              r11, 114;                            jmp   n112_lit_integer_β
.Lcall_β_299_0:         .quad            .Lcall_β_299_0_s
.Lcall_β_299_0_s:       .string          "OP_DISPATCH"
                        .size            n113_call_bx, .-n113_call_bx
                        .type            n114_binop_bx, @function
n114_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_binop_α:           sub              rsp, 16
                        mov              r11, 115
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_assign_α
                        .size            n114_binop_bx, .-n114_binop_bx
                        .type            n115_assign_bx, @function
n115_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              r11, 116
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
                        mov              rdi, qword ptr [rip + .Lassign_α_301_0]
                        .section         .rodata
.Lassign_α_301_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_301_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_301_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_statement_end_α
.Lassign_α_301_0:       .quad            .Lassign_α_301_0_s
.Lassign_α_301_0_s:     .string          "OUTPUT"
                        .size            n115_assign_bx, .-n115_assign_bx
                        .type            n116_statement_end_bx, @function
n116_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 117
                        mov              r10, 14
                        add              rsp, 112;                            jmp   n117_lit_integer_α
                        .size            n116_statement_end_bx, .-n116_statement_end_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'after 1000 passes = ' OP_DISPATCH(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_304_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_lit_integer_α
.Llit_integer_α_304_0:  .quad            15
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_call_α
.Llit_integer_α_305_0:  .quad            19
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
.Lcall_α_rkfnzd307:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd307]
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
                        cmp              al, 104;                             jne   .Lcall_α_306_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n120_statement_begin_α
.Lcall_α_306_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_statement_begin_α
n119_call_β:            mov              r11, 120
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n120_statement_begin_α
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_statement_begin_bx, @function
n120_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α: mov              r11, 121
                        mov              r10, 15;                             jmp   n121_lit_string_α
n120_statement_begin_β: mov              r11, 121
                        add              rsp, -64;                            jmp   n127_lit_integer_α
                        .size            n120_statement_begin_bx, .-n120_statement_begin_bx
                        .type            n121_lit_string_bx, @function
n121_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_lit_integer_α
.Llit_string_α_310_0:   .quad            .Llit_string_α_310_0_s
.Llit_string_α_310_0_s: .string          "after 1000 passes = "
                        .size            n121_lit_string_bx, .-n121_lit_string_bx
                        .type            n122_lit_integer_bx, @function
n122_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     sub              rsp, 16
                        mov              r11, 123
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_call_α
n122_lit_integer_β:     mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n120_statement_begin_β
.Llit_integer_α_311_0:  .quad            1000
                        .size            n122_lit_integer_bx, .-n122_lit_integer_bx
                        .type            n123_call_bx, @function
n123_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            sub              rsp, 16
                        mov              r11, 124
                        lea              rcx, [rip + .Lcall_α_sig313z]
                        lea              rax, [rip + OP_DISPATCH_α];          jmp   rax
.Lcall_α_sig313z:       .quad            1
                        .quad            .Lcall_α_313_2
                        .quad            .Lcall_α_313_2
                        .quad            16
.Lcall_α_313_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_313_29
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
.Lcall_α_313_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_313_240
                        add              rsp, 16;                             jmp   n122_lit_integer_β
.Lcall_α_313_240:                                                             jmp   n124_binop_α
n123_call_β:            mov              r11, 124;                            jmp   n122_lit_integer_β
.Lcall_β_313_0:         .quad            .Lcall_β_313_0_s
.Lcall_β_313_0_s:       .string          "OP_DISPATCH"
                        .size            n123_call_bx, .-n123_call_bx
                        .type            n124_binop_bx, @function
n124_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
                        mov              r11, 125
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_assign_α
                        .size            n124_binop_bx, .-n124_binop_bx
                        .type            n125_assign_bx, @function
n125_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              r11, 126
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
                        mov              rdi, qword ptr [rip + .Lassign_α_315_0]
                        .section         .rodata
.Lassign_α_315_1_s:     .string          "op_dispatch.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_315_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_315_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_statement_end_α
.Lassign_α_315_0:       .quad            .Lassign_α_315_0_s
.Lassign_α_315_0_s:     .string          "OUTPUT"
                        .size            n125_assign_bx, .-n125_assign_bx
                        .type            n126_statement_end_bx, @function
n126_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 127
                        mov              r10, 15;                             jmp   n127_lit_integer_α
                        .size            n126_statement_end_bx, .-n126_statement_end_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_lit_integer_α
.Llit_integer_α_318_0:  .quad            16
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_319_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_call_α
.Llit_integer_α_319_0:  .quad            20
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
.Lcall_α_rkfnzd321:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd321]
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
                        cmp              al, 104;                             jne   .Lcall_α_320_240
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
.Lcall_α_320_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160;                            jmp   main_γ
n129_call_β:            mov              r11, 130
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
                        .size            n129_call_bx, .-n129_call_bx
                        .type            n130_goto_bx, @function
n130_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_goto_α:            mov              r11, 131;                            jmp   LBL__OP_DISPATCH
n130_goto_β:            mov              r11, 131;                            jmp   main_ω
                        .size            n130_goto_bx, .-n130_goto_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#=======================================================================================================================
# OP_DISPATCH  M = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
LBL__OP_DISPATCH:       sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__OP_DISPATCH_α_323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_lit_integer_α
.LLBL__OP_DISPATCH_α_323_0:
                        .quad            5
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_call_α
.Llit_integer_α_324_0:  .quad            8
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
.Lcall_α_rkfnzd326:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd326]
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
                        cmp              al, 104;                             jne   .Lcall_α_325_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
.Lcall_α_325_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_statement_begin_α
n133_call_β:            mov              r11, 134
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n32_statement_begin_α
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_goto_bx, @function
n134_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_goto_α:            mov              r11, 135;                            jmp   n43_lit_integer_α
n134_goto_β:            mov              r11, 135;                            jmp   main_ω
                        .size            n134_goto_bx, .-n134_goto_bx
                        .type            n135_goto_bx, @function
n135_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_goto_α:            mov              r11, 136;                            jmp   n29_lit_integer_α
n135_goto_β:            mov              r11, 136;                            jmp   main_ω
                        .size            n135_goto_bx, .-n135_goto_bx
                        .type            n136_define_bx, @function
n136_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 137
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
                        .size            n136_define_bx, .-n136_define_bx
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
.Lstartup_pname0:       .string          "LBL__OP_DISPATCH"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__OP_DISPATCH
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "OP_DISPATCH"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            OP_DISPATCH_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + OP_DISPATCH_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
