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
#         LLE('abc', 'abc')          :s(e001)
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
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n2_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx41_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n30_lit_string_α
.Lx41_240:
                        add              rsp, 48
                                                                                        jmp   n3_lit_string_α
#=======================================================================================================================
#         LLE('abc', 'xyz')          :s(e002)
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
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx45_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n28_lit_string_α
.Lx45_240:
                        add              rsp, 48
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         LLE('xyz', 'abc')          :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_lit_string_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_cmp_test_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx49_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n11_lit_string_α
.Lx49_240:
                        add              rsp, 48
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 919/003: LLE(xyz,abc) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_assign_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "FAIL 919/003: LLE(xyz,abc) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         LLE('', 'abc')             :s(e004)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_lit_string_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_cmp_test_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx55_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n26_lit_string_α
.Lx55_240:
                        add              rsp, 48
                                                                                        jmp   n14_lit_string_α
#=======================================================================================================================
#         LLE('', '')                :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_lit_string_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_cmp_test_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n16_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx59_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n24_lit_string_α
.Lx59_240:
                        add              rsp, 48
                                                                                        jmp   n17_lit_string_α
#=======================================================================================================================
#         LLE('A', 'a')              :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_lit_string_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_cmp_test_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n19_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx63_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n22_lit_string_α
.Lx63_240:
                        add              rsp, 48
                                                                                        jmp   n20_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 919_lle (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_assign_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "PASS 919_lle (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 919/006: LLE(A,a) should succeed (ordinal)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 47
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "FAIL 919/006: LLE(A,a) should succeed (ordinal)"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 919/005: LLE(null,null) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "FAIL 919/005: LLE(null,null) should succeed"
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
#         OUTPUT = 'FAIL 919/004: LLE(null,abc) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "FAIL 919/004: LLE(null,abc) should succeed"
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
#         OUTPUT = 'FAIL 919/002: LLE(abc,xyz) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_assign_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "FAIL 919/002: LLE(abc,xyz) should succeed"
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
#         OUTPUT = 'FAIL 919/001: LLE(abc,abc) should succeed' :(END)
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
                        .string          "FAIL 919/001: LLE(abc,abc) should succeed"
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
                                                                                        jmp   n6_lit_string_α
n33_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n11_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n14_lit_string_α
n35_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n17_lit_string_α
n36_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n20_lit_string_α
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
