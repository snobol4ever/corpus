                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "S"
.Lgvan2:                .string          "N"
.Lgvan3:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 680
                        mov              rdi, rsp
                        mov              ecx, 680
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              dword ptr [rsp + 68], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n1_lit_integer_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n2_call_α
.Lx42_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn44:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn44]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n3_lit_string_α
n2_call_β:
                                                                                        jmp   n3_lit_string_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              dword ptr [rsp + 164], 7
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n4_lit_integer_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n5_call_α
.Lx46_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn48:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_call_α
                                                                                        jmp   n6_call_α
n5_call_β:
                                                                                        jmp   n6_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
                        .section         .rodata
.Lrkfn50:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rsp + 224]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n8_lit_string_α
                                                                                        jmp   n7_assign_α
n6_call_β:
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n8_lit_string_α
#=======================================================================================================================
#     S = ''
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_assign_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n10_lit_integer_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx54_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n12_var_α
#=======================================================================================================================
# LOOP    N = LT(N, 100000) N + 1        :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_coerce_numeric_α
.Lx57_0:
                        .quad            100000
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx59_1
                        cmp              eax, 6
                                                                                        jne   .Lx59_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx59_0
.Lx59_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_coerce_numeric_α
.Lx59_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx61_1
                        cmp              eax, 6
                                                                                        jne   .Lx61_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx61_0
.Lx61_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_cmp_test_α
.Lx61_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n16_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n16_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx63_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n26_call_α
.Lx63_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_binop_α
.Lx65_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx66_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n26_call_α
.Lx66_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 144
                                                                                        jmp   n22_var_α
#=======================================================================================================================
#     S = S 'x'                          :(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n24_binop_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n12_var_α
#=======================================================================================================================
# DONE    T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:
                        .section         .rodata
.Lrkfn74:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rsp + 480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n28_lit_string_α
                                                                                        jmp   n27_assign_α
n26_call_β:
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n28_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " SIZE(S)
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rsp + 512], 1
                        mov              dword ptr [rsp + 516], 8
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n29_var_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n30_call_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn79:               .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n33_lit_string_α
                                                                                        jmp   n31_binop_α
n30_call_β:
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                                                                                        jmp   n32_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              rdi, qword ptr [rip + .Lx81_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n33_lit_string_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_var_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx85_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx85_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n12_var_α
n39_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:
                                                                                        jmp   n26_call_α
n40_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 680
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 680
                        ret
                        .section         .note.GNU-stack,"",@progbits
