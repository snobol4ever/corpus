                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "a"
.Lgvan1:                .string          "b"
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
#         a = ARRAY(3)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n1_call_α
.Lx100_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd102:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd102]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx101_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n3_var_α
.Lx101_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n2_assign_α
n1_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # call
                        mov              qword ptr [1879052288], rax                    # a
                        mov              qword ptr [1879052296], rdx                    # a
                        add              rsp, 32
                                                                                        jmp   n3_var_α
#=======================================================================================================================
#         a = ARRAY(3)
#         DIFFER(a<1>)               :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n5_subscript_α
.Lx105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx106_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n10_var_α
.Lx106_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n6_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx107_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n10_var_α
.Lx107_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                                                                                        jmp   n7_call_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd109:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd109]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx108_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n10_var_α
.Lx108_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n8_lit_string_α
n7_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n10_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/001: array element init null' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 38                        # lit_string
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n9_assign_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "FAIL 1110/001: array element init null"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx111_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         a<2> = 4.5
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n12_subscript_α
.Lx113_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx114_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n15_var_α
.Lx114_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n13_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7                         # lit_real
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_real
                                                                                        jmp   n14_assign_var_α
.Lx115_0:
                        .quad            4616752568008179712
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # subscript
                        mov              rdx, qword ptr [rsp + 16]                      # val
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx116_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n15_var_α
.Lx116_240:
                        mov              qword ptr [rsp + 0], rax                       # assign_var
                        mov              qword ptr [rsp + 8], rdx                       # assign_var
                        add              rsp, 80
                                                                                        jmp   n15_var_α
#=======================================================================================================================
#         DIFFER(a<2>, 4.5)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n17_subscript_α
.Lx118_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx119_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n23_var_α
.Lx119_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n18_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx120_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n23_var_α
.Lx120_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                                                                                        jmp   n19_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7                         # lit_real
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_real
                                                                                        jmp   n20_call_α
.Lx121_0:
                        .quad            4616752568008179712
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
.Lrkfnzd123:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd123]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx122_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n23_var_α
.Lx122_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 96
                                                                                        jmp   n21_lit_string_α
n20_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n23_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/002: array assign/read'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 32                        # lit_string
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n22_assign_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "FAIL 1110/002: array assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx125_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         a<4>                       :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n25_subscript_α
.Lx127_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx128_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n29_var_α
.Lx128_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n26_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx129_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n29_var_α
.Lx129_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                        add              rsp, 64
                                                                                        jmp   n27_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/003: OOB high should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 35                        # lit_string
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n28_assign_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "FAIL 1110/003: OOB high should fail"
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx131_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         a<0>                       :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n31_subscript_α
.Lx133_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx134_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_var_α
.Lx134_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n32_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx135_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n35_var_α
.Lx135_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                        add              rsp, 64
                                                                                        jmp   n33_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/004: OOB zero should fail' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 35                        # lit_string
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n34_assign_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "FAIL 1110/004: OOB zero should fail"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
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
#         DIFFER(PROTOTYPE(a), '3')                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n36_call_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd140:            .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd140]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_lit_string_α
.Lx139_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n37_lit_string_α
n36_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n38_call_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "3"
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
                        add              rsp, 48
                                                                                        jmp   n41_lit_string_α
.Lx142_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 64
                                                                                        jmp   n39_lit_string_α
n38_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n41_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/005: PROTOTYPE(ARRAY(3))=3' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 36                        # lit_string
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n40_assign_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "FAIL 1110/005: PROTOTYPE(ARRAY(3))=3"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
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
#         b = ARRAY('3')
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n42_call_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd148:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd148]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx147_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n44_var_α
.Lx147_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n43_assign_α
n42_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # call
                        mov              qword ptr [1879052304], rax                    # b
                        mov              qword ptr [1879052312], rdx                    # b
                        add              rsp, 32
                                                                                        jmp   n44_var_α
#=======================================================================================================================
#         b<2> = 'x'
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # b
                        mov              rdx, qword ptr [1879052312]                    # b
                        mov              qword ptr [rsp + 0], rax                       # b
                        mov              qword ptr [rsp + 8], rdx                       # b
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n46_subscript_α
.Lx151_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n46_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx152_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n49_var_α
.Lx152_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n48_assign_var_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # subscript
                        mov              rdx, qword ptr [rsp + 16]                      # val
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_var_α
.Lx154_240:
                        mov              qword ptr [rsp + 0], rax                       # assign_var
                        mov              qword ptr [rsp + 8], rdx                       # assign_var
                        add              rsp, 80
                                                                                        jmp   n49_var_α
#=======================================================================================================================
#         DIFFER(b<2>, 'x')                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # b
                        mov              rdx, qword ptr [1879052312]                    # b
                        mov              qword ptr [rsp + 0], rax                       # b
                        mov              qword ptr [rsp + 8], rdx                       # b
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n51_subscript_α
.Lx156_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx157_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n57_var_α
.Lx157_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n52_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx158_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n57_var_α
.Lx158_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n54_call_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
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
.Lrkfnzd161:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd161]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx160_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n57_var_α
.Lx160_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 96
                                                                                        jmp   n55_lit_string_α
n54_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n57_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/006: array from string dim' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 36                        # lit_string
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n56_assign_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "FAIL 1110/006: array from string dim"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx163_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(PROTOTYPE(b), '3')                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # b
                        mov              rdx, qword ptr [1879052312]                    # b
                        mov              qword ptr [rsp + 0], rax                       # b
                        mov              qword ptr [rsp + 8], rdx                       # b
                                                                                        jmp   n58_call_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd166:            .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd166]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx165_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_var_α
.Lx165_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n59_lit_string_α
n58_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n60_call_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "3"
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
.Lrkfnzd169:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd169]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n63_var_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 64
                                                                                        jmp   n61_lit_string_α
n60_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n63_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/007: prototype string-dim array' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 41                        # lit_string
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n62_assign_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "FAIL 1110/007: prototype string-dim array"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx171_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         a<1> = 3.14
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n65_subscript_α
.Lx173_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx174_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n68_var_α
.Lx174_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n66_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7                         # lit_real
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_real
                                                                                        jmp   n67_assign_var_α
.Lx175_0:
                        .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # subscript
                        mov              rdx, qword ptr [rsp + 16]                      # val
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx176_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n68_var_α
.Lx176_240:
                        mov              qword ptr [rsp + 0], rax                       # assign_var
                        mov              qword ptr [rsp + 8], rdx                       # assign_var
                        add              rsp, 80
                                                                                        jmp   n68_var_α
#=======================================================================================================================
#         DIFFER(a<1>, 3.14)                   :f(e008)
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n70_subscript_α
.Lx178_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n70_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx179_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n76_var_α
.Lx179_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n71_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx180_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n76_var_α
.Lx180_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                                                                                        jmp   n72_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_real_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 7                         # lit_real
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_real
                                                                                        jmp   n73_call_α
.Lx181_0:
                        .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:
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
.Lrkfnzd183:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd183]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx182_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n76_var_α
.Lx182_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 96
                                                                                        jmp   n74_lit_string_α
n73_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n76_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/008: array stores real'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 32                        # lit_string
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n75_assign_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "FAIL 1110/008: array stores real"
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx185_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         a<3> = 'z'
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n78_subscript_α
.Lx187_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx188_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n81_var_α
.Lx188_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n80_assign_var_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # subscript
                        mov              rdx, qword ptr [rsp + 16]                      # val
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx190_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n81_var_α
.Lx190_240:
                        mov              qword ptr [rsp + 0], rax                       # assign_var
                        mov              qword ptr [rsp + 8], rdx                       # assign_var
                        add              rsp, 80
                                                                                        jmp   n81_var_α
#=======================================================================================================================
#         DIFFER(a<3>, 'z')                   :f(e009)
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # a
                        mov              rdx, qword ptr [1879052296]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n83_subscript_α
.Lx192_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n83_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx193_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n89_lit_string_α
.Lx193_240:
                        mov              qword ptr [rsp + 0], rax                       # subscript
                        mov              qword ptr [rsp + 8], rdx                       # subscript
                                                                                        jmp   n84_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # subscript
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx194_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n89_lit_string_α
.Lx194_240:
                        mov              qword ptr [rsp + 0], rax                       # deref
                        mov              qword ptr [rsp + 8], rdx                       # deref
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n86_call_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:
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
                        cmp              eax, 99
                                                                                        jne   .Lx196_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n89_lit_string_α
.Lx196_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 96
                                                                                        jmp   n87_lit_string_α
n86_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n89_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1110/009: array stores string'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 34                        # lit_string
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n88_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "FAIL 1110/009: array stores string"
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx199_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1110_array_1d (9/9)'
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 24                        # lit_string
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n90_assign_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "PASS 1110_array_1d (9/9)"
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx201_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:
                                                                                        jmp   n10_var_α
n91_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_goto_α:
                                                                                        jmp   n23_var_α
n92_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_goto_α:
                                                                                        jmp   n29_var_α
n93_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_goto_α:
                                                                                        jmp   n35_var_α
n94_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_goto_α:
                                                                                        jmp   n41_lit_string_α
n95_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_goto_α:
                                                                                        jmp   n57_var_α
n96_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:
                                                                                        jmp   n63_var_α
n97_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_goto_α:
                                                                                        jmp   n76_var_α
n98_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                                                                                        jmp   n89_lit_string_α
n99_goto_β:
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
