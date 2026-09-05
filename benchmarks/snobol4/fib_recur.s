                        .intel_syntax    noprefix
                        .text
                        .file            1 "fib_recur.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 3
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
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "FIB"
.Lgvan1:                .string          "N"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "FIB"
.Llbln1:                .string          "FIB_END"
.Llbln2:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        .type            n0_statement_begin_bx, @function
n0_statement_begin_bx:
#=======================================================================================================================
# 	DEFINE('FIB(N)')				:(FIB_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_define_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n24_statement_begin_α
                        .size            n0_statement_begin_bx, .-n0_statement_begin_bx
                        .type            n1_define_bx, @function
n1_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_define_α:            mov              r11, 2
                        mov              rdi, qword ptr [rip + .Ldefine_α_37_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_37_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + FIB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_37_0]
                        lea              rsi, [rip + FIB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_statement_end_α
n1_define_β:            mov              r11, 2;                              jmp   n0_statement_begin_β
.Ldefine_α_37_0:        .quad            .Ldefine_α_37_0_s
.Ldefine_α_37_0_s:      .string          "FIB"
.Ldefine_α_37_1:        .quad            .Ldefine_α_37_1_s
.Ldefine_α_37_1_s:      .string          "N"
                                                                              jmp   .Ldefine_α_38_245
#-----------------------------------------------------------------------------------------------------------------------
FIB_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # FIB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_38_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_38_41
.Ldefine_α_38_10:       mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_38_41:       lea              rcx, [rip + FIB_γ]
                        lea              rax, [rip + FIB_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n3_statement_begin_α];   jmp   rax
FIB_γ:                  mov              rdi, qword ptr [r9 + 0]              # FIB
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_38_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_38_110
.Ldefine_α_38_80:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_38_110:      mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
FIB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_38_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_38_180
.Ldefine_α_38_150:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_38_180:      mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_38_245:
                        .size            n1_define_bx, .-n1_define_bx
                        .type            n2_statement_end_bx, @function
n2_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_end_α:     mov              r11, 3
                        mov              r10, 1;                              jmp   n24_statement_begin_α
                        .size            n2_statement_end_bx, .-n2_statement_end_bx
                        .type            n3_statement_begin_bx, @function
n3_statement_begin_bx:
#=======================================================================================================================
# FIB	FIB = LT(N, 2) N				:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n3_statement_begin_α:   mov              r11, 4
                        mov              r10, 2;                              jmp   n4_var_α
n3_statement_begin_β:   mov              r11, 4;                              jmp   n12_statement_begin_α
                        .size            n3_statement_begin_bx, .-n3_statement_begin_bx
                        .type            n4_var_bx, @function
n4_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               sub              rsp, 16
                        mov              r11, 5
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_lit_integer_α
                        .size            n4_var_bx, .-n4_var_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_44_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_coerce_numeric_α
n5_lit_integer_β:       mov              r11, 6
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_statement_begin_β
.Llit_integer_α_44_0:   .quad            2
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_coerce_numeric_bx, @function
n6_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:    sub              rsp, 16
                        mov              r11, 7
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_46_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_46_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_46_0
.Lcoerce_numeric_α_46_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_coerce_numeric_α
.Lcoerce_numeric_α_46_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_coerce_numeric_α
n6_coerce_numeric_β:    mov              r11, 7
                        add              rsp, 16;                             jmp   n5_lit_integer_β
                        .size            n6_coerce_numeric_bx, .-n6_coerce_numeric_bx
                        .type            n7_coerce_numeric_bx, @function
n7_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    sub              rsp, 16
                        mov              r11, 8
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_48_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_48_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_48_0
.Lcoerce_numeric_α_48_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_cmp_test_α
.Lcoerce_numeric_α_48_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_cmp_test_α
n7_coerce_numeric_β:    mov              r11, 8
                        add              rsp, 16;                             jmp   n6_coerce_numeric_β
                        .size            n7_coerce_numeric_bx, .-n7_coerce_numeric_bx
                        .type            n8_cmp_test_bx, @function
n8_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:          sub              rsp, 16
                        mov              r11, 9
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_50_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_50_239
                        add              rsp, 16;                             jmp   n7_coerce_numeric_β
.Lcmp_test_α_50_239:                                                          jmp   n9_var_α
.Lcmp_test_α_50_0:      lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_50_240
                        add              rsp, 16;                             jmp   n7_coerce_numeric_β
.Lcmp_test_α_50_240:                                                          jmp   n9_var_α
n8_cmp_test_β:          mov              r11, 9
                        add              rsp, 16;                             jmp   n7_coerce_numeric_β
                        .size            n8_cmp_test_bx, .-n8_cmp_test_bx
                        .type            n9_var_bx, @function
n9_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              r11, 10
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_assign_α
                        .size            n9_var_bx, .-n9_var_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # FIB
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
                        mov              rdi, qword ptr [rip + .Lassign_α_52_0]
                        .section         .rodata
.Lassign_α_52_1_s:      .string          "fib_recur.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_52_1_s]
                        mov              r8, 4
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
.Lassign_α_52_0:        .quad            .Lassign_α_52_0_s
.Lassign_α_52_0_s:      .string          "FIB"
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_statement_end_bx, @function
n11_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 96;                             jmp   RETURN
                        .size            n11_statement_end_bx, .-n11_statement_end_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
#=======================================================================================================================
# 	FIB = FIB(N - 1) + FIB(N - 2)			:(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n12_statement_begin_α:  mov              r11, 13
                        mov              r10, 3;                              jmp   n13_var_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   RETURN
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              r11, 14
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_lit_integer_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_58_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_binop_α
n14_lit_integer_β:      mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Llit_integer_α_58_0:   .quad            1
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            sub              rsp, 16
                        mov              r11, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_59_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_59_7
.Lbinop_α_59_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_59_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_59_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_59_4
.Lbinop_α_59_3:         movq             xmm0, rsi
.Lbinop_α_59_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_59_7:                                                               jmp   n16_call_α
.Lbinop_α_59_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_59_240
                        add              rsp, 16;                             jmp   n14_lit_integer_β
.Lbinop_α_59_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_call_α
n15_binop_β:            mov              r11, 16
                        add              rsp, 16;                             jmp   n14_lit_integer_β
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_call_bx, @function
n16_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             sub              rsp, 16
                        mov              r11, 17
                        lea              rcx, [rip + .Lcall_α_sig61z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lcall_α_sig61z:        .quad            1
                        .quad            .Lcall_α_61_2
                        .quad            .Lcall_α_61_2
                        .quad            16
.Lcall_α_61_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_61_29
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
.Lcall_α_61_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_61_240
                        add              rsp, 16;                             jmp   n15_binop_β
.Lcall_α_61_240:                                                              jmp   n17_var_α
n16_call_β:             mov              r11, 17;                             jmp   n15_binop_β
.Lcall_β_61_0:          .quad            .Lcall_β_61_0_s
.Lcall_β_61_0_s:        .string          "FIB"
                        .size            n16_call_bx, .-n16_call_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              sub              rsp, 16
                        mov              r11, 18
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_lit_integer_α
n17_var_β:              mov              r11, 18
                        add              rsp, 32;                             jmp   n15_binop_β
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_63_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_binop_α
n18_lit_integer_β:      mov              r11, 19
                        add              rsp, 16;                             jmp   n17_var_β
.Llit_integer_α_63_0:   .quad            2
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            sub              rsp, 16
                        mov              r11, 20
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_64_2
                        sub              rax, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_64_7
.Lbinop_α_64_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_64_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_64_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_64_4
.Lbinop_α_64_3:         movq             xmm0, rsi
.Lbinop_α_64_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_64_7:                                                               jmp   n20_call_α
.Lbinop_α_64_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_64_240
                        add              rsp, 16;                             jmp   n18_lit_integer_β
.Lbinop_α_64_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_call_α
n19_binop_β:            mov              r11, 20
                        add              rsp, 16;                             jmp   n18_lit_integer_β
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
                        mov              r11, 21
                        lea              rcx, [rip + .Lcall_α_sig66z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lcall_α_sig66z:        .quad            1
                        .quad            .Lcall_α_66_2
                        .quad            .Lcall_α_66_2
                        .quad            16
.Lcall_α_66_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_66_29
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
.Lcall_α_66_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_66_240
                        add              rsp, 16;                             jmp   n19_binop_β
.Lcall_α_66_240:                                                              jmp   n21_binop_α
n20_call_β:             mov              r11, 21;                             jmp   n19_binop_β
.Lcall_β_66_0:          .quad            .Lcall_β_66_0_s
.Lcall_β_66_0_s:        .string          "FIB"
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_binop_bx, @function
n21_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:            sub              rsp, 16
                        mov              r11, 22
                        mov              eax, dword ptr [rsp + 80]            # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_67_2
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_67_7
.Lbinop_α_67_2:         and              edx, 1;                              jz    .Lbinop_α_67_0
                        mov              rsi, qword ptr [rsp + 88]            # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_67_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_67_4
.Lbinop_α_67_3:         movq             xmm0, rsi
.Lbinop_α_67_4:         cmp              cl, 5;                               je    .Lbinop_α_67_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_67_6
.Lbinop_α_67_5:         movq             xmm1, rdi
.Lbinop_α_67_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_67_7:                                                               jmp   n22_assign_α
.Lbinop_α_67_0:         mov              rdi, qword ptr [rsp + 80]            # call
                        mov              rsi, qword ptr [rsp + 88]
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
                        cmp              al, 104;                             jne   .Lbinop_α_67_240
                        add              rsp, 32;                             jmp   n19_binop_β
.Lbinop_α_67_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_assign_α
                        .size            n21_binop_bx, .-n21_binop_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # FIB
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
                        mov              rdi, qword ptr [rip + .Lassign_α_68_0]
                        .section         .rodata
.Lassign_α_68_1_s:      .string          "fib_recur.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_68_1_s]
                        mov              r8, 5
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
                        pop              rax;                                 jmp   n23_statement_end_α
.Lassign_α_68_0:        .quad            .Lassign_α_68_0_s
.Lassign_α_68_0_s:      .string          "FIB"
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24
                        mov              r10, 3
                        add              rsp, 144;                            jmp   RETURN
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#=======================================================================================================================
# FIB_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n24_statement_begin_α:  mov              r11, 25
                        mov              r10, 4;                              jmp   n25_statement_end_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n26_statement_begin_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_statement_end_bx, @function
n25_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 4;                              jmp   n26_statement_begin_α
                        .size            n25_statement_end_bx, .-n25_statement_end_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
#=======================================================================================================================
# 	OUTPUT = FIB(24)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 5;                              jmp   n27_lit_integer_α
n26_statement_begin_β:  mov              r11, 27;                             jmp   main_γ
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_α
.Llit_integer_α_77_0:   .quad            24
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_call_bx, @function
n28_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             sub              rsp, 16
                        mov              r11, 29
                        lea              rcx, [rip + .Lcall_α_sig79z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lcall_α_sig79z:        .quad            1
                        .quad            .Lcall_α_79_2
                        .quad            .Lcall_α_79_2
                        .quad            16
.Lcall_α_79_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_79_29
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
.Lcall_α_79_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_79_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
.Lcall_α_79_240:                                                              jmp   n29_assign_α
n28_call_β:             mov              r11, 29;                             jmp   n26_statement_begin_β
.Lcall_β_79_0:          .quad            .Lcall_β_79_0_s
.Lcall_β_79_0_s:        .string          "FIB"
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_assign_bx, @function
n29_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 30
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
                        mov              rdi, qword ptr [rip + .Lassign_α_80_0]
                        .section         .rodata
.Lassign_α_80_1_s:      .string          "fib_recur.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_80_1_s]
                        mov              r8, 7
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_80_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_statement_end_α
.Lassign_α_80_0:        .quad            .Lassign_α_80_0_s
.Lassign_α_80_0_s:      .string          "OUTPUT"
                        .size            n29_assign_bx, .-n29_assign_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 31
                        mov              r10, 5
                        add              rsp, 32;                             jmp   main_γ
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_goto_bx, @function
n31_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_goto_α:             mov              r11, 32;                             jmp   n3_statement_begin_α
n31_goto_β:             mov              r11, 32;                             jmp   main_ω
                        .size            n31_goto_bx, .-n31_goto_bx
                        .type            n32_goto_bx, @function
n32_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:             mov              r11, 33;                             jmp   n24_statement_begin_α
n32_goto_β:             mov              r11, 33;                             jmp   main_ω
                        .size            n32_goto_bx, .-n32_goto_bx
                        .type            n33_define_bx, @function
n33_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 34
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
                        .size            n33_define_bx, .-n33_define_bx
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
.Lseala1:               .string          "FIB"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            FIB_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + FIB_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
