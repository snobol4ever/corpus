                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
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
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n1_assign_α
.Lx18_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx                    # x
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]                    # x
                        mov              qword ptr [rsp + 0], rax                       # x
                        mov              qword ptr [rsp + 8], rdx                       # x
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n4_coerce_numeric_α
.Lx21_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 7
                                                                                        je    .Lx23_1
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
.Lx23_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n5_coerce_numeric_α
.Lx23_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 7
                                                                                        je    .Lx25_1
                        cmp              eax, 6
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n6_cmp_test_α
.Lx25_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n6_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n6_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx27_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n9_var_α
.Lx27_240:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 3                         # lit_string
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n8_assign_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx29_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   main_γ
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]                    # x
                        mov              qword ptr [rsp + 128], rax                     # x
                        mov              qword ptr [rsp + 136], rdx                     # x
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rsp + 112], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 120], rax                     # lit_integer
                                                                                        jmp   n11_coerce_numeric_α
.Lx31_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 7
                                                                                        je    .Lx33_1
                        cmp              eax, 6
                                                                                        jne   .Lx33_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx33_0
.Lx33_1:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n12_coerce_numeric_α
.Lx33_0:
                        lea              rdi, [rsp + 128]                               # self
                        lea              rsi, [rsp + 112]                               # other
                        lea              rdx, [rsp + 96]                                # out
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx35_1
                        cmp              eax, 6
                                                                                        jne   .Lx35_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx35_0
.Lx35_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n13_cmp_test_α
.Lx35_0:
                        lea              rdi, [rsp + 112]                               # self
                        lea              rsi, [rsp + 128]                               # other
                        lea              rdx, [rsp + 80]                                # out
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        lea              rdi, [rsp + 96]                                # a
                        lea              rsi, [rsp + 80]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n16_lit_string_α
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rsp + 48], 1                        # lit_string
                        mov              dword ptr [rsp + 52], 3                        # lit_string
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 56], rax                      # lit_string
                                                                                        jmp   n15_assign_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 48]                      # val
                        mov              rdx, qword ptr [rsp + 56]                      # val
                        mov              rdi, qword ptr [rip + .Lx39_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rsp + 64], 1                        # lit_string
                        mov              dword ptr [rsp + 68], 5                        # lit_string
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 72], rax                      # lit_string
                                                                                        jmp   n17_assign_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "other"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 64]                      # val
                        mov              rdx, qword ptr [rsp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx41_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
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
