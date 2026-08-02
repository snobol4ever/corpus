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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
# 	X = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
# 	X = '2'
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n4_var_α
#=======================================================================================================================
# 	OUTPUT = GT(X, 1) 'a'
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_coerce_numeric_α
.Lx100_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx102_1
                        cmp              eax, 3
                                                                                        jne   .Lx102_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx102_0
.Lx102_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n7_coerce_numeric_α
.Lx102_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx104_1
                        cmp              eax, 3
                                                                                        jne   .Lx104_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx104_0
.Lx104_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n8_cmp_test_α
.Lx104_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx106_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n12_lit_real_α
.Lx106_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_binop_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx109_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n12_lit_real_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = GT(2.5, 2) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_lit_integer_α
.Lx110_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_coerce_numeric_α
.Lx111_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_real
                        cmp              eax, 5
                                                                                        je    .Lx113_1
                        cmp              eax, 3
                                                                                        jne   .Lx113_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx113_0
.Lx113_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_real
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_real
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n15_coerce_numeric_α
.Lx113_0:
                        lea              rdi, [rsp + 32]                                # lit_real
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx115_1
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_real
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
.Lx115_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n16_cmp_test_α
.Lx115_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # lit_real
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n16_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n16_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx117_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n20_lit_string_α
.Lx117_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_binop_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx120_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n20_lit_string_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LT('2.5', X) 'c'
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_var_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "2.5"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx124_1
                        cmp              eax, 3
                                                                                        jne   .Lx124_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx124_0
.Lx124_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n23_coerce_numeric_α
.Lx124_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx126_1
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
.Lx126_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n24_cmp_test_α
.Lx126_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n24_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n24_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx128_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_lit_string_α
.Lx128_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_binop_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx131_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n28_lit_string_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = EQ('2.0', 2) 'd'
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_lit_integer_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "2.0"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_coerce_numeric_α
.Lx133_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx135_1
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
.Lx135_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n31_coerce_numeric_α
.Lx135_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx137_1
                        cmp              eax, 3
                                                                                        jne   .Lx137_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx137_0
.Lx137_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n32_cmp_test_α
.Lx137_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n32_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx139_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n36_lit_integer_α
.Lx139_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_binop_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx142_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n36_lit_integer_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = GE(, 0) 'e'
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_lit_string_α
.Lx143_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_coerce_numeric_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n38_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx146_1
                        cmp              eax, 3
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx146_0
.Lx146_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n39_coerce_numeric_α
.Lx146_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n39_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx148_1
                        cmp              eax, 3
                                                                                        jne   .Lx148_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx148_0
.Lx148_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n40_cmp_test_α
.Lx148_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 48]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n40_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx150_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n44_lit_string_α
.Lx150_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_binop_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx153_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n44_lit_string_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LGT('b', 'a') 'f'
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_lit_string_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_cmp_test_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n46_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx157_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n50_lit_integer_α
.Lx157_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_binop_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx160_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   n50_lit_integer_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LGT(10, 9) 'g'
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_lit_integer_α
.Lx161_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_coerce_string_α
.Lx162_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 126                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n53_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 127                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n54_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n54_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx168_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n58_lit_integer_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_binop_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx171_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n58_lit_integer_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = NE(3, X) 'h'
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_var_α
.Lx172_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx175_1
                        cmp              eax, 3
                                                                                        jne   .Lx175_0
                        mov              eax, dword ptr [rsp + 16]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx175_0
.Lx175_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n61_coerce_numeric_α
.Lx175_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n61_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n61_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx177_1
                        cmp              eax, 3
                                                                                        jne   .Lx177_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx177_0
.Lx177_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n62_cmp_test_α
.Lx177_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n62_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n62_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx179_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n66_var_α
.Lx179_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_binop_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx182_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n66_var_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LE(X, 2) 'i'
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_coerce_numeric_α
.Lx184_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx186_1
                        cmp              eax, 3
                                                                                        jne   .Lx186_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx186_0
.Lx186_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n69_coerce_numeric_α
.Lx186_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n69_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx188_1
                        cmp              eax, 3
                                                                                        jne   .Lx188_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx188_0
.Lx188_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n70_cmp_test_α
.Lx188_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n70_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx190_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n74_var_α
.Lx190_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_binop_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx193_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n74_var_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LNE(X, 'q') 'j'
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_coerce_string_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 132                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n77_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n77_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # coerce_string
                        lea              rsi, [rsp + 32]                                # lit_string
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx199_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n81_lit_string_α
.Lx199_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_binop_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx202_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 96
                                                                                        jmp   n81_lit_string_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LLT('a', X) 'k'
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_var_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 131                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n84_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n84_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 48]                                # lit_string
                        lea              rsi, [rsp + 16]                                # coerce_string
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx208_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n88_var_α
.Lx208_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_binop_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx211_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 96
                                                                                        jmp   n88_var_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	OUTPUT = LEQ(X, '2') 'l'
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_coerce_string_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 122                                       # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n91_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n91_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # coerce_string
                        lea              rsi, [rsp + 32]                                # lit_string
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx217_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx217_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_binop_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "l"
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
                        mov              rdi, qword ptr [rip + .Lx220_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 96
                                                                                        jmp   main_γ
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
