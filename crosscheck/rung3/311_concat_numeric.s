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
                                                                                        jmp   n1_lit_integer_α
#=======================================================================================================================
#         DIFFER(1 2, '12')                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_lit_integer_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_binop_α
.Lx42_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_call_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "12"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
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
.Lrkfnzd46:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd46]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx45_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n10_statement_α
.Lx45_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_statement_α
n5_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n10_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_α:
                        add              rsp, 80
                                                                                        jmp   n7_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 311/001: int int concat'         :(END)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "FAIL 311/001: int int concat"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx50_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_statement_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_α:
                                                                                        jmp   n11_lit_integer_α
#=======================================================================================================================
#         DIFFER(2 2 2, '222')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_lit_integer_α
.Lx55_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_binop_α
.Lx56_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_binop_α
.Lx58_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_call_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "222"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:
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
.Lrkfnzd62:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd62]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx61_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n22_statement_α
.Lx61_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_statement_α
n17_call_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n22_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_α:
                        add              rsp, 112
                                                                                        jmp   n19_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 311/002: three int concat'       :(END)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "FAIL 311/002: three int concat"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx66_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_statement_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_α:
                                                                                        jmp   n23_lit_integer_α
#=======================================================================================================================
#         DIFFER(1 3.4, '13.4')                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n24_lit_real_α
.Lx71_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5                         # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_binop_α
.Lx72_0:
                        .quad            4614838538166547251
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_real
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_call_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "13.4"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
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
                        add              rsp, 64
                                                                                        jmp   n32_statement_α
.Lx75_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_statement_α
n27_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n32_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_α:
                        add              rsp, 80
                                                                                        jmp   n29_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 311/003: int real concat'        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 29
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_assign_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "FAIL 311/003: int real concat"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx80_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n31_statement_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_α:
                                                                                        jmp   n33_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 311_concat_numeric (3/3)'
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 29
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "PASS 311_concat_numeric (3/3)"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx86_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n35_statement_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n10_statement_α
n36_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n22_statement_α
n37_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:
                                                                                        jmp   n32_statement_α
n38_goto_β:
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
