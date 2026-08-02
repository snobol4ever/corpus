                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "BIG"
.Lgvan1:                .string          "J"
.Lgvan2:                .string          "G"
.Lgvan3:                .string          "HEAD10"
.Lgvan4:                .string          "TAIL10"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
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
#         BIG = DUPL('abcdefghij', 500)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_integer_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_integer_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "abcdefghij"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_call_α
n1_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_lit_integer_α
.Lx54_0:
                        .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
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
.Lrkfnzd56:             .string          "DUPL"
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
                        add              rsp, 32
                                                                                        jmp   n4_lit_integer_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_assign_α
n2_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # BIG
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 48
                                                                                        jmp   n4_lit_integer_α
n3_assign_β:
                        add              rsp, 48
                                                                                        jmp   n4_lit_integer_α
#=======================================================================================================================
#         J = 0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
n4_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx58_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # J
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n6_var_α
n5_assign_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
#=======================================================================================================================
# cl      J = LT(J, 250) J + 1                                        :F(rd)
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # J
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_lit_integer_α
n6_var_β:
                        add              rsp, 16
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_coerce_numeric_α
n7_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_var_α
.Lx61_0:
                        .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx63_1
                        cmp              eax, 3
                                                                                        jne   .Lx63_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx63_0
.Lx63_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n9_coerce_numeric_α
.Lx63_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_coerce_numeric_α
n8_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx65_1
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n10_cmp_test_α
.Lx65_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_cmp_test_α
n9_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx67_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n26_var_α
.Lx67_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n11_var_α
n10_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # J
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_lit_integer_α
n11_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_binop_α
n12_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n26_var_α
.Lx69_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx70_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n26_var_α
.Lx70_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_binop_α
n13_binop_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
n14_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # J
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 144
                                                                                        jmp   n16_lit_string_α
n15_assign_β:
                        add              rsp, 144
                                                                                        jmp   n26_var_α
#=======================================================================================================================
#         G = 'medium-' J '-' DUPL('g', 35)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_var_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "medium-"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # J
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_binop_α
n17_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_lit_string_α
n18_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_binop_α
n19_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n6_var_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_lit_string_α
n20_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_lit_integer_α
n21_lit_string_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n6_var_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_call_α
n22_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n6_var_α
.Lx79_0:
                        .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:
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
.Lrkfnzd81:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd81]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx80_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n6_var_α
.Lx80_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_binop_α
n23_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_assign_α
n24_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # G
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 144
                                                                                        jmp   n6_var_α
n25_assign_β:
                        add              rsp, 144
                                                                                        jmp   n6_var_α
#=======================================================================================================================
# rd      OUTPUT = SIZE(BIG)
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # BIG
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_call_α
n26_var_β:
                        add              rsp, 16
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd86:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd86]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx85_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_var_α
.Lx85_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_assign_α
n27_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx87_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 32
                                                                                        jmp   n29_var_α
n28_assign_β:
                        add              rsp, 32
                                                                                        jmp   n29_var_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         BIG POS(0) LEN(10) . HEAD10
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # BIG
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_match_head_α
n29_var_β:
                        add              rsp, 16
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_head_α:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              rdi, qword ptr [rsp + 704]                     # var
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 592], r13                     # outer_Σ
                        mov              qword ptr [rsp + 600], r14                     # outer_δ
                        mov              qword ptr [rsp + 608], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 616], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx90_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n31_match_sequence_α
n30_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx90_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx90_1
                                                                                        jmp   .Lx90_0
.Lx90_1:
                        mov              r10, qword ptr [1879048192]
.Lx90_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx90_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 592]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 600]                     # outer_δ
                        mov              r15, qword ptr [rsp + 608]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 616]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 720
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_match_sequence_α:
                                                                                        jmp   n36_lit_integer_α
n31_match_sequence_as:
                                                                                        jmp   n32_match_release_α
n31_match_sequence_β:
                                                                                        jmp   n35_match_assign_cond_β
n31_match_sequence_af:
                                                                                        jmp   n30_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx94_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx94_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx94_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx94_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx94_1:
                        test             rax, rax
                                                                                        je    .Lx94_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx94_3]
                        lea              rdx, [rip + .Lx94_4]
                                                                                        jmp   rax
.Lx94_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx94_1
.Lx94_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx94_1
.Lx94_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx94_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx94_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 592]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 600]                     # outer_δ
                        mov              r15, qword ptr [rsp + 608]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 616]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 720
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n34_match_len_α
n33_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n30_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_len_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jle   .Lx97_240
                        add              rsp, 16
                                                                                        jmp   n30_match_head_β
.Lx97_240:
                        add              r14d, 10
                                                                                        jmp   n35_match_assign_cond_α
n34_match_len_β:
                        sub              r14d, 10
                        add              rsp, 16
                                                                                        jmp   n30_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n32_match_release_α
n35_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n34_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n37_match_pos_α
n36_lit_integer_β:
                                                                                        jmp   n30_match_head_β
.Lx100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n30_match_head_β
                                                                                        jmp   n33_match_assign_save_α
n37_match_pos_β:
                                                                                        jmp   n30_match_head_β
#=======================================================================================================================
#         OUTPUT = HEAD10
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # HEAD10
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_assign_α
n38_var_β:
                        add              rsp, 16
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx103_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n40_var_α
n39_assign_β:
                        add              rsp, 16
                                                                                        jmp   n40_var_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         BIG RTAB(10) REM . TAIL10
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # BIG
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_match_head_α
n40_var_β:
                        add              rsp, 16
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_match_head_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              rdi, qword ptr [rsp + 176]                     # var
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx106_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n42_match_sequence_α
n41_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx106_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx106_1
                                                                                        jmp   .Lx106_0
.Lx106_1:
                        mov              r10, qword ptr [1879048192]
.Lx106_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx106_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 72]                      # outer_δ
                        mov              r15, qword ptr [rsp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_match_sequence_α:
                                                                                        jmp   n47_lit_integer_α
n42_match_sequence_as:
                                                                                        jmp   n43_match_release_α
n42_match_sequence_β:
                                                                                        jmp   n46_match_assign_cond_β
n42_match_sequence_af:
                                                                                        jmp   n41_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx110_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx110_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx110_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx110_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx110_1:
                        test             rax, rax
                                                                                        je    .Lx110_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx110_3]
                        lea              rdx, [rip + .Lx110_4]
                                                                                        jmp   rax
.Lx110_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx110_1
.Lx110_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx110_1
.Lx110_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx110_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx110_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 72]                      # outer_δ
                        mov              r15, qword ptr [rsp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n45_match_rem_α
n44_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n48_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n46_match_assign_cond_α
n45_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n48_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n43_match_release_α
n46_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n45_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n48_match_rtab_α
n47_lit_integer_β:
                                                                                        jmp   n41_match_head_β
.Lx116_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n48_match_rtab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, 10
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jle   .Lx117_240
                        add              rsp, 16
                                                                                        jmp   n41_match_head_β
.Lx117_240:
                        mov              r14d, ecx
                                                                                        jmp   n44_match_assign_save_α
n48_match_rtab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n41_match_head_β
#=======================================================================================================================
#         OUTPUT = TAIL10
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # TAIL10
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
n49_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx119_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n50_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_goto_α:
                                                                                        jmp   n6_var_α
n51_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n26_var_α
n52_goto_β:
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
                        .section         .rodata
.S0:                    .string          "HEAD10"
.S1:                    .string          "TAIL10"
                        .text
                        .section         .note.GNU-stack,"",@progbits
