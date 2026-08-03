                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "node(val,nxt)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "HEAD"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "J"
.Lgvan3:                .string          "G"
.Lgvan4:                .string          "C"
.Lgvan5:                .string          "P"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         DATA('node(val,nxt)')
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_call_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "node(val,nxt)"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd126:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd126]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx125_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx125_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_statement_end_α
n2_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         HEAD = node('n-0-' DUPL('p', 5), )
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_lit_string_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "n-0-"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_lit_integer_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_call_α
.Lx133_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
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
.Lrkfnzd135:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd135]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx134_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n14_statement_begin_α
.Lx134_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_binop_α
n8_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_call_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:
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
.Lrkfnzd139:            .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd139]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx138_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n14_statement_begin_α
.Lx138_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_assign_α
n11_call_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # HEAD
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n13_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n14_statement_begin_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx145_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # I
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
# mk      I = LT(I, 30) I + 1                                         :F(churn)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_coerce_numeric_α
.Lx152_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx154_1
                        cmp              eax, 3
                                                                                        jne   .Lx154_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx154_0
.Lx154_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n22_coerce_numeric_α
.Lx154_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx156_1
                        cmp              eax, 3
                                                                                        jne   .Lx156_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx156_0
.Lx156_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n23_cmp_test_α
.Lx156_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n23_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx158_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n46_statement_begin_α
.Lx158_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_binop_α
.Lx160_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx161_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n46_statement_begin_α
.Lx161_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # I
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n29_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n30_statement_begin_α
#=======================================================================================================================
#         HEAD = node('n-' I '-' DUPL('p', 5), HEAD)
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_var_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "n-"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_binop_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_lit_integer_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_call_α
.Lx174_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:
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
.Lrkfnzd176:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd176]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx175_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n44_statement_begin_α
.Lx175_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_binop_α
n38_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # HEAD
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_call_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:
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
.Lrkfnzd180:            .string          "node"
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
                        add              rsp, 160
                                                                                        jmp   n44_statement_begin_α
.Lx179_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_assign_α
n41_call_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # HEAD
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n44_statement_begin_α
#=======================================================================================================================
#         :(mk)
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:
                                                                                        jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
# churn   J = 0
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_α
.Lx190_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # J
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n50_statement_begin_α
#=======================================================================================================================
# cl      J = LT(J, 250) J + 1                                        :F(walk)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # J
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_coerce_numeric_α
.Lx197_0:
                        .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx199_1
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
.Lx199_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n54_coerce_numeric_α
.Lx199_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx201_1
                        cmp              eax, 3
                                                                                        jne   .Lx201_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx201_0
.Lx201_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n55_cmp_test_α
.Lx201_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n55_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n55_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx203_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n74_statement_begin_α
.Lx203_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # J
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_binop_α
.Lx205_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx206_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n74_statement_begin_α
.Lx206_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # J
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n62_statement_begin_α
#=======================================================================================================================
#         G = 'trash' J DUPL('t', 20)
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_var_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "trash"
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # J
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_lit_integer_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_call_α
.Lx217_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:
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
.Lrkfnzd219:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd219]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx218_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n72_statement_begin_α
.Lx218_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_binop_α
n68_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n70_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # G
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   n72_statement_begin_α
#=======================================================================================================================
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:
                                                                                        jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:
                                                                                        jmp   n50_statement_begin_α
#=======================================================================================================================
# walk    C = 0
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_assign_α
.Lx230_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # C
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n78_statement_begin_α
#=======================================================================================================================
#         P = HEAD
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # HEAD
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # P
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n82_statement_begin_α
#=======================================================================================================================
# wl      P = DIFFER(P) nxt(P)                                        :F(done)
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # P
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_call_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd244:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd244]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx243_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n98_statement_begin_α
.Lx243_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_var_α
n84_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # P
                        mov              rdx, qword ptr [1879052376]
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
.Lrkfnzd247:            .string          "nxt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd247]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n98_statement_begin_α
.Lx246_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_binop_α
n86_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # call
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # P
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n90_statement_begin_α
#=======================================================================================================================
#         C = C + 1
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # C
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n92_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_binop_α
.Lx255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx256_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n96_statement_begin_α
.Lx256_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # C
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
#         :(wl)
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:
                                                                                        jmp   n82_statement_begin_α
#=======================================================================================================================
# done    OUTPUT = 'links=' C
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_var_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "links="
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # C
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n101_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx269_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n103_statement_end_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n104_statement_begin_α
#=======================================================================================================================
#         OUTPUT = val(HEAD)
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:
                                                                                        jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # HEAD
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_call_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd276:            .string          "val"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd276]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx275_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n109_statement_begin_α
.Lx275_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_assign_α
n106_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx277_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n108_statement_end_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n109_statement_begin_α
#=======================================================================================================================
#         OUTPUT = val(nxt(nxt(HEAD)))
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # HEAD
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_call_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd284:            .string          "nxt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd284]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx283_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx283_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_call_α
n111_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd286:            .string          "nxt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd286]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx285_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
.Lx285_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_call_α
n112_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd288:            .string          "val"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd288]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx287_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx287_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n114_assign_α
n113_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx289_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n115_statement_end_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n116_goto_α:
                                                                                        jmp   n18_statement_begin_α
n116_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_goto_α:
                                                                                        jmp   n46_statement_begin_α
n117_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_α:
                                                                                        jmp   n50_statement_begin_α
n118_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_goto_α:
                                                                                        jmp   n74_statement_begin_α
n119_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_goto_α:
                                                                                        jmp   n82_statement_begin_α
n120_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_goto_α:
                                                                                        jmp   n98_statement_begin_α
n121_goto_β:
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
