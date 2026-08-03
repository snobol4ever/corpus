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
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_α:
                                                                                        jmp   n1_lit_string_α
#=======================================================================================================================
#         LGE('abc', 'abc')          :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_lit_string_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_cmp_test_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n3_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx63_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n49_lit_string_α
.Lx63_240:
                                                                                        jmp   n4_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_α:
                                                                                        jmp   n5_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_α:
                        add              rsp, 48
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
#         LGE('xyz', 'abc')          :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_cmp_test_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx71_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n46_lit_string_α
.Lx71_240:
                                                                                        jmp   n9_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                                                                                        jmp   n10_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_α:
                        add              rsp, 48
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
#         LGE('abc', 'xyz')          :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_lit_string_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_cmp_test_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx79_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n18_statement_α
.Lx79_240:
                                                                                        jmp   n14_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_α:
                        add              rsp, 48
                                                                                        jmp   n15_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/003: LGE(abc,xyz) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "FAIL 918/003: LGE(abc,xyz) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx83_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n17_statement_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_α:
                                                                                        jmp   n19_lit_string_α
#=======================================================================================================================
#         LGE('abc', '')             :s(e004)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_lit_string_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_cmp_test_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n21_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx91_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n43_lit_string_α
.Lx91_240:
                                                                                        jmp   n22_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_α:
                                                                                        jmp   n23_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_α:
                        add              rsp, 48
                                                                                        jmp   n24_lit_string_α
#=======================================================================================================================
#         LGE('', '')                :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_lit_string_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_cmp_test_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n26_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx99_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n40_lit_string_α
.Lx99_240:
                                                                                        jmp   n27_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_α:
                                                                                        jmp   n28_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_α:
                        add              rsp, 48
                                                                                        jmp   n29_lit_string_α
#=======================================================================================================================
#         LGE('a', 'A')              :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_lit_string_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_cmp_test_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n31_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # lit_string
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   .Lx107_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n37_lit_string_α
.Lx107_240:
                                                                                        jmp   n32_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_α:
                                                                                        jmp   n33_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_α:
                        add              rsp, 48
                                                                                        jmp   n34_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 918_lge (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_assign_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "PASS 918_lge (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx113_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n36_statement_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/006: LGE(a,A) should succeed (ordinal)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 47
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "FAIL 918/006: LGE(a,A) should succeed (ordinal)"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx117_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n39_statement_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/005: LGE(null,null) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "FAIL 918/005: LGE(null,null) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx121_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n42_statement_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/004: LGE(abc,null) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_assign_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "FAIL 918/004: LGE(abc,null) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx125_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n45_statement_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/002: LGE(xyz,abc) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "FAIL 918/002: LGE(xyz,abc) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx129_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n48_statement_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/001: LGE(abc,abc) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "FAIL 918/001: LGE(abc,abc) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx133_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n51_statement_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n5_statement_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   n10_statement_α
n53_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                                                                                        jmp   n18_statement_α
n54_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_α:
                                                                                        jmp   n23_statement_α
n55_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_goto_α:
                                                                                        jmp   n28_statement_α
n56_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_α:
                                                                                        jmp   n33_statement_α
n57_goto_β:
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
