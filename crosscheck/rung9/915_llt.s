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
#         LLT('abc', 'xyz')          :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_string_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_cmp_test_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n2_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx41_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n30_lit_string_α
.Lx41_240:
                        add              rsp, 48
                                                                                        jmp   n3_lit_string_α
#=======================================================================================================================
#         LLT('abc', 'abc')          :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_lit_string_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_cmp_test_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx45_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n8_lit_string_α
.Lx45_240:
                        add              rsp, 48
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 915/002: LLT(abc,abc) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "FAIL 915/002: LLT(abc,abc) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx47_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         LLT('xyz', 'abc')          :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_lit_string_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_cmp_test_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n10_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx51_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n13_lit_string_α
.Lx51_240:
                        add              rsp, 48
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 915/003: LLT(xyz,abc) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "FAIL 915/003: LLT(xyz,abc) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx53_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         LLT('', 'abc')             :s(e004)
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_cmp_test_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n15_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx57_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n28_lit_string_α
.Lx57_240:
                        add              rsp, 48
                                                                                        jmp   n16_lit_string_α
#=======================================================================================================================
#         LLT('abc', '')             :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_lit_string_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_cmp_test_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx61_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n21_lit_string_α
.Lx61_240:
                        add              rsp, 48
                                                                                        jmp   n19_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 915/005: LLT(abc,null) should fail'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "FAIL 915/005: LLT(abc,null) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         LLT('A', 'a')              :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_cmp_test_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n23_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx67_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n26_lit_string_α
.Lx67_240:
                        add              rsp, 48
                                                                                        jmp   n24_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 915_llt (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "PASS 915_llt (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 915/006: LLT(A,a) should succeed (ordinal)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 47
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "FAIL 915/006: LLT(A,a) should succeed (ordinal)"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 915/004: LLT(null,abc) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_assign_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "FAIL 915/004: LLT(null,abc) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx73_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 915/001: LLT(abc,xyz) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_assign_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "FAIL 915/001: LLT(abc,xyz) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx75_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                                                                                        jmp   n3_lit_string_α
n32_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_goto_α:
                                                                                        jmp   n8_lit_string_α
n33_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n13_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n16_lit_string_α
n35_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n21_lit_string_α
n36_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n24_lit_string_α
n37_goto_β:
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
