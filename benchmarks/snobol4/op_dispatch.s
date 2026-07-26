                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "T1"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "OUTER"
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
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 1032
                        mov              rdi, rsp
                        mov              ecx, 1032
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1024], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n3_lit_integer_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n4_var_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n5_var_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n6_call_α
.Lx61_0:
                        .quad            1
#=======================================================================================================================
# OUTER   N = N + 3
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_lit_integer_α
#=======================================================================================================================
# NEXT    OUTER = LT(OUTER, 1000000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn65:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n11_lit_string_α
n6_call_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_binop_α
.Lx66_0:
                        .quad            3
#=======================================================================================================================
#     N = N - 1
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n15_op75_α
.Lx68_0:
                        .quad            1000000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        .section         .rodata
.Lrkfn70:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rbp + 848]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n17_lit_string_α
                                                                                        jmp   n16_assign_α
n10_call_β:
                                                                                        jmp   n17_lit_string_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n18_lit_integer_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx72_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx72_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx72_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx72_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
.Lx72_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx72_2
                        add              rsp, 16
                                                                                        jmp   n19_assign_α
.Lx72_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx72_240
                        add              rsp, 32
                                                                                        jmp   n8_var_α
.Lx72_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_binop_α
.Lx73_0:
                        .quad            1
#=======================================================================================================================
#     N = N * 2
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op75_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 7
                                                                                        je    .Lx76_1
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
.Lx76_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n23_op75_α
.Lx76_0:
                        lea              rdi, [rbp + 752]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 720]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n17_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " N
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n24_var_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n25_call_α
.Lx79_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx81_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx81_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx81_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx81_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
.Lx81_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx81_2
                        add              rsp, 16
                                                                                        jmp   n26_assign_α
.Lx81_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx81_240
                        add              rsp, 32
                                                                                        jmp   n14_var_α
.Lx81_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_binop_α
.Lx82_0:
                        .quad            2
#=======================================================================================================================
#     N = GE(N, 10000000) N / 10000      :S(OUTER)F(NEXT)
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op75_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx85_1
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
.Lx85_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n29_op77_α
.Lx85_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 704]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn88:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n32_call_α
                                                                                        jmp   n32_call_α
n25_call_β:
                                                                                        jmp   n32_call_α
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx90_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx90_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx90_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx90_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        imul             rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_assign_α
.Lx90_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 2
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx90_2
                        add              rsp, 16
                                                                                        jmp   n33_assign_α
.Lx90_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx90_240
                        add              rsp, 32
                                                                                        jmp   n22_var_α
.Lx90_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n34_op75_α
.Lx91_0:
                        .quad            10000000
#-----------------------------------------------------------------------------------------------------------------------
n29_op77_α:
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 704]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n10_call_α
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n36_assign_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n37_var_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "ms: "
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
                        .section         .rodata
.Lrkfn97:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 224]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n39_lit_integer_α
                                                                                        jmp   n38_assign_α
n32_call_β:
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op75_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 7
                                                                                        je    .Lx100_1
                        cmp              eax, 6
                                                                                        jne   .Lx100_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx100_0
.Lx100_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n40_op75_α
.Lx100_0:
                        lea              rdi, [rbp + 592]
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 109
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n31_lit_string_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n39_lit_integer_α
#=======================================================================================================================
#     N = 1
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_op75_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 7
                                                                                        je    .Lx107_1
                        cmp              eax, 6
                                                                                        jne   .Lx107_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx107_0
.Lx107_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n44_op77_α
.Lx107_0:
                        lea              rdi, [rbp + 576]
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 110
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n44_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n45_binop_α
.Lx108_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n46_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op77_α:
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 544]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    n5_var_α
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 100
                                                                                        je    .Lx113_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                                                                                        jne   .Lx113_2
.Lx113_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 768], 6
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n49_binop_α
.Lx113_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 0
                        lea              r9, [rbp + 768]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n49_binop_α
.Lx113_2:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n10_call_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n49_binop_α
n45_binop_β:
                                                                                        jmp   n10_call_α
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 100
                                                                                        je    .Lx114_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx114_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx114_2
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx114_2
.Lx114_1:
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rcx, qword ptr [rbp + 1016]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n50_binop_α
.Lx114_0:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              r8d, 1
                        lea              r9, [rbp + 976]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n50_binop_α
.Lx114_2:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n50_binop_α
n46_binop_β:
                                                                                        jmp   main_γ
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
.Lx115_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n53_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n54_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n55_binop_α
.Lx120_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   main_γ
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 100
                                                                                        je    .Lx123_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx123_2
.Lx123_1:
                        mov              rax, qword ptr [rbp + 632]
                        mov              rcx, 10000
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n56_binop_α
.Lx123_0:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8d, 3
                        lea              r9, [rbp + 608]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n56_binop_α
.Lx123_2:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n5_var_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n56_binop_α
n55_binop_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1024]
                        add              rsp, 1032
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1024]
                        add              rsp, 1032
                        ret
                        .section         .note.GNU-stack,"",@progbits
