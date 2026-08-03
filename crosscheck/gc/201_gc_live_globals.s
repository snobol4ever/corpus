                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V1"
.Lgvan1:                .string          "V2"
.Lgvan2:                .string          "V3"
.Lgvan3:                .string          "V4"
.Lgvan4:                .string          "V5"
.Lgvan5:                .string          "V6"
.Lgvan6:                .string          "I"
.Lgvan7:                .string          "G"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         V1 = 'alpha-' DUPL('a', 8)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_lit_string_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "alpha-"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_lit_integer_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_call_α
.Lx106_0:
                        .quad            8
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
.Lrkfnzd108:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd108]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx107_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n8_statement_begin_α
.Lx107_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_binop_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V1
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
#         V2 = 'beta-' DUPL('b', 8)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_lit_string_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "beta-"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_lit_integer_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_call_α
.Lx117_0:
                        .quad            8
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
.Lrkfnzd119:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd119]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx118_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n16_statement_begin_α
.Lx118_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_binop_α
n12_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # V2
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n15_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n16_statement_begin_α
#=======================================================================================================================
#         V3 = 'gamma-' DUPL('c', 8)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_lit_string_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "gamma-"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_lit_integer_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_call_α
.Lx128_0:
                        .quad            8
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
.Lrkfnzd130:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd130]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx129_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
.Lx129_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_binop_α
n20_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # V3
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n24_statement_begin_α
#=======================================================================================================================
#         V4 = 'delta-' DUPL('d', 8)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_lit_string_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "delta-"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_lit_integer_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_call_α
.Lx139_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
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
.Lrkfnzd141:            .string          "DUPL"
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
                        add              rsp, 48
                                                                                        jmp   n32_statement_begin_α
.Lx140_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_binop_α
n28_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # V4
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n32_statement_begin_α
#=======================================================================================================================
#         V5 = 'epsilon-' DUPL('e', 8)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_lit_string_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "epsilon-"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_lit_integer_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_call_α
.Lx150_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
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
.Lrkfnzd152:            .string          "DUPL"
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
                        add              rsp, 48
                                                                                        jmp   n40_statement_begin_α
.Lx151_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_binop_α
n36_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # V5
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n40_statement_begin_α
#=======================================================================================================================
#         V6 = 'zeta-' DUPL('f', 8)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_lit_string_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "zeta-"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_lit_integer_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_call_α
.Lx161_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
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
.Lrkfnzd163:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd163]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx162_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n48_statement_begin_α
.Lx162_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_binop_α
n44_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # V6
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n48_statement_begin_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_α
.Lx170_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # I
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n52_statement_begin_α
#=======================================================================================================================
# loop    I = LT(I, 300) I + 1                                        :F(done)
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # I
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_coerce_numeric_α
.Lx177_0:
                        .quad            300
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx179_1
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
.Lx179_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n56_coerce_numeric_α
.Lx179_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx181_1
                        cmp              eax, 3
                                                                                        jne   .Lx181_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx181_0
.Lx181_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n57_cmp_test_α
.Lx181_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n57_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n57_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx183_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n76_statement_begin_α
.Lx183_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # I
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_binop_α
.Lx185_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx186_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n76_statement_begin_α
.Lx186_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # I
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n64_statement_begin_α
#=======================================================================================================================
#         G = 'junk' I DUPL('y', 25)
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_var_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "junk"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # I
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_lit_integer_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_call_α
.Lx197_0:
                        .quad            25
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
.Lrkfnzd199:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd199]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx198_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n74_statement_begin_α
.Lx198_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n71_binop_α
n70_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # G
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n74_statement_begin_α
#=======================================================================================================================
#         :(loop)
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                                                                                        jmp   n52_statement_begin_α
#=======================================================================================================================
# done    OUTPUT = V1
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V1
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx211_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_statement_end_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n80_statement_begin_α
#=======================================================================================================================
#         OUTPUT = V2
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # V2
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx217_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n83_statement_end_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n84_statement_begin_α
#=======================================================================================================================
#         OUTPUT = V3
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # V3
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx223_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n87_statement_end_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n88_statement_begin_α
#=======================================================================================================================
#         OUTPUT = V4
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # V4
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx229_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n91_statement_end_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n92_statement_begin_α
#=======================================================================================================================
#         OUTPUT = V5
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # V5
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx235_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n95_statement_end_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
#         OUTPUT = V6
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # V6
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx241_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n99_statement_end_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n52_statement_begin_α
n100_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:
                                                                                        jmp   n76_statement_begin_α
n101_goto_β:
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
