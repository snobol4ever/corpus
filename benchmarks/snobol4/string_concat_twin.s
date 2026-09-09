                        .intel_syntax    noprefix
                        .text
                        .file            1 "string_concat_twin.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
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
.Lgvan0:                .string          "S"
.Lgvan1:                .string          "I"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "LOOP"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
# 	S = ''
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_37_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_37_0:   .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_38_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_38_0:   .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "string_concat_twin.sno"
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
.Lcall_α_rkfnzd41:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd41]
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
                        cmp              al, 104;                             jne   .Lcall_α_40_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_40_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_begin_α
n3_call_β:              mov              r11, 4
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
                        .size            n3_call_bx, .-n3_call_bx
                        .type            n4_statement_begin_bx, @function
n4_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 1;                              jmp   n5_lit_string_α
n4_statement_begin_β:   mov              r11, 5
                        add              rsp, 64;                             jmp   n8_statement_begin_α
                        .size            n4_statement_begin_bx, .-n4_statement_begin_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          ""
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # S
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
                        mov              rdi, qword ptr [rip + .Lassign_α_45_0]
                        .section         .rodata
.Lassign_α_45_1_s:      .string          "string_concat_twin.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_45_1_s]
                        mov              r8, 4
                        mov              r9, 1
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
                        pop              rax;                                 jmp   n7_statement_end_α
.Lassign_α_45_0:        .quad            .Lassign_α_45_0_s
.Lassign_α_45_0_s:      .string          "S"
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_statement_end_bx, @function
n7_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 1
                        add              rsp, 80;                             jmp   n8_statement_begin_α
                        .size            n7_statement_end_bx, .-n7_statement_end_bx
                        .type            n8_statement_begin_bx, @function
n8_statement_begin_bx:
#=======================================================================================================================
# 	I = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 2;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n12_statement_begin_α
                        .size            n8_statement_begin_bx, .-n8_statement_begin_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_50_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_assign_α
.Llit_integer_α_50_0:   .quad            1
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_51_0]
                        .section         .rodata
.Lassign_α_51_1_s:      .string          "string_concat_twin.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_51_1_s]
                        mov              r8, 5
                        mov              r9, 2
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
                        pop              rax;                                 jmp   n11_statement_end_α
.Lassign_α_51_0:        .quad            .Lassign_α_51_0_s
.Lassign_α_51_0_s:      .string          "I"
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_statement_end_bx, @function
n11_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n12_statement_begin_α
                        .size            n11_statement_end_bx, .-n11_statement_end_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
#=======================================================================================================================
# LOOP	S = S 'x'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n12_statement_begin_α:  mov              r11, 13
                        mov              r10, 3;                              jmp   n13_var_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   n18_statement_begin_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              r11, 14
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_lit_string_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_57_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_binop_α
n14_lit_string_β:       mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Llit_string_α_57_0:    .quad            .Llit_string_α_57_0_s
.Llit_string_α_57_0_s:  .string          "x"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            sub              rsp, 16
                        mov              r11, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_assign_α
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # S
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
                        mov              rdi, qword ptr [rip + .Lassign_α_59_0]
                        .section         .rodata
.Lassign_α_59_1_s:      .string          "string_concat_twin.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_59_1_s]
                        mov              r8, 6
                        mov              r9, 3
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
                        pop              rax;                                 jmp   n17_statement_end_α
.Lassign_α_59_0:        .quad            .Lassign_α_59_0_s
.Lassign_α_59_0_s:      .string          "S"
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n18_statement_begin_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
#=======================================================================================================================
# 	I = I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 4;                              jmp   n19_var_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   n24_statement_begin_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_var_bx, @function
n19_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              sub              rsp, 16
                        mov              r11, 20
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_lit_integer_α
                        .size            n19_var_bx, .-n19_var_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_binop_α
n20_lit_integer_β:      mov              r11, 21
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Llit_integer_α_65_0:   .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_binop_bx, @function
n21_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:            sub              rsp, 16
                        mov              r11, 22
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_66_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_66_7
.Lbinop_α_66_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_66_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_66_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_66_4
.Lbinop_α_66_3:         movq             xmm0, rsi
.Lbinop_α_66_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_66_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_66_7:                                                               jmp   n22_assign_α
.Lbinop_α_66_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_66_240
                        add              rsp, 16;                             jmp   n20_lit_integer_β
.Lbinop_α_66_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_assign_α
                        .size            n21_binop_bx, .-n21_binop_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_67_0]
                        .section         .rodata
.Lassign_α_67_1_s:      .string          "string_concat_twin.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_67_1_s]
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
                        pop              rax;                                 jmp   n23_statement_end_α
.Lassign_α_67_0:        .quad            .Lassign_α_67_0_s
.Lassign_α_67_0_s:      .string          "I"
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24
                        mov              r10, 4
                        add              rsp, 48;                             jmp   n24_statement_begin_α
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#=======================================================================================================================
# 	LE(I, 4000)					:S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n24_statement_begin_α:  mov              r11, 25
                        mov              r10, 5;                              jmp   n25_var_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n31_statement_begin_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_var_bx, @function
n25_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_lit_integer_α
                        .size            n25_var_bx, .-n25_var_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_coerce_numeric_α
n26_lit_integer_β:      mov              r11, 27
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Llit_integer_α_73_0:   .quad            4000
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 28
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_75_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_75_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_75_0
.Lcoerce_numeric_α_75_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_coerce_numeric_α
.Lcoerce_numeric_α_75_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_coerce_numeric_α
n27_coerce_numeric_β:   mov              r11, 28
                        add              rsp, 16;                             jmp   n26_lit_integer_β
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_coerce_numeric_bx, @function
n28_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 29
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_77_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_77_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_77_0
.Lcoerce_numeric_α_77_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_cmp_test_α
.Lcoerce_numeric_α_77_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_cmp_test_α
n28_coerce_numeric_β:   mov              r11, 29
                        add              rsp, 16;                             jmp   n27_coerce_numeric_β
                        .size            n28_coerce_numeric_bx, .-n28_coerce_numeric_bx
                        .type            n29_cmp_test_bx, @function
n29_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_cmp_test_α:         sub              rsp, 16
                        mov              r11, 30
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_79_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_79_239
                        add              rsp, 16;                             jmp   n28_coerce_numeric_β
.Lcmp_test_α_79_239:                                                          jmp   n30_statement_end_α
.Lcmp_test_α_79_0:      lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_79_240
                        add              rsp, 16;                             jmp   n28_coerce_numeric_β
.Lcmp_test_α_79_240:                                                          jmp   n30_statement_end_α
                        .size            n29_cmp_test_bx, .-n29_cmp_test_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 31
                        mov              r10, 5
                        add              rsp, 80;                             jmp   n12_statement_begin_α
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_statement_begin_bx, @function
n31_statement_begin_bx:
#=======================================================================================================================
# 	OUTPUT = SIZE(S)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n31_statement_begin_α:  mov              r11, 32
                        mov              r10, 6;                              jmp   n32_var_α
n31_statement_begin_β:  mov              r11, 32;                             jmp   main_γ
                        .size            n31_statement_begin_bx, .-n31_statement_begin_bx
                        .type            n32_var_bx, @function
n32_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_call_α
                        .size            n32_var_bx, .-n32_var_bx
                        .type            n33_call_bx, @function
n33_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             sub              rsp, 16
                        mov              r11, 34
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd86:      .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd86]
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
                        cmp              al, 104;                             jne   .Lcall_α_85_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
.Lcall_α_85_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_assign_α
n33_call_β:             mov              r11, 34
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
                        .size            n33_call_bx, .-n33_call_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # call
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
                        mov              rdi, qword ptr [rip + .Lassign_α_87_0]
                        .section         .rodata
.Lassign_α_87_1_s:      .string          "string_concat_twin.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_87_1_s]
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_87_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_statement_end_α
.Lassign_α_87_0:        .quad            .Lassign_α_87_0_s
.Lassign_α_87_0_s:      .string          "OUTPUT"
                        .size            n34_assign_bx, .-n34_assign_bx
                        .type            n35_statement_end_bx, @function
n35_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 6
                        add              rsp, 32;                             jmp   main_γ
                        .size            n35_statement_end_bx, .-n35_statement_end_bx
                        .type            n36_goto_bx, @function
n36_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:             mov              r11, 37;                             jmp   n12_statement_begin_α
n36_goto_β:             mov              r11, 37;                             jmp   main_ω
                        .size            n36_goto_bx, .-n36_goto_bx
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
                        .section         .note.GNU-stack,"",@progbits
