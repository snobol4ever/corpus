                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "aaa"
.Lgvan1:                .string          "ama"
.Lgvan2:                .string          "tt"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         aaa = ARRAY(10)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_call_α
.Lx117_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd119:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd119]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx118_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n3_var_α
.Lx118_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_assign_α
n1_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # aaa
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n3_var_α
#=======================================================================================================================
#         aaa = ARRAY(10)
#         ITEM(aaa, 1) = 5
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # aaa
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_subscript_α
.Lx122_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx123_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n8_var_α
.Lx123_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_var_α
.Lx124_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx125_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n8_var_α
.Lx125_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n8_var_α
#=======================================================================================================================
#         DIFFER(ITEM(aaa, 1), 5)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # aaa
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_call_α
.Lx127_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
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
.Lrkfnzd129:            .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd129]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx128_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n15_var_α
.Lx128_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_lit_integer_α
n10_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_call_α
.Lx130_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
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
.Lrkfnzd132:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd132]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx131_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n15_var_α
.Lx131_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n13_lit_string_α
n12_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n15_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/001: item 1D assign/read'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "FAIL 1114/001: item 1D assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx134_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(aaa<1>, 5)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # aaa
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_subscript_α
.Lx136_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx137_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n23_var_α
.Lx137_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx138_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n23_var_α
.Lx138_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_call_α
.Lx139_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:
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
.Lrkfnzd141:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd141]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx140_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n23_var_α
.Lx140_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n21_lit_string_α
n20_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n23_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/002: item == bracket read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "FAIL 1114/002: item == bracket read"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx143_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         aaa<2> = 22
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # aaa
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_subscript_α
.Lx145_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n28_var_α
.Lx146_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_var_α
.Lx147_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx148_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_var_α
.Lx148_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n28_var_α
#=======================================================================================================================
#         DIFFER(ITEM(aaa, 2), 22)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # aaa
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_call_α
.Lx150_0:
                        .quad            2
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
.Lrkfnzd152:            .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd152]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx151_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_lit_string_α
.Lx151_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_lit_integer_α
n30_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_α
.Lx153_0:
                        .quad            22
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
.Lrkfnzd155:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd155]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n35_lit_string_α
.Lx154_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n33_lit_string_α
n32_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n35_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/003: bracket assign, item read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "FAIL 1114/003: bracket assign, item read"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
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
#         ama = ARRAY('2,2,2,2')
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_call_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "2,2,2,2"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd160:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd160]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx159_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n38_var_α
.Lx159_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_assign_α
n36_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ama
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n38_var_α
#=======================================================================================================================
#         ITEM(ama, 1,2,1,2) = 1212
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ama
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n40_subscript_α
.Lx163_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx164_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n49_var_α
.Lx164_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_subscript_α
.Lx165_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx166_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_var_α
.Lx166_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_subscript_α
.Lx167_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n49_var_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_subscript_α
.Lx169_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n46_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx170_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n49_var_α
.Lx170_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_var_α
.Lx171_0:
                        .quad            1212
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx172_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n49_var_α
.Lx172_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n49_var_α
#=======================================================================================================================
#         DIFFER(ITEM(ama, 1,2,1,2), 1212)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ama
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_lit_integer_α
.Lx174_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_lit_integer_α
.Lx175_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_lit_integer_α
.Lx176_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_call_α
.Lx177_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 16
                        sub              rsp, 80
                        mov              r10, qword ptr [rsp + 160]
                        mov              r11, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 144]
                        mov              r11, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 128]
                        mov              r11, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 48], r10
                        mov              qword ptr [rsp + 56], r11
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 64], r10
                        mov              qword ptr [rsp + 72], r11
                        .section         .rodata
.Lrkfnzd179:            .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd179]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 80
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n59_var_α
.Lx178_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_lit_integer_α
n54_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_call_α
.Lx180_0:
                        .quad            1212
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
.Lrkfnzd182:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd182]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx181_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n59_var_α
.Lx181_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   n57_lit_string_α
n56_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n59_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/004: item 4D assign/read'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_assign_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "FAIL 1114/004: item 4D assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx184_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(ama<1,2,1,2>, 1212)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ama
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_subscript_α
.Lx186_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx187_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n73_var_α
.Lx187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_subscript_α
.Lx188_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx189_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n73_var_α
.Lx189_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_subscript_α
.Lx190_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx191_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n73_var_α
.Lx191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_subscript_α
.Lx192_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n73_var_α
.Lx193_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx194_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n73_var_α
.Lx194_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_call_α
.Lx195_0:
                        .quad            1212
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
.Lrkfnzd197:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd197]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx196_240
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   n73_var_α
.Lx196_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 192
                                                                                        jmp   n71_lit_string_α
n70_call_β:
                        add              rsp, 16
                        add              rsp, 176
                                                                                        jmp   n73_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/005: item 4D == bracket'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "FAIL 1114/005: item 4D == bracket"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx199_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         ama<2,1,2,1> = 2121
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ama
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n75_subscript_α
.Lx201_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx202_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n84_var_α
.Lx202_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n76_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_subscript_α
.Lx203_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx204_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n84_var_α
.Lx204_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_subscript_α
.Lx205_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx206_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n84_var_α
.Lx206_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_subscript_α
.Lx207_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx208_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n84_var_α
.Lx208_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_assign_var_α
.Lx209_0:
                        .quad            2121
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx210_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n84_var_α
.Lx210_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n84_var_α
#=======================================================================================================================
#         DIFFER(ITEM(ama, 2,1,2,1), 2121)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ama
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_lit_integer_α
.Lx212_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n87_lit_integer_α
.Lx213_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_lit_integer_α
.Lx214_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_call_α
.Lx215_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:
                        sub              rsp, 16
                        sub              rsp, 80
                        mov              r10, qword ptr [rsp + 160]
                        mov              r11, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 144]
                        mov              r11, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 128]
                        mov              r11, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 48], r10
                        mov              qword ptr [rsp + 56], r11
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 64], r10
                        mov              qword ptr [rsp + 72], r11
                        .section         .rodata
.Lrkfnzd217:            .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd217]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 80
                        cmp              eax, 104
                                                                                        jne   .Lx216_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n94_call_α
.Lx216_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_lit_integer_α
n89_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n94_call_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_call_α
.Lx218_0:
                        .quad            2121
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:
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
.Lrkfnzd220:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd220]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx219_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n94_call_α
.Lx219_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   n92_lit_string_α
n91_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n94_call_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/006: bracket 4D assign, item read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_assign_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "FAIL 1114/006: bracket 4D assign, item read"
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx222_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         tt = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd224:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd224]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx223_240
                        add              rsp, 16
                                                                                        jmp   n96_var_α
.Lx223_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n95_assign_α
n94_call_β:
                        add              rsp, 16
                                                                                        jmp   n96_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # tt
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n96_var_α
#=======================================================================================================================
#         ITEM(tt, 'key') = 'val'
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # tt
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_subscript_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "key"
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx228_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n101_var_α
.Lx228_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_assign_var_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "val"
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx230_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n101_var_α
.Lx230_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n101_var_α
#=======================================================================================================================
#         DIFFER(ITEM(tt, 'key'), 'val')                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # tt
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_call_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "key"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:
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
.Lrkfnzd234:            .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd234]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx233_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n108_lit_string_α
.Lx233_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_lit_string_α
n103_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_call_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "val"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
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
.Lrkfnzd237:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd237]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx236_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n108_lit_string_α
.Lx236_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n106_lit_string_α
n105_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n108_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/007: item on table'        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_assign_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "FAIL 1114/007: item on table"
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx239_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1114_item (7/7)'
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "PASS 1114_item (7/7)"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx241_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_goto_α:
                                                                                        jmp   n15_var_α
n110_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n111_goto_α:
                                                                                        jmp   n23_var_α
n111_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_goto_α:
                                                                                        jmp   n35_lit_string_α
n112_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_goto_α:
                                                                                        jmp   n59_var_α
n113_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_goto_α:
                                                                                        jmp   n73_var_α
n114_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_goto_α:
                                                                                        jmp   n94_call_α
n115_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_goto_α:
                                                                                        jmp   n108_lit_string_α
n116_goto_β:
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
