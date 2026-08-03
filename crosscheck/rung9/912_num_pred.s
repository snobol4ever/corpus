                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:
                                                                                        jmp   n2_statement_begin_α
#=======================================================================================================================
#         LT(5, 4)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_lit_integer_α
.Lx246_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_coerce_numeric_α
.Lx247_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx249_1
                        cmp              eax, 3
                                                                                        jne   .Lx249_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx249_0
.Lx249_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n6_coerce_numeric_α
.Lx249_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n6_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx251_1
                        cmp              eax, 3
                                                                                        jne   .Lx251_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx251_0
.Lx251_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n7_cmp_test_α
.Lx251_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n7_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx253_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n13_statement_begin_α
.Lx253_240:
                                                                                        jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n9_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/001: LT(5,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "FAIL 912/001: LT(5,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx259_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_statement_end_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e001    LT(4, 4)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_lit_integer_α
.Lx264_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_coerce_numeric_α
.Lx265_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx267_1
                        cmp              eax, 3
                                                                                        jne   .Lx267_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx267_0
.Lx267_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n17_coerce_numeric_α
.Lx267_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx269_1
                        cmp              eax, 3
                                                                                        jne   .Lx269_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx269_0
.Lx269_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n18_cmp_test_α
.Lx269_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n18_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx271_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n24_statement_begin_α
.Lx271_240:
                                                                                        jmp   n19_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n20_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/002: LT(4,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "FAIL 912/002: LT(4,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx277_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n23_statement_end_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e002    LT(4, 5)                   :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_lit_integer_α
.Lx282_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_coerce_numeric_α
.Lx283_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx285_1
                        cmp              eax, 3
                                                                                        jne   .Lx285_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx285_0
.Lx285_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n28_coerce_numeric_α
.Lx285_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx287_1
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
.Lx287_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n29_cmp_test_α
.Lx287_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n29_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx289_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n218_statement_begin_α
.Lx289_240:
                                                                                        jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:
                                                                                        jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:
                                                                                        jmp   n32_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n33_statement_begin_α
#=======================================================================================================================
#         LE(5, 2)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_lit_integer_α
.Lx298_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_coerce_numeric_α
.Lx299_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n36_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx301_1
                        cmp              eax, 3
                                                                                        jne   .Lx301_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx301_0
.Lx301_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n37_coerce_numeric_α
.Lx301_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n37_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx303_1
                        cmp              eax, 3
                                                                                        jne   .Lx303_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx303_0
.Lx303_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n38_cmp_test_α
.Lx303_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n38_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx305_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n44_statement_begin_α
.Lx305_240:
                                                                                        jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n40_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/004: LE(5,2) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "FAIL 912/004: LE(5,2) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx311_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n43_statement_end_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e004    LE(4, 4)                   :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_lit_integer_α
.Lx316_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_coerce_numeric_α
.Lx317_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx319_1
                        cmp              eax, 3
                                                                                        jne   .Lx319_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx319_0
.Lx319_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n48_coerce_numeric_α
.Lx319_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx321_1
                        cmp              eax, 3
                                                                                        jne   .Lx321_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx321_0
.Lx321_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n49_cmp_test_α
.Lx321_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n49_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n49_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx323_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n214_statement_begin_α
.Lx323_240:
                                                                                        jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n51_statement_begin_α
#=======================================================================================================================
# e005    LE(4, 10)                  :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_lit_integer_α
.Lx328_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_coerce_numeric_α
.Lx329_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx331_1
                        cmp              eax, 3
                                                                                        jne   .Lx331_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx331_0
.Lx331_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n55_coerce_numeric_α
.Lx331_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n55_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx333_1
                        cmp              eax, 3
                                                                                        jne   .Lx333_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx333_0
.Lx333_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n56_cmp_test_α
.Lx333_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n56_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx335_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n210_statement_begin_α
.Lx335_240:
                                                                                        jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:
                                                                                        jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:
                                                                                        jmp   n59_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n60_statement_begin_α
#=======================================================================================================================
#         EQ(4, 5)                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:
                                                                                        jmp   n61_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_lit_integer_α
.Lx344_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_coerce_numeric_α
.Lx345_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n63_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx347_1
                        cmp              eax, 3
                                                                                        jne   .Lx347_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx347_0
.Lx347_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n64_coerce_numeric_α
.Lx347_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n64_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx349_1
                        cmp              eax, 3
                                                                                        jne   .Lx349_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx349_0
.Lx349_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n65_cmp_test_α
.Lx349_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n65_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n65_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx351_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n71_statement_begin_α
.Lx351_240:
                                                                                        jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n67_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/007: EQ(4,5) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_assign_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "FAIL 912/007: EQ(4,5) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx357_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n70_statement_end_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e007    EQ(5, 5)                   :s(e008)
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:
                                                                                        jmp   n72_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_lit_integer_α
.Lx362_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_coerce_numeric_α
.Lx363_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx365_1
                        cmp              eax, 3
                                                                                        jne   .Lx365_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx365_0
.Lx365_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n75_coerce_numeric_α
.Lx365_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx367_1
                        cmp              eax, 3
                                                                                        jne   .Lx367_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx367_0
.Lx367_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n76_cmp_test_α
.Lx367_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n76_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n76_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx369_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n206_statement_begin_α
.Lx369_240:
                                                                                        jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:
                                                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:
                                                                                        jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n80_statement_begin_α
#=======================================================================================================================
#         NE(4, 4)                   :f(e009)
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_lit_integer_α
.Lx378_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_coerce_numeric_α
.Lx379_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n83_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx381_1
                        cmp              eax, 3
                                                                                        jne   .Lx381_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx381_0
.Lx381_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n84_coerce_numeric_α
.Lx381_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n84_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx383_1
                        cmp              eax, 3
                                                                                        jne   .Lx383_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx383_0
.Lx383_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n85_cmp_test_α
.Lx383_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n85_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n85_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx385_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n91_statement_begin_α
.Lx385_240:
                                                                                        jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n87_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/009: NE(4,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:
                                                                                        jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_assign_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "FAIL 912/009: NE(4,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx391_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n90_statement_end_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e009    NE(4, 6)                   :s(e010)
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:
                                                                                        jmp   n92_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_lit_integer_α
.Lx396_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_coerce_numeric_α
.Lx397_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx399_1
                        cmp              eax, 3
                                                                                        jne   .Lx399_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx399_0
.Lx399_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n95_coerce_numeric_α
.Lx399_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n95_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx401_1
                        cmp              eax, 3
                                                                                        jne   .Lx401_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx401_0
.Lx401_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n96_cmp_test_α
.Lx401_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n96_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n96_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx403_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n202_statement_begin_α
.Lx403_240:
                                                                                        jmp   n97_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:
                                                                                        jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n100_statement_begin_α
#=======================================================================================================================
#         GT(4, 6)                   :f(e011)
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:
                                                                                        jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_lit_integer_α
.Lx412_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_coerce_numeric_α
.Lx413_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n103_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx415_1
                        cmp              eax, 3
                                                                                        jne   .Lx415_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx415_0
.Lx415_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n104_coerce_numeric_α
.Lx415_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n104_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n104_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx417_1
                        cmp              eax, 3
                                                                                        jne   .Lx417_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx417_0
.Lx417_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n105_cmp_test_α
.Lx417_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n105_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n105_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx419_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n111_statement_begin_α
.Lx419_240:
                                                                                        jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n107_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/011: GT(4,6) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "FAIL 912/011: GT(4,6) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx425_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n110_statement_end_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e011    GT(4, 4)                   :f(e012)
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n113_lit_integer_α
.Lx430_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n114_coerce_numeric_α
.Lx431_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx433_1
                        cmp              eax, 3
                                                                                        jne   .Lx433_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx433_0
.Lx433_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n115_coerce_numeric_α
.Lx433_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n115_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx435_1
                        cmp              eax, 3
                                                                                        jne   .Lx435_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx435_0
.Lx435_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n116_cmp_test_α
.Lx435_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n116_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n116_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx437_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n122_statement_begin_α
.Lx437_240:
                                                                                        jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n118_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/012: GT(4,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α:
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n120_assign_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "FAIL 912/012: GT(4,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx443_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n121_statement_end_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e012    GT(5, 2)                   :s(e013)
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α:
                                                                                        jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n124_lit_integer_α
.Lx448_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_coerce_numeric_α
.Lx449_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx451_1
                        cmp              eax, 3
                                                                                        jne   .Lx451_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx451_0
.Lx451_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n126_coerce_numeric_α
.Lx451_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n126_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx453_1
                        cmp              eax, 3
                                                                                        jne   .Lx453_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx453_0
.Lx453_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n127_cmp_test_α
.Lx453_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n127_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n127_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx455_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n198_statement_begin_α
.Lx455_240:
                                                                                        jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:
                                                                                        jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:
                                                                                        jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n131_statement_begin_α
#=======================================================================================================================
#         GE(5, 7)                   :f(e014)
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:
                                                                                        jmp   n132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_lit_integer_α
.Lx464_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n134_coerce_numeric_α
.Lx465_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n134_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx467_1
                        cmp              eax, 3
                                                                                        jne   .Lx467_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx467_0
.Lx467_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n135_coerce_numeric_α
.Lx467_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n135_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n135_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx469_1
                        cmp              eax, 3
                                                                                        jne   .Lx469_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx469_0
.Lx469_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n136_cmp_test_α
.Lx469_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n136_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n136_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx471_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n142_statement_begin_α
.Lx471_240:
                                                                                        jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n138_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/014: GE(5,7) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:
                                                                                        jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_assign_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "FAIL 912/014: GE(5,7) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx477_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n141_statement_end_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
# e014    GE(4, 4)                   :s(e015)
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:
                                                                                        jmp   n143_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n144_lit_integer_α
.Lx482_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n145_coerce_numeric_α
.Lx483_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n145_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx485_1
                        cmp              eax, 3
                                                                                        jne   .Lx485_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx485_0
.Lx485_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n146_coerce_numeric_α
.Lx485_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n146_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n146_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx487_1
                        cmp              eax, 3
                                                                                        jne   .Lx487_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx487_0
.Lx487_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n147_cmp_test_α
.Lx487_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n147_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n147_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx489_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n194_statement_begin_α
.Lx489_240:
                                                                                        jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n149_statement_begin_α
#=======================================================================================================================
# e015    GE(7, 5)                   :s(e016)
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:
                                                                                        jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_lit_integer_α
.Lx494_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n152_coerce_numeric_α
.Lx495_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n152_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx497_1
                        cmp              eax, 3
                                                                                        jne   .Lx497_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx497_0
.Lx497_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n153_coerce_numeric_α
.Lx497_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n153_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n153_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx499_1
                        cmp              eax, 3
                                                                                        jne   .Lx499_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx499_0
.Lx499_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n154_cmp_test_α
.Lx499_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n154_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n154_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx501_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n190_statement_begin_α
.Lx501_240:
                                                                                        jmp   n155_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:
                                                                                        jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α:
                                                                                        jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n158_statement_begin_α
#=======================================================================================================================
#         NE(4, 5 - 1)               :f(e017)
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:
                                                                                        jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n160_lit_integer_α
.Lx510_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_lit_integer_α
.Lx511_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n162_binop_α
.Lx512_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx513_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n171_statement_begin_α
.Lx513_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n163_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n163_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx515_1
                        cmp              eax, 3
                                                                                        jne   .Lx515_0
                        mov              eax, dword ptr [rsp + 16]                      # binop
                        cmp              eax, 3
                                                                                        jne   .Lx515_0
.Lx515_1:
                        mov              rax, qword ptr [rsp + 64]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 72]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n164_coerce_numeric_α
.Lx515_0:
                        lea              rdi, [rsp + 64]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # binop
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n164_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n164_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # binop
                        cmp              eax, 5
                                                                                        je    .Lx517_1
                        cmp              eax, 3
                                                                                        jne   .Lx517_0
                        mov              eax, dword ptr [rsp + 80]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx517_0
.Lx517_1:
                        mov              rax, qword ptr [rsp + 32]                      # binop
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # binop
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n165_cmp_test_α
.Lx517_0:
                        lea              rdi, [rsp + 32]                                # binop
                        lea              rsi, [rsp + 80]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n165_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n165_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx519_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n171_statement_begin_α
.Lx519_240:
                                                                                        jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n167_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/017: NE(4,5-1) should fail (both=4)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 44
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n169_assign_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "FAIL 912/017: NE(4,5-1) should fail (both=4)"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx525_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n170_statement_end_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:
                                                                                        jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                                                                                        jmp   n173_statement_begin_α
#=======================================================================================================================
#         NE('12', 12)                   :f(e018)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n175_lit_integer_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "12"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n176_coerce_numeric_α
.Lx535_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n176_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx537_1
                        cmp              eax, 3
                                                                                        jne   .Lx537_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx537_0
.Lx537_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n177_coerce_numeric_α
.Lx537_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n177_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n177_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx539_1
                        cmp              eax, 3
                                                                                        jne   .Lx539_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx539_0
.Lx539_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n178_cmp_test_α
.Lx539_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n178_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n178_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx541_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n184_statement_begin_α
.Lx541_240:
                                                                                        jmp   n179_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n180_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/018: NE(string,int) type mismatch' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α:
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n182_assign_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "FAIL 912/018: NE(string,int) type mismatch"
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx547_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n183_statement_end_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:
                                                                                        jmp   n185_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:
                                                                                        jmp   n186_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 912_num_pred (18/18)'
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α:
                                                                                        jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n188_assign_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "PASS 912_num_pred (18/18)"
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx557_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n189_statement_end_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/016: GE(7,5) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n192_assign_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "FAIL 912/016: GE(7,5) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx563_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n193_statement_end_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/015: GE(4,4) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n196_assign_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "FAIL 912/015: GE(4,4) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx569_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n197_statement_end_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/013: GT(5,2) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α:
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n200_assign_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "FAIL 912/013: GT(5,2) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx575_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n201_statement_end_α
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/010: NE(4,6) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α:
                                                                                        jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n204_assign_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "FAIL 912/010: NE(4,6) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx581_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n205_statement_end_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/008: EQ(5,5) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α:
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n208_assign_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "FAIL 912/008: EQ(5,5) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx587_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n209_statement_end_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/006: LE(4,10) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α:
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n212_assign_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "FAIL 912/006: LE(4,10) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx593_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n213_statement_end_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/005: LE(4,4) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α:
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n216_assign_α
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          "FAIL 912/005: LE(4,4) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx599_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n217_statement_end_α
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/003: LT(4,5) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n220_assign_α
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "FAIL 912/003: LT(4,5) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx605_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n221_statement_end_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n222_goto_α:
                                                                                        jmp   n13_statement_begin_α
n222_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_goto_α:
                                                                                        jmp   n24_statement_begin_α
n223_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_goto_α:
                                                                                        jmp   n31_statement_begin_α
n224_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_goto_α:
                                                                                        jmp   n44_statement_begin_α
n225_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n226_goto_α:
                                                                                        jmp   n51_statement_begin_α
n226_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n227_goto_α:
                                                                                        jmp   n58_statement_begin_α
n227_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n228_goto_α:
                                                                                        jmp   n71_statement_begin_α
n228_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n229_goto_α:
                                                                                        jmp   n78_statement_begin_α
n229_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_goto_α:
                                                                                        jmp   n91_statement_begin_α
n230_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n231_goto_α:
                                                                                        jmp   n98_statement_begin_α
n231_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n232_goto_α:
                                                                                        jmp   n111_statement_begin_α
n232_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_goto_α:
                                                                                        jmp   n122_statement_begin_α
n233_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:
                                                                                        jmp   n129_statement_begin_α
n234_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:
                                                                                        jmp   n142_statement_begin_α
n235_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_goto_α:
                                                                                        jmp   n149_statement_begin_α
n236_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_goto_α:
                                                                                        jmp   n156_statement_begin_α
n237_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_α:
                                                                                        jmp   n171_statement_begin_α
n238_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:
                                                                                        jmp   n184_statement_begin_α
n239_goto_β:
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
