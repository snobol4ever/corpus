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
#=======================================================================================================================
#         DIFFER(3 + 2, 5)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n1_lit_integer_α
.Lx74_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n2_binop_α
.Lx75_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx76_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_integer_α
.Lx76_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n4_call_α
.Lx77_0:
                        .quad            5
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
.Lrkfnzd79:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd79]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx78_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_integer_α
.Lx78_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n5_lit_string_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/001: 3+2'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 17                        # lit_string
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n6_assign_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "FAIL 410/001: 3+2"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx81_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3 - 2, 1)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n8_lit_integer_α
.Lx82_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n9_binop_α
.Lx83_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n14_lit_integer_α
.Lx84_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n11_call_α
.Lx85_0:
                        .quad            1
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
.Lrkfnzd87:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd87]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx86_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n14_lit_integer_α
.Lx86_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n12_lit_string_α
n11_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n14_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/002: 3-2'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 17                        # lit_string
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n13_assign_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "FAIL 410/002: 3-2"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx89_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3 * 2, 6)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n15_lit_integer_α
.Lx90_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n16_binop_α
.Lx91_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx92_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n21_lit_integer_α
.Lx92_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n18_call_α
.Lx93_0:
                        .quad            6
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
.Lrkfnzd95:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd95]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx94_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n21_lit_integer_α
.Lx94_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n19_lit_string_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n21_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/003: 3*2'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 17                        # lit_string
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n20_assign_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "FAIL 410/003: 3*2"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx97_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(5 / 2, 2)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n22_lit_integer_α
.Lx98_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n23_binop_α
.Lx99_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx100_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n28_lit_integer_α
.Lx100_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n25_call_α
.Lx101_0:
                        .quad            2
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
.Lrkfnzd103:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd103]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx102_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_lit_integer_α
.Lx102_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n26_lit_string_α
n25_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n28_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/004: 5/2 integer division'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 34                        # lit_string
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n27_assign_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "FAIL 410/004: 5/2 integer division"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx105_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(2 ** 3, 8)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n29_lit_integer_α
.Lx106_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n30_binop_α
.Lx107_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx108_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_lit_string_α
.Lx108_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n32_call_α
.Lx109_0:
                        .quad            8
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
.Lrkfnzd111:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd111]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx110_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n35_lit_string_α
.Lx110_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n33_lit_string_α
n32_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n35_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/005: 2**3'                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 18                        # lit_string
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n34_assign_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "FAIL 410/005: 2**3"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx113_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER('3' + 2, 5)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n36_lit_integer_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n37_binop_α
.Lx115_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # lit_string
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx116_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n42_lit_integer_α
.Lx116_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n39_call_α
.Lx117_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
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
.Lrkfnzd119:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd119]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx118_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n42_lit_integer_α
.Lx118_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n40_lit_string_α
n39_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n42_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/006: string+int coerce'     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 31                        # lit_string
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n41_assign_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "FAIL 410/006: string+int coerce"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx121_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(3 + '-2', 1)                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n43_lit_string_α
.Lx122_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 2                         # lit_string
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n44_binop_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "-2"
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx124_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n49_lit_string_α
.Lx124_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n46_call_α
.Lx125_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
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
.Lrkfnzd127:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd127]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx126_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_lit_string_α
.Lx126_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n47_lit_string_α
n46_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/007: int+neg-string'        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 28                        # lit_string
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n48_assign_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "FAIL 410/007: int+neg-string"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx129_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER('1' + '0', 1)                   :f(e008)
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n50_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n51_binop_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # lit_string
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx132_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n56_lit_integer_α
.Lx132_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n53_call_α
.Lx133_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
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
.Lrkfnzd135:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd135]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx134_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n56_lit_integer_α
.Lx134_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n54_lit_string_α
n53_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n56_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/008: string+string coerce'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 34                        # lit_string
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n55_assign_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "FAIL 410/008: string+string coerce"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx137_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(5 + '', 5)                   :f(e009)
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n57_lit_string_α
.Lx138_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 0                         # lit_string
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n58_binop_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rsi, qword ptr [rsp + 40]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx140_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n63_lit_string_α
.Lx140_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n60_call_α
.Lx141_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
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
.Lrkfnzd143:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd143]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx142_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n63_lit_string_α
.Lx142_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n61_lit_string_α
n60_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n63_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 410/009: null addend is zero'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 33                        # lit_string
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n62_assign_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "FAIL 410/009: null addend is zero"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx145_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 410_arith_int (9/9)'
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 24                        # lit_string
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n64_assign_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "PASS 410_arith_int (9/9)"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx147_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_goto_α:
                                                                                        jmp   n7_lit_integer_α
n65_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_goto_α:
                                                                                        jmp   n14_lit_integer_α
n66_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n21_lit_integer_α
n67_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:
                                                                                        jmp   n28_lit_integer_α
n68_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n35_lit_string_α
n69_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n42_lit_integer_α
n70_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:
                                                                                        jmp   n49_lit_string_α
n71_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:
                                                                                        jmp   n56_lit_integer_α
n72_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_α:
                                                                                        jmp   n63_lit_string_α
n73_goto_β:
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
