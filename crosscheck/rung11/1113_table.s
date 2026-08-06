                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "t"
.Lgvan1:                .string          "ta"
.Lgvan2:                .string          "ata"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_statement_end_α
n0_statement_begin_β:
                                                                                        jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:
                                                                                        jmp   n2_statement_begin_α
#=======================================================================================================================
#         t = TABLE(10)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:
                                                                                        jmp   n3_lit_integer_α
n2_statement_begin_β:
                                                                                        jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_call_α
.Lx169_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd171:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd171]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx170_240
                                                                                        jmp   n6_statement_end_α
.Lx170_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_assign_α
n4_call_β:
                                                                                        jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # t
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n7_statement_begin_α
#=======================================================================================================================
#         t = TABLE(10)
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:
                                                                                        jmp   n8_statement_end_α
n7_statement_begin_β:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                                                                                        jmp   n9_statement_begin_α
#=======================================================================================================================
#         DIFFER(t<'cat'>)           :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_var_α
n9_statement_begin_β:
                                                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_subscript_α
n11_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_statement_begin_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n12_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx183_240
                        add              rsp, 16
                                                                                        jmp   n11_lit_string_β
.Lx183_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_deref_α
n12_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n11_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n13_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx184_240
                        add              rsp, 16
                                                                                        jmp   n12_subscript_β
.Lx184_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_call_α
n13_deref_β:
                        add              rsp, 16
                                                                                        jmp   n12_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd186:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd186]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx185_240
                        add              rsp, 16
                                                                                        jmp   n13_deref_β
.Lx185_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_statement_end_α
n14_call_β:
                        add              rsp, 16
                                                                                        jmp   n13_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n16_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/001: absent key is null'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:
                                                                                        jmp   n17_lit_string_α
n16_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "FAIL 1113/001: absent key is null"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx192_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n19_statement_end_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_statement_end_α
n20_statement_begin_β:
                                                                                        jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:
                                                                                        jmp   n22_statement_begin_α
#=======================================================================================================================
#         t<'cat'> = 'dog'
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:
                                                                                        jmp   n23_var_α
n22_statement_begin_β:
                                                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_subscript_α
n24_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_statement_begin_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx203_240
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_β
.Lx203_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_lit_string_α
n25_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_var_α
n26_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n25_subscript_β
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx205_240
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_β
.Lx205_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n29_statement_begin_α
#=======================================================================================================================
#         DIFFER(t<'cat'>, 'dog')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:
                                                                                        jmp   n30_var_α
n29_statement_begin_β:
                                                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_subscript_α
n31_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_statement_begin_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n32_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx212_240
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_β
.Lx212_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_deref_α
n32_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n33_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx213_240
                        add              rsp, 16
                                                                                        jmp   n32_subscript_β
.Lx213_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_lit_string_α
n33_deref_β:
                        add              rsp, 16
                                                                                        jmp   n32_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_call_α
n34_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n33_deref_β
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:
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
.Lrkfnzd216:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd216]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx215_240
                        add              rsp, 16
                                                                                        jmp   n34_lit_string_β
.Lx215_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_statement_end_α
n35_call_β:
                        add              rsp, 16
                                                                                        jmp   n34_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n37_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/002: string key assign/read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:
                                                                                        jmp   n38_lit_string_α
n37_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "FAIL 1113/002: string key assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx222_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n40_statement_end_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:
                                                                                        jmp   n42_statement_end_α
n41_statement_begin_β:
                                                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:
                                                                                        jmp   n43_statement_begin_α
#=======================================================================================================================
#         t<7> = 45
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:
                                                                                        jmp   n44_var_α
n43_statement_begin_β:
                                                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_subscript_α
n45_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n50_statement_begin_α
.Lx232_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n46_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx233_240
                        add              rsp, 16
                                                                                        jmp   n45_lit_integer_β
.Lx233_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_lit_integer_α
n46_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n45_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_var_α
n47_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n46_subscript_β
.Lx234_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx235_240
                        add              rsp, 16
                                                                                        jmp   n47_lit_integer_β
.Lx235_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n50_statement_begin_α
#=======================================================================================================================
#         DIFFER(t<7>, 45)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:
                                                                                        jmp   n51_var_α
n50_statement_begin_β:
                                                                                        jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_subscript_α
n52_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n62_statement_begin_α
.Lx241_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n53_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx242_240
                        add              rsp, 16
                                                                                        jmp   n52_lit_integer_β
.Lx242_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_deref_α
n53_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx243_240
                        add              rsp, 16
                                                                                        jmp   n53_subscript_β
.Lx243_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_lit_integer_α
n54_deref_β:
                        add              rsp, 16
                                                                                        jmp   n53_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_call_α
n55_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n54_deref_β
.Lx244_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
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
.Lrkfnzd246:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd246]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx245_240
                        add              rsp, 16
                                                                                        jmp   n55_lit_integer_β
.Lx245_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_statement_end_α
n56_call_β:
                        add              rsp, 16
                                                                                        jmp   n55_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n58_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/003: integer key assign/read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:
                                                                                        jmp   n59_lit_string_α
n58_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_assign_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "FAIL 1113/003: integer key assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx252_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n61_statement_end_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:
                                                                                        jmp   n63_statement_end_α
n62_statement_begin_β:
                                                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                                                                                        jmp   n64_statement_begin_α
#=======================================================================================================================
#         DIFFER(t<'cat'>, 'dog')                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_var_α
n64_statement_begin_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_subscript_α
n66_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n76_statement_begin_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx263_240
                        add              rsp, 16
                                                                                        jmp   n66_lit_string_β
.Lx263_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_deref_α
n67_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n66_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx264_240
                        add              rsp, 16
                                                                                        jmp   n67_subscript_β
.Lx264_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_lit_string_α
n68_deref_β:
                        add              rsp, 16
                                                                                        jmp   n67_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_call_α
n69_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n68_deref_β
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:
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
.Lrkfnzd267:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd267]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx266_240
                        add              rsp, 16
                                                                                        jmp   n69_lit_string_β
.Lx266_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n71_statement_end_α
n70_call_β:
                        add              rsp, 16
                                                                                        jmp   n69_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n72_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/004: string key survives int key add' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:
                                                                                        jmp   n73_lit_string_α
n72_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 46
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "FAIL 1113/004: string key survives int key add"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx273_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n75_statement_end_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_statement_end_α
n76_statement_begin_β:
                                                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:
                                                                                        jmp   n78_statement_begin_α
#=======================================================================================================================
#         ta = CONVERT(t, 'ARRAY')
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:
                                                                                        jmp   n79_var_α
n78_statement_begin_β:
                                                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_call_α
n80_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n84_statement_begin_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "ARRAY"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:
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
.Lrkfnzd285:            .string          "CONVERT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd285]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx284_240
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_β
.Lx284_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_assign_α
n81_call_β:
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ta
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n84_statement_begin_α
#=======================================================================================================================
#         DIFFER(PROTOTYPE(ta), '2,2')                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:
                                                                                        jmp   n85_var_α
n84_statement_begin_β:
                                                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ta
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_call_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd293:            .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd293]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx292_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n94_statement_begin_α
.Lx292_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_lit_string_α
n86_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_call_α
n87_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n94_statement_begin_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "2,2"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
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
.Lrkfnzd296:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd296]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx295_240
                        add              rsp, 16
                                                                                        jmp   n87_lit_string_β
.Lx295_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_statement_end_α
n88_call_β:
                        add              rsp, 16
                                                                                        jmp   n87_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n90_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/005: table->array prototype 2,2' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:
                                                                                        jmp   n91_lit_string_α
n90_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_assign_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "FAIL 1113/005: table->array prototype 2,2"
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx302_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n93_statement_end_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:
                                                                                        jmp   n95_statement_end_α
n94_statement_begin_β:
                                                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
#         ata = CONVERT(ta, 'TABLE')
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_var_α
n96_statement_begin_β:
                                                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ta
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_call_α
n98_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n102_statement_begin_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "TABLE"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:
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
.Lrkfnzd314:            .string          "CONVERT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd314]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx313_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_β
.Lx313_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_assign_α
n99_call_β:
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # ata
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n102_statement_begin_α
#=======================================================================================================================
#         DIFFER(ata<7>, 45)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:
                                                                                        jmp   n103_var_α
n102_statement_begin_β:
                                                                                        jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # ata
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_subscript_α
n104_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n114_statement_begin_α
.Lx321_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n105_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx322_240
                        add              rsp, 16
                                                                                        jmp   n104_lit_integer_β
.Lx322_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_deref_α
n105_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n104_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n106_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx323_240
                        add              rsp, 16
                                                                                        jmp   n105_subscript_β
.Lx323_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_lit_integer_α
n106_deref_β:
                        add              rsp, 16
                                                                                        jmp   n105_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n108_call_α
n107_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n106_deref_β
.Lx324_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
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
.Lrkfnzd326:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd326]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx325_240
                        add              rsp, 16
                                                                                        jmp   n107_lit_integer_β
.Lx325_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_statement_end_α
n108_call_β:
                        add              rsp, 16
                                                                                        jmp   n107_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n110_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/006: array->table int key roundtrip' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:
                                                                                        jmp   n111_lit_string_α
n110_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n112_assign_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "FAIL 1113/006: array->table int key roundtrip"
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx332_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n113_statement_end_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:
                                                                                        jmp   n115_statement_end_α
n114_statement_begin_β:
                                                                                        jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:
                                                                                        jmp   n116_statement_begin_α
#=======================================================================================================================
#         DIFFER(ata<'cat'>, 'dog')                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α:
                                                                                        jmp   n117_var_α
n116_statement_begin_β:
                                                                                        jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # ata
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_subscript_α
n118_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n128_statement_begin_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n119_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx343_240
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_β
.Lx343_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_deref_α
n119_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n120_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx344_240
                        add              rsp, 16
                                                                                        jmp   n119_subscript_β
.Lx344_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_lit_string_α
n120_deref_β:
                        add              rsp, 16
                                                                                        jmp   n119_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n122_call_α
n121_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n120_deref_β
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:
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
.Lrkfnzd347:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd347]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx346_240
                        add              rsp, 16
                                                                                        jmp   n121_lit_string_β
.Lx346_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n123_statement_end_α
n122_call_β:
                        add              rsp, 16
                                                                                        jmp   n121_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n124_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/007: array->table string key roundtrip' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α:
                                                                                        jmp   n125_lit_string_α
n124_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 48
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n126_assign_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "FAIL 1113/007: array->table string key roundtrip"
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx353_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n127_statement_end_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α:
                                                                                        jmp   n129_statement_end_α
n128_statement_begin_β:
                                                                                        jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:
                                                                                        jmp   n130_statement_begin_α
#=======================================================================================================================
#         t['cat'] = 'fish'
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:
                                                                                        jmp   n131_var_α
n130_statement_begin_β:
                                                                                        jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_subscript_α
n132_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n137_statement_begin_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n133_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx364_240
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_β
.Lx364_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_lit_string_α
n133_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_assign_var_α
n134_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n133_subscript_β
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "fish"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx366_240
                        add              rsp, 16
                                                                                        jmp   n134_lit_string_β
.Lx366_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n137_statement_begin_α
#=======================================================================================================================
#         DIFFER(t<'cat'>, 'fish')                   :f(e008)
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:
                                                                                        jmp   n138_var_α
n137_statement_begin_β:
                                                                                        jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_subscript_α
n139_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n149_statement_begin_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n140_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx373_240
                        add              rsp, 16
                                                                                        jmp   n139_lit_string_β
.Lx373_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_deref_α
n140_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n139_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n141_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx374_240
                        add              rsp, 16
                                                                                        jmp   n140_subscript_β
.Lx374_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_lit_string_α
n141_deref_β:
                        add              rsp, 16
                                                                                        jmp   n140_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_call_α
n142_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n141_deref_β
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "fish"
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:
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
.Lrkfnzd377:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd377]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx376_240
                        add              rsp, 16
                                                                                        jmp   n142_lit_string_β
.Lx376_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_statement_end_α
n143_call_β:
                        add              rsp, 16
                                                                                        jmp   n142_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n145_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1113/008: [] and <> syntax equivalent' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:
                                                                                        jmp   n146_lit_string_α
n145_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_assign_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "FAIL 1113/008: [] and <> syntax equivalent"
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx383_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n148_statement_end_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:
                                                                                        jmp   n150_statement_end_α
n149_statement_begin_β:
                                                                                        jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:
                                                                                        jmp   n151_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1113_table (8/8)'
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α:
                                                                                        jmp   n152_lit_string_α
n151_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n153_assign_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "PASS 1113_table (8/8)"
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx393_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n154_statement_end_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n155_goto_α:
                                                                                        jmp   n20_statement_begin_α
n155_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_goto_α:
                                                                                        jmp   n41_statement_begin_α
n156_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_goto_α:
                                                                                        jmp   n62_statement_begin_α
n157_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_goto_α:
                                                                                        jmp   n76_statement_begin_α
n158_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_goto_α:
                                                                                        jmp   n94_statement_begin_α
n159_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_α:
                                                                                        jmp   n114_statement_begin_α
n160_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:
                                                                                        jmp   n128_statement_begin_α
n161_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_α:
                                                                                        jmp   n149_statement_begin_α
n162_goto_β:
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
