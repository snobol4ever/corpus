                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "J"
.Lgvan3:                .string          "G"
.Lgvan4:                .string          "K"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         T = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_call_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd105:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx104_240
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx104_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_assign_α
n1_call_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # T
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_integer_α
n4_statement_begin_β:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx111_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # I
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
# mk      I = LT(I, 15) I + 1                                         :F(churn)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_var_α
n8_statement_begin_β:
                                                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_coerce_numeric_α
n10_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n39_statement_begin_α
.Lx118_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx120_1
                        cmp              eax, 3
                                                                                        jne   .Lx120_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx120_0
.Lx120_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n12_coerce_numeric_α
.Lx120_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_coerce_numeric_α
n11_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n10_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx122_1
                        cmp              eax, 3
                                                                                        jne   .Lx122_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx122_0
.Lx122_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n13_cmp_test_α
.Lx122_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_cmp_test_α
n12_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n11_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx124_240
                        add              rsp, 16
                                                                                        jmp   n12_coerce_numeric_β
.Lx124_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n14_var_α
n13_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n12_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_lit_integer_α
n14_var_β:
                        add              rsp, 16
                                                                                        jmp   n13_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_binop_α
n15_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n14_var_β
.Lx126_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx127_240
                        add              rsp, 16
                                                                                        jmp   n15_lit_integer_β
.Lx127_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_binop_α
n16_binop_β:
                        add              rsp, 16
                                                                                        jmp   n15_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_assign_α
n17_binop_β:
                        add              rsp, 16
                                                                                        jmp   n16_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # I
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n19_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n20_statement_begin_α
#=======================================================================================================================
#         T<'key-' I> = 'val-' I '-' DUPL('v', 6)
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_var_α
n20_statement_begin_β:
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # T
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_var_α
n22_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_statement_begin_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "key-"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_binop_α
n23_var_β:
                        add              rsp, 16
                                                                                        jmp   n22_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_subscript_α
n24_binop_β:
                        add              rsp, 16
                                                                                        jmp   n23_var_β
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # var
                        mov              rsi, qword ptr [rsp + 72]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx138_240
                        add              rsp, 16
                                                                                        jmp   n24_binop_β
.Lx138_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_lit_string_α
n25_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n24_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_var_α
n26_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n25_subscript_β
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "val-"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_binop_α
n27_var_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_lit_string_α
n28_binop_β:
                        add              rsp, 16
                                                                                        jmp   n27_var_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_binop_α
n29_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n28_binop_β
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_lit_string_α
n30_binop_β:
                        add              rsp, 16
                                                                                        jmp   n29_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_lit_integer_α
n31_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n30_binop_β
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_call_α
n32_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_β
.Lx145_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd147:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd147]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 16
                                                                                        jmp   n32_lit_integer_β
.Lx146_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_binop_α
n33_call_β:
                        add              rsp, 16
                                                                                        jmp   n32_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_var_α
n34_binop_β:
                        add              rsp, 32
                                                                                        jmp   n32_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 160]                     # subscript
                        mov              rsi, qword ptr [rsp + 168]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx149_240
                        add              rsp, 16
                                                                                        jmp   n34_binop_β
.Lx149_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                        add              rsp, 240
                                                                                        jmp   n37_statement_begin_α
#=======================================================================================================================
#         :(mk)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:
                                                                                        jmp   n38_statement_end_α
n37_statement_begin_β:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
# churn   J = 0
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:
                                                                                        jmp   n40_lit_integer_α
n39_statement_begin_β:
                                                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
.Lx158_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # J
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n43_statement_begin_α
#=======================================================================================================================
# cl      J = LT(J, 300) J + 1                                        :F(rd)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:
                                                                                        jmp   n44_var_α
n43_statement_begin_β:
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # J
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_coerce_numeric_α
n45_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n65_statement_begin_α
.Lx165_0:
                        .quad            300
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx167_1
                        cmp              eax, 3
                                                                                        jne   .Lx167_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx167_0
.Lx167_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n47_coerce_numeric_α
.Lx167_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n47_coerce_numeric_α
n46_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n45_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx169_1
                        cmp              eax, 3
                                                                                        jne   .Lx169_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx169_0
.Lx169_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n48_cmp_test_α
.Lx169_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_cmp_test_α
n47_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n46_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n48_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx171_240
                        add              rsp, 16
                                                                                        jmp   n47_coerce_numeric_β
.Lx171_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n49_var_α
n48_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n47_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # J
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_lit_integer_α
n49_var_β:
                        add              rsp, 16
                                                                                        jmp   n48_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_binop_α
n50_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n49_var_β
.Lx173_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx174_240
                        add              rsp, 16
                                                                                        jmp   n50_lit_integer_β
.Lx174_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_binop_α
n51_binop_β:
                        add              rsp, 16
                                                                                        jmp   n50_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_assign_α
n52_binop_β:
                        add              rsp, 16
                                                                                        jmp   n51_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # J
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n54_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n55_statement_begin_α
#=======================================================================================================================
#         G = DUPL('w', 25) J
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:
                                                                                        jmp   n56_lit_string_α
n55_statement_begin_β:
                                                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_lit_integer_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_call_α
n57_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_statement_begin_α
.Lx182_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd184:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd184]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx183_240
                        add              rsp, 16
                                                                                        jmp   n57_lit_integer_β
.Lx183_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_var_α
n58_call_β:
                        add              rsp, 16
                                                                                        jmp   n57_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # J
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_binop_α
n59_var_β:
                        add              rsp, 32
                                                                                        jmp   n57_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_assign_α
n60_binop_β:
                        add              rsp, 16
                                                                                        jmp   n59_var_β
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # G
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n63_statement_begin_α
#=======================================================================================================================
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:
                                                                                        jmp   n64_statement_end_α
n63_statement_begin_β:
                                                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                                                                                        jmp   n43_statement_begin_α
#=======================================================================================================================
# rd      K = 2 + 1
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_lit_integer_α
n65_statement_begin_β:
                                                                                        jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_lit_integer_α
.Lx196_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_binop_α
n67_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_statement_begin_α
.Lx197_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx198_240
                        add              rsp, 16
                                                                                        jmp   n67_lit_integer_β
.Lx198_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_assign_α
n68_binop_β:
                        add              rsp, 16
                                                                                        jmp   n67_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # K
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n70_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n71_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'key-' K>
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:
                                                                                        jmp   n72_var_α
n71_statement_begin_β:
                                                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # T
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_var_α
n73_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n80_statement_begin_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "key-"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # K
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_binop_α
n74_var_β:
                        add              rsp, 16
                                                                                        jmp   n73_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n76_subscript_α
n75_binop_β:
                        add              rsp, 16
                                                                                        jmp   n74_var_β
#-----------------------------------------------------------------------------------------------------------------------
n76_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # var
                        mov              rsi, qword ptr [rsp + 72]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx208_240
                        add              rsp, 16
                                                                                        jmp   n75_binop_β
.Lx208_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n77_deref_α
n76_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n75_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx209_240
                        add              rsp, 16
                                                                                        jmp   n76_subscript_β
.Lx209_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_assign_α
n77_deref_β:
                        add              rsp, 16
                                                                                        jmp   n76_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx210_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_statement_end_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n80_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'key-' 15>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_var_α
n80_statement_begin_β:
                                                                                        jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # T
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_lit_integer_α
n82_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n89_statement_begin_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "key-"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_binop_α
n83_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n82_lit_string_β
.Lx217_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_subscript_α
n84_binop_β:
                        add              rsp, 16
                                                                                        jmp   n83_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n85_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # var
                        mov              rsi, qword ptr [rsp + 72]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx219_240
                        add              rsp, 16
                                                                                        jmp   n84_binop_β
.Lx219_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_deref_α
n85_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n84_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n86_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx220_240
                        add              rsp, 16
                                                                                        jmp   n85_subscript_β
.Lx220_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_assign_α
n86_deref_β:
                        add              rsp, 16
                                                                                        jmp   n85_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx221_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n88_statement_end_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n89_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'key-' 7>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:
                                                                                        jmp   n90_var_α
n89_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # T
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_lit_integer_α
n91_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "key-"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_binop_α
n92_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n91_lit_string_β
.Lx228_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_subscript_α
n93_binop_β:
                        add              rsp, 16
                                                                                        jmp   n92_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n94_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # var
                        mov              rsi, qword ptr [rsp + 72]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx230_240
                        add              rsp, 16
                                                                                        jmp   n93_binop_β
.Lx230_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n95_deref_α
n94_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n93_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n95_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx231_240
                        add              rsp, 16
                                                                                        jmp   n94_subscript_β
.Lx231_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n96_assign_α
n95_deref_β:
                        add              rsp, 16
                                                                                        jmp   n94_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx232_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n97_statement_end_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n98_goto_α:
                                                                                        jmp   n8_statement_begin_α
n98_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                                                                                        jmp   n39_statement_begin_α
n99_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n43_statement_begin_α
n100_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:
                                                                                        jmp   n65_statement_begin_α
n101_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
