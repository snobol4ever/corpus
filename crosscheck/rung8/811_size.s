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
#         DIFFER(SIZE('abc'), 3)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_call_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd53:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd53]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx52_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
.Lx52_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_lit_integer_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_call_α
.Lx54_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd56]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n12_statement_begin_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_statement_end_α
n6_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 811/001: size of 3-char string'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_assign_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "FAIL 811/001: size of 3-char string"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx62_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n11_statement_end_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                                                                                        jmp   n14_statement_begin_α
#=======================================================================================================================
#         DIFFER(SIZE(12), 2)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_call_α
.Lx71_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd73:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd73]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx72_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
.Lx72_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_lit_integer_α
n16_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_call_α
.Lx74_0:
                        .quad            2
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
.Lrkfnzd76:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd76]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx75_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
.Lx75_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_statement_end_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n20_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 811/002: size of integer 12 = 2 digits' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "FAIL 811/002: size of integer 12 = 2 digits"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx82_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n23_statement_end_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                                                                                        jmp   n26_statement_begin_α
#=======================================================================================================================
#         DIFFER(SIZE(''), 0)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_call_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd93:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd93]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx92_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
.Lx92_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_lit_integer_α
n28_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_call_α
.Lx94_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
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
.Lrkfnzd96:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd96]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n36_statement_begin_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_statement_end_α
n30_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n32_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 811/003: size of null = 0'       :(END)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "FAIL 811/003: size of null = 0"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx102_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n35_statement_end_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:
                                                                                        jmp   n38_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 811_size (3/3)'
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n40_assign_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "PASS 811_size (3/3)"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx112_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n41_statement_end_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n12_statement_begin_α
n42_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:
                                                                                        jmp   n24_statement_begin_α
n43_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n36_statement_begin_α
n44_goto_β:
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
