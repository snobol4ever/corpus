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
#         LNE('abc', 'xyz')          :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_string_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_cmp_test_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n2_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx35_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n25_lit_string_α
.Lx35_240:
                        add              rsp, 48
                                                                                        jmp   n3_lit_string_α
#=======================================================================================================================
#         LNE('abc', 'abc')          :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_lit_string_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_cmp_test_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx39_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n8_lit_string_α
.Lx39_240:
                        add              rsp, 48
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 917/002: LNE(abc,abc) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "FAIL 917/002: LNE(abc,abc) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx41_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         LNE('', 'a')               :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_lit_string_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_cmp_test_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n10_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx45_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n23_lit_string_α
.Lx45_240:
                        add              rsp, 48
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
#         LNE('', '')                :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_lit_string_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_cmp_test_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx49_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n16_lit_string_α
.Lx49_240:
                        add              rsp, 48
                                                                                        jmp   n14_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 917/004: LNE(null,null) should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_assign_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "FAIL 917/004: LNE(null,null) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
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
#         LNE('A', 'a')              :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_lit_string_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_cmp_test_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n18_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n21_lit_string_α
.Lx55_240:
                        add              rsp, 48
                                                                                        jmp   n19_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 917_lne (5/5)'
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "PASS 917_lne (5/5)"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 917/005: LNE(A,a) should succeed (ordinal)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 47
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "FAIL 917/005: LNE(A,a) should succeed (ordinal)"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 917/003: LNE(null,a) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n24_assign_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "FAIL 917/003: LNE(null,a) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx61_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 917/001: LNE(abc,xyz) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "FAIL 917/001: LNE(abc,xyz) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
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
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:
                                                                                        jmp   n3_lit_string_α
n27_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:
                                                                                        jmp   n8_lit_string_α
n28_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_goto_α:
                                                                                        jmp   n11_lit_string_α
n29_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_goto_α:
                                                                                        jmp   n16_lit_string_α
n30_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_goto_α:
                                                                                        jmp   n19_lit_string_α
n31_goto_β:
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
