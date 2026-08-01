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
#         DIFFER(2.0 + 3.0, 5.0)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_real_α
.Lx51_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_binop_α
.Lx52_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx53_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_real_α
.Lx53_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_call_α
.Lx54_0:
                        .quad            4617315517961601024
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
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
.Lrkfnzd56:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd56]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_real_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n5_lit_string_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_real_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/001: 2.0+3.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "FAIL 412/001: 2.0+3.0"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3.0 - 1.0, 2.0)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_lit_real_α
.Lx59_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_binop_α
.Lx60_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx61_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n14_lit_real_α
.Lx61_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_call_α
.Lx62_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:
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
.Lrkfnzd64:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd64]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx63_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n14_lit_real_α
.Lx63_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n12_lit_string_α
n11_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n14_lit_real_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/002: 3.0-1.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "FAIL 412/002: 3.0-1.0"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3.0 * 2.0, 6.0)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_lit_real_α
.Lx67_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_binop_α
.Lx68_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx69_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n21_lit_real_α
.Lx69_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_call_α
.Lx70_0:
                        .quad            4618441417868443648
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
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
.Lrkfnzd72:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd72]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx71_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n21_lit_real_α
.Lx71_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n19_lit_string_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n21_lit_real_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/003: 3.0*2.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "FAIL 412/003: 3.0*2.0"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx74_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3.0 / 2.0, 1.5)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_lit_real_α
.Lx75_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_binop_α
.Lx76_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx77_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n28_lit_real_α
.Lx77_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_call_α
.Lx78_0:
                        .quad            4609434218613702656
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:
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
.Lrkfnzd80:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd80]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx79_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_lit_real_α
.Lx79_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n26_lit_string_α
n25_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_lit_real_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/004: 3.0/2.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "FAIL 412/004: 3.0/2.0"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx82_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3.0 ** 3, 27.0)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_lit_integer_α
.Lx83_0:
                        .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_binop_α
.Lx84_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx85_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_lit_real_α
.Lx85_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_α
.Lx86_0:
                        .quad            4628293042053316608
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
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
.Lrkfnzd88:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd88]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx87_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n35_lit_real_α
.Lx87_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n33_lit_string_α
n32_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n35_lit_real_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/005: 3.0**3'               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "FAIL 412/005: 3.0**3"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx90_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(-1.0, 0.0 - 1.0)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_unop_α
.Lx91_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n36_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_lit_real_α
.Lx93_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_binop_α
.Lx94_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n43_lit_string_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_call_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd97:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd97]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx96_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n43_lit_string_α
.Lx96_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n41_lit_string_α
n40_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n43_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/006: unary minus on real'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "FAIL 412/006: unary minus on real"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx99_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 412_arith_real (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_assign_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "PASS 412_arith_real (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx101_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n7_lit_real_α
n45_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n14_lit_real_α
n46_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n21_lit_real_α
n47_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n28_lit_real_α
n48_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n35_lit_real_α
n49_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_α:
                                                                                        jmp   n43_lit_string_α
n50_goto_β:
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
