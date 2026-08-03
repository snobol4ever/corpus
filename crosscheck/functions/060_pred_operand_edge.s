                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
# 	X = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
# 	X = '2'
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = GT(X, 1) 'a'
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_coerce_numeric_α
.Lx138_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx140_1
                        cmp              eax, 3
                                                                                        jne   .Lx140_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx140_0
.Lx140_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n12_coerce_numeric_α
.Lx140_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx142_1
                        cmp              eax, 3
                                                                                        jne   .Lx142_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx142_0
.Lx142_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n13_cmp_test_α
.Lx142_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx144_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n18_statement_begin_α
.Lx144_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_binop_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx147_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n17_statement_end_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = GT(2.5, 2) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_lit_integer_α
.Lx152_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_coerce_numeric_α
.Lx153_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_real
                        cmp              eax, 5
                                                                                        je    .Lx155_1
                        cmp              eax, 3
                                                                                        jne   .Lx155_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx155_0
.Lx155_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_real
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_real
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n22_coerce_numeric_α
.Lx155_0:
                        lea              rdi, [rsp + 32]                                # lit_real
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx157_1
                        cmp              eax, 3
                                                                                        jne   .Lx157_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_real
                        cmp              eax, 3
                                                                                        jne   .Lx157_0
.Lx157_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n23_cmp_test_α
.Lx157_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # lit_real
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n23_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx159_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_statement_begin_α
.Lx159_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_binop_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx162_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n27_statement_end_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n28_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LT('2.5', X) 'c'
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_var_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "2.5"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx170_1
                        cmp              eax, 3
                                                                                        jne   .Lx170_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx170_0
.Lx170_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n32_coerce_numeric_α
.Lx170_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx172_1
                        cmp              eax, 3
                                                                                        jne   .Lx172_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx172_0
.Lx172_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n33_cmp_test_α
.Lx172_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n33_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n33_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx174_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n38_statement_begin_α
.Lx174_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_binop_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx177_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n37_statement_end_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n38_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = EQ('2.0', 2) 'd'
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n40_lit_integer_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "2.0"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_coerce_numeric_α
.Lx183_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx185_1
                        cmp              eax, 3
                                                                                        jne   .Lx185_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx185_0
.Lx185_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n42_coerce_numeric_α
.Lx185_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n42_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx187_1
                        cmp              eax, 3
                                                                                        jne   .Lx187_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx187_0
.Lx187_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n43_cmp_test_α
.Lx187_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n43_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n43_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx189_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n48_statement_begin_α
.Lx189_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_binop_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx192_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n47_statement_end_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n48_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = GE(, 0) 'e'
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_lit_string_α
.Lx197_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_coerce_numeric_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx200_1
                        cmp              eax, 3
                                                                                        jne   .Lx200_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx200_0
.Lx200_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n52_coerce_numeric_α
.Lx200_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n52_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx202_1
                        cmp              eax, 3
                                                                                        jne   .Lx202_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx202_0
.Lx202_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n53_cmp_test_α
.Lx202_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 48]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n53_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n53_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx204_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n58_statement_begin_α
.Lx204_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_binop_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx207_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_statement_end_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n58_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LGT('b', 'a') 'f'
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_lit_string_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_cmp_test_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n61_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx215_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n66_statement_begin_α
.Lx215_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_binop_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n64_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx218_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n65_statement_end_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n66_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LGT(10, 9) 'g'
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_lit_integer_α
.Lx223_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_coerce_string_α
.Lx224_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 126                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n70_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 127                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n71_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n71_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx230_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n76_statement_begin_α
.Lx230_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_binop_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx233_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n75_statement_end_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n76_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = NE(3, X) 'h'
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_var_α
.Lx238_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx241_1
                        cmp              eax, 3
                                                                                        jne   .Lx241_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx241_0
.Lx241_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n80_coerce_numeric_α
.Lx241_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n80_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n80_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx243_1
                        cmp              eax, 3
                                                                                        jne   .Lx243_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx243_0
.Lx243_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n81_cmp_test_α
.Lx243_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n81_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n81_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx245_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n86_statement_begin_α
.Lx245_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_binop_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx248_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n85_statement_end_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n86_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LE(X, 2) 'i'
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_coerce_numeric_α
.Lx254_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx256_1
                        cmp              eax, 3
                                                                                        jne   .Lx256_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx256_0
.Lx256_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n90_coerce_numeric_α
.Lx256_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n90_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx258_1
                        cmp              eax, 3
                                                                                        jne   .Lx258_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx258_0
.Lx258_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n91_cmp_test_α
.Lx258_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n91_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n91_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx260_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n96_statement_begin_α
.Lx260_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_binop_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx263_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n95_statement_end_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LNE(X, 'q') 'j'
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_coerce_string_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 132                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n100_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n100_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # coerce_string
                        lea              rsi, [rsp + 32]                                # lit_string
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx273_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n105_statement_begin_α
.Lx273_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_binop_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx276_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n104_statement_end_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n105_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LLT('a', X) 'k'
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_var_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n108_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 131                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n109_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n109_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 48]                                # lit_string
                        lea              rsi, [rsp + 16]                                # coerce_string
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx286_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n114_statement_begin_α
.Lx286_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n111_binop_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx289_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n113_statement_end_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n114_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LEQ(X, '2') 'l'
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:
                                                                                        jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_coerce_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n117_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 122                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n118_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n118_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # coerce_string
                        lea              rsi, [rsp + 32]                                # lit_string
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx299_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx299_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n120_binop_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx302_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n122_statement_end_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   main_γ
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
