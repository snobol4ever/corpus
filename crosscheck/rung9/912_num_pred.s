                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         LT(5, 4)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_integer_α
.Lx148_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_coerce_numeric_α
.Lx149_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx151_1
                        cmp              eax, 3
                                                                                        jne   .Lx151_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx151_0
.Lx151_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n3_coerce_numeric_α
.Lx151_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n3_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx153_1
                        cmp              eax, 3
                                                                                        jne   .Lx153_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx153_0
.Lx153_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n4_cmp_test_α
.Lx153_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n4_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx155_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_integer_α
.Lx155_240:
                        add              rsp, 80
                                                                                        jmp   n5_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/001: LT(5,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "FAIL 912/001: LT(5,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx157_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e001    LT(4, 4)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_lit_integer_α
.Lx158_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_coerce_numeric_α
.Lx159_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx161_1
                        cmp              eax, 3
                                                                                        jne   .Lx161_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx161_0
.Lx161_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n10_coerce_numeric_α
.Lx161_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx163_1
                        cmp              eax, 3
                                                                                        jne   .Lx163_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx163_0
.Lx163_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n11_cmp_test_α
.Lx163_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n11_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx165_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n14_lit_integer_α
.Lx165_240:
                        add              rsp, 80
                                                                                        jmp   n12_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/002: LT(4,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "FAIL 912/002: LT(4,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx167_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e002    LT(4, 5)                   :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_lit_integer_α
.Lx168_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_coerce_numeric_α
.Lx169_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx171_1
                        cmp              eax, 3
                                                                                        jne   .Lx171_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx171_0
.Lx171_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n17_coerce_numeric_α
.Lx171_0:
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
                                                                                        je    .Lx173_1
                        cmp              eax, 3
                                                                                        jne   .Lx173_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx173_0
.Lx173_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n18_cmp_test_α
.Lx173_0:
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
                                                                                        js    .Lx175_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n128_lit_string_α
.Lx175_240:
                        add              rsp, 80
                                                                                        jmp   n19_lit_integer_α
#=======================================================================================================================
#         LE(5, 2)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_lit_integer_α
.Lx176_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_coerce_numeric_α
.Lx177_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx179_1
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
.Lx179_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n22_coerce_numeric_α
.Lx179_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx181_1
                        cmp              eax, 3
                                                                                        jne   .Lx181_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx181_0
.Lx181_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n23_cmp_test_α
.Lx181_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n23_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx183_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n26_lit_integer_α
.Lx183_240:
                        add              rsp, 80
                                                                                        jmp   n24_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/004: LE(5,2) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "FAIL 912/004: LE(5,2) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx185_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e004    LE(4, 4)                   :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_lit_integer_α
.Lx186_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_coerce_numeric_α
.Lx187_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx189_1
                        cmp              eax, 3
                                                                                        jne   .Lx189_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx189_0
.Lx189_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n29_coerce_numeric_α
.Lx189_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx191_1
                        cmp              eax, 3
                                                                                        jne   .Lx191_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx191_0
.Lx191_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n30_cmp_test_α
.Lx191_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n30_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx193_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n126_lit_string_α
.Lx193_240:
                        add              rsp, 80
                                                                                        jmp   n31_lit_integer_α
#=======================================================================================================================
# e005    LE(4, 10)                  :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_lit_integer_α
.Lx194_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_coerce_numeric_α
.Lx195_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx197_1
                        cmp              eax, 3
                                                                                        jne   .Lx197_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx197_0
.Lx197_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n34_coerce_numeric_α
.Lx197_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n34_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n34_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx199_1
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
.Lx199_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n35_cmp_test_α
.Lx199_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n35_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n35_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx201_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n124_lit_string_α
.Lx201_240:
                        add              rsp, 80
                                                                                        jmp   n36_lit_integer_α
#=======================================================================================================================
#         EQ(4, 5)                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_lit_integer_α
.Lx202_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_coerce_numeric_α
.Lx203_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n38_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx205_1
                        cmp              eax, 3
                                                                                        jne   .Lx205_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx205_0
.Lx205_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n39_coerce_numeric_α
.Lx205_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n39_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx207_1
                        cmp              eax, 3
                                                                                        jne   .Lx207_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx207_0
.Lx207_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n40_cmp_test_α
.Lx207_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n40_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx209_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n43_lit_integer_α
.Lx209_240:
                        add              rsp, 80
                                                                                        jmp   n41_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/007: EQ(4,5) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "FAIL 912/007: EQ(4,5) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx211_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e007    EQ(5, 5)                   :s(e008)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_lit_integer_α
.Lx212_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_coerce_numeric_α
.Lx213_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx215_1
                        cmp              eax, 3
                                                                                        jne   .Lx215_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx215_0
.Lx215_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n46_coerce_numeric_α
.Lx215_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n46_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx217_1
                        cmp              eax, 3
                                                                                        jne   .Lx217_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx217_0
.Lx217_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n47_cmp_test_α
.Lx217_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n47_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n47_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx219_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n122_lit_string_α
.Lx219_240:
                        add              rsp, 80
                                                                                        jmp   n48_lit_integer_α
#=======================================================================================================================
#         NE(4, 4)                   :f(e009)
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_lit_integer_α
.Lx220_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_coerce_numeric_α
.Lx221_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n50_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx223_1
                        cmp              eax, 3
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx223_0
.Lx223_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n51_coerce_numeric_α
.Lx223_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n51_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx225_1
                        cmp              eax, 3
                                                                                        jne   .Lx225_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx225_0
.Lx225_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n52_cmp_test_α
.Lx225_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n52_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n52_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx227_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n55_lit_integer_α
.Lx227_240:
                        add              rsp, 80
                                                                                        jmp   n53_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/009: NE(4,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_assign_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "FAIL 912/009: NE(4,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx229_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e009    NE(4, 6)                   :s(e010)
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_lit_integer_α
.Lx230_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_coerce_numeric_α
.Lx231_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx233_1
                        cmp              eax, 3
                                                                                        jne   .Lx233_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx233_0
.Lx233_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n58_coerce_numeric_α
.Lx233_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx235_1
                        cmp              eax, 3
                                                                                        jne   .Lx235_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx235_0
.Lx235_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n59_cmp_test_α
.Lx235_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n59_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n59_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx237_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n120_lit_string_α
.Lx237_240:
                        add              rsp, 80
                                                                                        jmp   n60_lit_integer_α
#=======================================================================================================================
#         GT(4, 6)                   :f(e011)
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_lit_integer_α
.Lx238_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_coerce_numeric_α
.Lx239_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n62_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx241_1
                        cmp              eax, 3
                                                                                        jne   .Lx241_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx241_0
.Lx241_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n63_coerce_numeric_α
.Lx241_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n63_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n63_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx243_1
                        cmp              eax, 3
                                                                                        jne   .Lx243_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx243_0
.Lx243_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n64_cmp_test_α
.Lx243_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n64_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n64_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx245_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n67_lit_integer_α
.Lx245_240:
                        add              rsp, 80
                                                                                        jmp   n65_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/011: GT(4,6) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "FAIL 912/011: GT(4,6) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx247_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e011    GT(4, 4)                   :f(e012)
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_lit_integer_α
.Lx248_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_coerce_numeric_α
.Lx249_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx251_1
                        cmp              eax, 3
                                                                                        jne   .Lx251_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx251_0
.Lx251_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n70_coerce_numeric_α
.Lx251_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx253_1
                        cmp              eax, 3
                                                                                        jne   .Lx253_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx253_0
.Lx253_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n71_cmp_test_α
.Lx253_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n71_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n71_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx255_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n74_lit_integer_α
.Lx255_240:
                        add              rsp, 80
                                                                                        jmp   n72_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/012: GT(4,4) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_assign_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "FAIL 912/012: GT(4,4) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx257_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e012    GT(5, 2)                   :s(e013)
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n75_lit_integer_α
.Lx258_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_coerce_numeric_α
.Lx259_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx261_1
                        cmp              eax, 3
                                                                                        jne   .Lx261_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx261_0
.Lx261_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n77_coerce_numeric_α
.Lx261_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n77_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx263_1
                        cmp              eax, 3
                                                                                        jne   .Lx263_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx263_0
.Lx263_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n78_cmp_test_α
.Lx263_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n78_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n78_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx265_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n118_lit_string_α
.Lx265_240:
                        add              rsp, 80
                                                                                        jmp   n79_lit_integer_α
#=======================================================================================================================
#         GE(5, 7)                   :f(e014)
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n80_lit_integer_α
.Lx266_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_coerce_numeric_α
.Lx267_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx269_1
                        cmp              eax, 3
                                                                                        jne   .Lx269_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx269_0
.Lx269_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n82_coerce_numeric_α
.Lx269_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n82_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx271_1
                        cmp              eax, 3
                                                                                        jne   .Lx271_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx271_0
.Lx271_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n83_cmp_test_α
.Lx271_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n83_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n83_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx273_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n86_lit_integer_α
.Lx273_240:
                        add              rsp, 80
                                                                                        jmp   n84_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/014: GE(5,7) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n85_assign_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "FAIL 912/014: GE(5,7) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx275_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e014    GE(4, 4)                   :s(e015)
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n87_lit_integer_α
.Lx276_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_coerce_numeric_α
.Lx277_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx279_1
                        cmp              eax, 3
                                                                                        jne   .Lx279_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx279_0
.Lx279_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n89_coerce_numeric_α
.Lx279_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n89_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx281_1
                        cmp              eax, 3
                                                                                        jne   .Lx281_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx281_0
.Lx281_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n90_cmp_test_α
.Lx281_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n90_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n90_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx283_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n116_lit_string_α
.Lx283_240:
                        add              rsp, 80
                                                                                        jmp   n91_lit_integer_α
#=======================================================================================================================
# e015    GE(7, 5)                   :s(e016)
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_lit_integer_α
.Lx284_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_coerce_numeric_α
.Lx285_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx287_1
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
.Lx287_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n94_coerce_numeric_α
.Lx287_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 109                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n94_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx289_1
                        cmp              eax, 3
                                                                                        jne   .Lx289_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx289_0
.Lx289_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n95_cmp_test_α
.Lx289_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 110                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n95_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n95_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx291_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n114_lit_string_α
.Lx291_240:
                        add              rsp, 80
                                                                                        jmp   n96_lit_integer_α
#=======================================================================================================================
#         NE(4, 5 - 1)               :f(e017)
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_lit_integer_α
.Lx292_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_lit_integer_α
.Lx293_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_binop_α
.Lx294_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx295_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n105_lit_string_α
.Lx295_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n100_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx297_1
                        cmp              eax, 3
                                                                                        jne   .Lx297_0
                        mov              eax, dword ptr [rsp + 16]                      # binop
                        cmp              eax, 3
                                                                                        jne   .Lx297_0
.Lx297_1:
                        mov              rax, qword ptr [rsp + 64]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 72]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n101_coerce_numeric_α
.Lx297_0:
                        lea              rdi, [rsp + 64]                                # lit_integer
                        lea              rsi, [rsp + 16]                                # binop
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n101_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n101_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # binop
                        cmp              eax, 5
                                                                                        je    .Lx299_1
                        cmp              eax, 3
                                                                                        jne   .Lx299_0
                        mov              eax, dword ptr [rsp + 80]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx299_0
.Lx299_1:
                        mov              rax, qword ptr [rsp + 32]                      # binop
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # binop
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n102_cmp_test_α
.Lx299_0:
                        lea              rdi, [rsp + 32]                                # binop
                        lea              rsi, [rsp + 80]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n102_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n102_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx301_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n105_lit_string_α
.Lx301_240:
                        add              rsp, 112
                                                                                        jmp   n103_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/017: NE(4,5-1) should fail (both=4)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 44
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_assign_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "FAIL 912/017: NE(4,5-1) should fail (both=4)"
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx303_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         NE('12', 12)                   :f(e018)
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n106_lit_integer_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "12"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_coerce_numeric_α
.Lx305_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n107_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_string
                        cmp              eax, 5
                                                                                        je    .Lx307_1
                        cmp              eax, 3
                                                                                        jne   .Lx307_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx307_0
.Lx307_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_string
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_string
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n108_coerce_numeric_α
.Lx307_0:
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n108_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx309_1
                        cmp              eax, 3
                                                                                        jne   .Lx309_0
                        mov              eax, dword ptr [rsp + 48]                      # lit_string
                        cmp              eax, 3
                                                                                        jne   .Lx309_0
.Lx309_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n109_cmp_test_α
.Lx309_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # lit_string
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n109_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n109_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx311_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n112_lit_string_α
.Lx311_240:
                        add              rsp, 80
                                                                                        jmp   n110_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/018: NE(string,int) type mismatch' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n111_assign_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "FAIL 912/018: NE(string,int) type mismatch"
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx313_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 912_num_pred (18/18)'
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n113_assign_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "PASS 912_num_pred (18/18)"
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx315_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/016: GE(7,5) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_assign_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "FAIL 912/016: GE(7,5) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx317_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/015: GE(4,4) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_assign_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "FAIL 912/015: GE(4,4) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx319_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/013: GT(5,2) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "FAIL 912/013: GT(5,2) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx321_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/010: NE(4,6) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n121_assign_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "FAIL 912/010: NE(4,6) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx323_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/008: EQ(5,5) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_assign_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "FAIL 912/008: EQ(5,5) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx325_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/006: LE(4,10) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_assign_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "FAIL 912/006: LE(4,10) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx327_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/005: LE(4,4) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n127_assign_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "FAIL 912/005: LE(4,4) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx329_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 912/003: LT(4,5) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n129_assign_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "FAIL 912/003: LT(4,5) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx331_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n130_goto_α:
                                                                                        jmp   n7_lit_integer_α
n130_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_goto_α:
                                                                                        jmp   n14_lit_integer_α
n131_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_goto_α:
                                                                                        jmp   n19_lit_integer_α
n132_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_goto_α:
                                                                                        jmp   n26_lit_integer_α
n133_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_goto_α:
                                                                                        jmp   n31_lit_integer_α
n134_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_goto_α:
                                                                                        jmp   n36_lit_integer_α
n135_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n136_goto_α:
                                                                                        jmp   n43_lit_integer_α
n136_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_goto_α:
                                                                                        jmp   n48_lit_integer_α
n137_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_goto_α:
                                                                                        jmp   n55_lit_integer_α
n138_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_goto_α:
                                                                                        jmp   n60_lit_integer_α
n139_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_goto_α:
                                                                                        jmp   n67_lit_integer_α
n140_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_goto_α:
                                                                                        jmp   n74_lit_integer_α
n141_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_goto_α:
                                                                                        jmp   n79_lit_integer_α
n142_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_goto_α:
                                                                                        jmp   n86_lit_integer_α
n143_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n144_goto_α:
                                                                                        jmp   n91_lit_integer_α
n144_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_α:
                                                                                        jmp   n96_lit_integer_α
n145_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_goto_α:
                                                                                        jmp   n105_lit_string_α
n146_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_goto_α:
                                                                                        jmp   n112_lit_string_α
n147_goto_β:
                                                                                        jmp   main_ω
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
