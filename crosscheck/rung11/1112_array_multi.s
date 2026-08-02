                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "c"
.Lgvan1:                .string          "d"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
#         c = ARRAY('2,2')
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_call_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "2,2"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd74:             .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd74]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx73_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n3_var_α
.Lx73_240:
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
                        mov              qword ptr [1879052288], rax                    # c
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n3_var_α
#=======================================================================================================================
#         c<1,2> = '*'
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # c
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_subscript_α
.Lx77_0:
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
                                                                                        jne   .Lx78_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n10_var_α
.Lx78_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_subscript_α
.Lx79_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx80_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n10_var_α
.Lx80_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_assign_var_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx82_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n10_var_α
.Lx82_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112
                                                                                        jmp   n10_var_α
#=======================================================================================================================
#         DIFFER(c<1,2>, '*')                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # c
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_subscript_α
.Lx84_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx85_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n20_var_α
.Lx85_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_subscript_α
.Lx86_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx87_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n20_var_α
.Lx87_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx88_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n20_var_α
.Lx88_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_call_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "*"
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
.Lrkfnzd91:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd91]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx90_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n20_var_α
.Lx90_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   n18_lit_string_α
n17_call_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n20_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1112/001: 2D array assign/read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "FAIL 1112/001: 2D array assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx93_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(PROTOTYPE(c), '2,2')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # c
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd96:             .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd96]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_lit_string_α
n21_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_call_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "2,2"
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
.Lrkfnzd99:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd99]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx98_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n26_lit_string_α
.Lx98_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n24_lit_string_α
n23_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n26_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1112/002: prototype of 2D array' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "FAIL 1112/002: prototype of 2D array"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx101_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         d = ARRAY('-1:1,2')
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_call_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "-1:1,2"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd104:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd104]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx103_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_var_α
.Lx103_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_assign_α
n27_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # d
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n29_var_α
#=======================================================================================================================
#         d<-1,1> = 0
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # d
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_unop_α
.Lx107_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n32_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n37_var_α
.Lx109_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_subscript_α
.Lx110_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx111_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n37_var_α
.Lx111_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_var_α
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx113_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n37_var_α
.Lx113_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128
                                                                                        jmp   n37_var_α
#=======================================================================================================================
#         DIFFER(d<-1,1>, 0)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # d
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_unop_α
.Lx115_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx117_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n48_var_α
.Lx117_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_subscript_α
.Lx118_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx119_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n48_var_α
.Lx119_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx120_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n48_var_α
.Lx120_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_call_α
.Lx121_0:
                        .quad            0
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
.Lrkfnzd123:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd123]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx122_240
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n48_var_α
.Lx122_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 144
                                                                                        jmp   n46_lit_string_α
n45_call_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n48_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1112/003: custom lower bound assign/read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "FAIL 1112/003: custom lower bound assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx125_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         d<-2,1>                    :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # d
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_unop_α
.Lx127_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n50_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx129_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n57_var_α
.Lx129_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_subscript_α
.Lx130_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx131_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n57_var_α
.Lx131_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx132_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n57_var_α
.Lx132_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112
                                                                                        jmp   n55_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1112/004: below lower bound fails' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_assign_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "FAIL 1112/004: below lower bound fails"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
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
#         d<2,1>                     :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # d
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_subscript_α
.Lx136_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:
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
                                                                                        jmp   n65_lit_string_α
.Lx137_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_subscript_α
.Lx138_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n65_lit_string_α
.Lx139_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx140_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n65_lit_string_α
.Lx140_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n63_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1112/005: above upper bound fails' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_assign_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "FAIL 1112/005: above upper bound fails"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx142_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1112_array_multi (5/5)'
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "PASS 1112_array_multi (5/5)"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx144_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n20_var_α
n67_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:
                                                                                        jmp   n26_lit_string_α
n68_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n48_var_α
n69_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n57_var_α
n70_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:
                                                                                        jmp   n65_lit_string_α
n71_goto_β:
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
