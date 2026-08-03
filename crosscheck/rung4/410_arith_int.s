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
#         DIFFER(3 + 2, 5)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_lit_integer_α
.Lx105_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_binop_α
.Lx106_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx107_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n10_statement_α
.Lx107_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_call_α
.Lx108_0:
                        .quad            5
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
.Lrkfnzd110:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd110]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n10_statement_α
.Lx109_240:
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
#         OUTPUT = 'FAIL 410/001: 3+2'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "FAIL 410/001: 3+2"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx114_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_statement_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_α:
                                                                                        jmp   n11_lit_integer_α
#=======================================================================================================================
#         DIFFER(3 - 2, 1)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_lit_integer_α
.Lx119_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_binop_α
.Lx120_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx121_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n20_statement_α
.Lx121_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_call_α
.Lx122_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
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
.Lrkfnzd124:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd124]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx123_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n20_statement_α
.Lx123_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_statement_α
n15_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n20_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_α:
                        add              rsp, 80
                                                                                        jmp   n17_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/002: 3-2'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "FAIL 410/002: 3-2"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx128_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n19_statement_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_α:
                                                                                        jmp   n21_lit_integer_α
#=======================================================================================================================
#         DIFFER(3 * 2, 6)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_lit_integer_α
.Lx133_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_binop_α
.Lx134_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx135_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n30_statement_α
.Lx135_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_call_α
.Lx136_0:
                        .quad            6
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
.Lrkfnzd138:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd138]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx137_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n30_statement_α
.Lx137_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_statement_α
n25_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n30_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_α:
                        add              rsp, 80
                                                                                        jmp   n27_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/003: 3*2'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_assign_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "FAIL 410/003: 3*2"
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx142_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n29_statement_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_α:
                                                                                        jmp   n31_lit_integer_α
#=======================================================================================================================
#         DIFFER(5 / 2, 2)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_lit_integer_α
.Lx147_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_binop_α
.Lx148_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx149_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n40_statement_α
.Lx149_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_call_α
.Lx150_0:
                        .quad            2
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
.Lrkfnzd152:            .string          "DIFFER"
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
                        add              rsp, 64
                                                                                        jmp   n40_statement_α
.Lx151_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_statement_α
n35_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n40_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_α:
                        add              rsp, 80
                                                                                        jmp   n37_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/004: 5/2 integer division'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "FAIL 410/004: 5/2 integer division"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx156_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n39_statement_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_α:
                                                                                        jmp   n41_lit_integer_α
#=======================================================================================================================
#         DIFFER(2 ** 3, 8)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_lit_integer_α
.Lx161_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_binop_α
.Lx162_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx163_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n50_statement_α
.Lx163_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_call_α
.Lx164_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:
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
.Lrkfnzd166:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd166]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx165_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n50_statement_α
.Lx165_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_statement_α
n45_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n50_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_α:
                        add              rsp, 80
                                                                                        jmp   n47_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/005: 2**3'                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "FAIL 410/005: 2**3"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx170_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n49_statement_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_α:
                                                                                        jmp   n51_lit_string_α
#=======================================================================================================================
#         DIFFER('3' + 2, 5)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_lit_integer_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_binop_α
.Lx176_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx177_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n60_statement_α
.Lx177_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_call_α
.Lx178_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:
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
.Lrkfnzd180:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd180]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx179_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n60_statement_α
.Lx179_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_statement_α
n55_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n60_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_α:
                        add              rsp, 80
                                                                                        jmp   n57_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/006: string+int coerce'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_assign_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "FAIL 410/006: string+int coerce"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx184_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_statement_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_α:
                                                                                        jmp   n61_lit_integer_α
#=======================================================================================================================
#         DIFFER(3 + '-2', 1)                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_lit_string_α
.Lx189_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_binop_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "-2"
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx191_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n70_statement_α
.Lx191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_call_α
.Lx192_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:
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
.Lrkfnzd194:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd194]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n70_statement_α
.Lx193_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_statement_α
n65_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n70_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_α:
                        add              rsp, 80
                                                                                        jmp   n67_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/007: int+neg-string'        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_assign_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "FAIL 410/007: int+neg-string"
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx198_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_statement_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_α:
                                                                                        jmp   n71_lit_string_α
#=======================================================================================================================
#         DIFFER('1' + '0', 1)                   :f(e008)
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_lit_string_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_binop_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx205_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n80_statement_α
.Lx205_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n75_call_α
.Lx206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:
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
.Lrkfnzd208:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd208]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx207_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n80_statement_α
.Lx207_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n76_statement_α
n75_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n80_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_α:
                        add              rsp, 80
                                                                                        jmp   n77_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/008: string+string coerce'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "FAIL 410/008: string+string coerce"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx212_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_statement_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_α:
                                                                                        jmp   n81_lit_integer_α
#=======================================================================================================================
#         DIFFER(5 + '', 5)                   :f(e009)
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_lit_string_α
.Lx217_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_binop_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx219_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n90_statement_α
.Lx219_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n85_call_α
.Lx220_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:
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
.Lrkfnzd222:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd222]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx221_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n90_statement_α
.Lx221_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_statement_α
n85_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n90_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_α:
                        add              rsp, 80
                                                                                        jmp   n87_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/009: null addend is zero'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_assign_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "FAIL 410/009: null addend is zero"
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx226_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n89_statement_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_α:
                                                                                        jmp   n91_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'PASS 410_arith_int (9/9)'
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_assign_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "PASS 410_arith_int (9/9)"
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx232_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n93_statement_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_goto_α:
                                                                                        jmp   n10_statement_α
n94_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_goto_α:
                                                                                        jmp   n20_statement_α
n95_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_goto_α:
                                                                                        jmp   n30_statement_α
n96_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:
                                                                                        jmp   n40_statement_α
n97_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_goto_α:
                                                                                        jmp   n50_statement_α
n98_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                                                                                        jmp   n60_statement_α
n99_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n70_statement_α
n100_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:
                                                                                        jmp   n80_statement_α
n101_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:
                                                                                        jmp   n90_statement_α
n102_goto_β:
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
