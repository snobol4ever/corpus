                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 3280
                        mov              [rsp + 3256], rcx
                        mov              [rsp + 3264], rdx
                        mov              [rsp + 3272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3168
                        mov              edx, 3248
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rbp + 3168], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx94_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx94_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx94_101
.Lx94_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx94_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n3_op11_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3104]
                        mov              rsi, qword ptr [rip + .Lx98_2]
                                                                                        jmp   .Lx98_3
.Lx98_2:
                        .quad            .Lx98_2_s
.Lx98_2_s:
                        .string          "state"
.Lx98_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 3072], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n8_lit_string_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n10_var_ref_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n11_op11_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              rsi, qword ptr [rip + .Lx109_2]
                                                                                        jmp   .Lx109_3
.Lx109_2:
                        .quad            .Lx109_2_s
.Lx109_2_s:
                        .string          "random_subseq"
.Lx109_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n18_lit_string_α
n15_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n19_lit_string_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n21_op11_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n22_lit_string_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n23_op11_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n24_op11_α
n21_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n25_lit_string_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              rsi, qword ptr [rip + .Lx124_2]
                                                                                        jmp   .Lx124_3
.Lx124_2:
                        .quad            .Lx124_2_s
.Lx124_2_s:
                        .string          "random_numlist"
.Lx124_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n26_var_ref_α
n23_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2800]
                        lea              r8, [rbp + 2800]
.Lx125_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx125_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              esi, 1
                                                                                        jne   .Lx125_55
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_55:
                        cmp              esi, 2
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_56:
                        cmp              eax, 13
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              rax, r8
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_41:
                        lea              r9, [rbp + 2816]
.Lx125_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx125_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        cmp              esi, 1
                                                                                        jne   .Lx125_57
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_57:
                        cmp              esi, 2
                                                                                        jne   .Lx125_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_58:
                        cmp              eax, 13
                                                                                        jne   .Lx125_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        cmp              rax, r9
                                                                                        je    .Lx125_43
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_43:
                        cmp              r8, r9
                                                                                        je    .Lx125_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_44
                        cmp              eax, 99
                                                                                        je    .Lx125_44
                        cmp              eax, 13
                                                                                        jne   .Lx125_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx125_44
                                                                                        jmp   .Lx125_45
.Lx125_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_53
                        cmp              eax, 99
                                                                                        je    .Lx125_53
                        cmp              eax, 13
                                                                                        jne   .Lx125_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_46
.Lx125_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx125_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx125_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx125_51
.Lx125_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_47
                        cmp              eax, 99
                                                                                        je    .Lx125_47
                        cmp              eax, 13
                                                                                        jne   .Lx125_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx125_47
                                                                                        jmp   .Lx125_48
.Lx125_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx125_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx125_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx125_51
.Lx125_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx125_49
                        cmp              edx, 14
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_52
.Lx125_49:
                        cmp              edx, 14
                                                                                        je    .Lx125_52
                        cmp              ecx, 7
                                                                                        je    .Lx125_53
                        cmp              edx, 7
                                                                                        je    .Lx125_53
                        cmp              ecx, 6
                                                                                        jne   .Lx125_50
                        cmp              edx, 6
                                                                                        jne   .Lx125_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx125_51
                                                                                        jmp   .Lx125_52
.Lx125_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx125_53
.Lx125_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx125_54
.Lx125_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx125_54
.Lx125_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx125_54:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n28_lit_integer_α
n24_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n29_lit_integer_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n27_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n31_var_ref_α
.Lx130_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n32_lit_integer_α
.Lx131_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n33_lit_string_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n35_var_ref_α
.Lx135_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n36_lit_string_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n37_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n39_lit_integer_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        mov              qword ptr [rbp + 2704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_20
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx143_21
.Lx143_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        call             rt_arg_stage@PLT
.Lx143_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_22
                        mov              rax, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx143_23
.Lx143_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        call             rt_arg_stage@PLT
.Lx143_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_24
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx143_25
.Lx143_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        call             rt_arg_stage@PLT
.Lx143_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx143_1
                        lea              rcx, [rip + .Lx143_3]
                        lea              rdx, [rip + .Lx143_4]
                                                                                        jmp   rax
.Lx143_3:
                        mov              qword ptr [rbp + 2712], rsp
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx143_5
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx143_2
.Lx143_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx143_2
.Lx143_4:
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx143_6
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx143_2
.Lx143_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx143_2
.Lx143_1:
                        call             rt_faildescr@PLT
.Lx143_2:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n40_suspend_α
n37_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2712]
                                                                                        jmp   qword ptr [rsp]
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "tr/3"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n41_lit_string_α
n38_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n42_lit_integer_α
.Lx145_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n40_suspend_α:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n40_suspend_β:
                                                                                        jmp   n37_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n43_lit_integer_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n44_var_ref_α
.Lx149_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n45_var_ref_α
.Lx150_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n48_op11_α
n46_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n50_lit_string_α
n48_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n51_op11_α
n49_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n52_lit_string_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n53_op11_α
n51_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n54_lit_string_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n55_lit_string_α
n53_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n56_lit_string_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n57_lit_string_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n58_lit_integer_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n59_lit_string_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n60_var_ref_α
.Lx168_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n61_var_ref_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n66_lit_string_α
n64_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n68_var_ref_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n69_op11_α
n67_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n71_lit_string_α
n69_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n73_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n75_op11_α
n73_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n76_op11_α
n74_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n77_op11_α
n75_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n78_op11_α
n76_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1536]
                        lea              r8, [rbp + 1536]
.Lx195_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx195_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx195_41
                        cmp              esi, 1
                                                                                        jne   .Lx195_55
                        mov              r8, rax
                                                                                        jmp   .Lx195_40
.Lx195_55:
                        cmp              esi, 2
                                                                                        jne   .Lx195_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx195_41
                        mov              r8, rax
                                                                                        jmp   .Lx195_40
.Lx195_56:
                        cmp              eax, 13
                                                                                        jne   .Lx195_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx195_41
                        cmp              rax, r8
                                                                                        je    .Lx195_41
                        mov              r8, rax
                                                                                        jmp   .Lx195_40
.Lx195_41:
                        lea              r9, [rbp + 1552]
.Lx195_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx195_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx195_43
                        cmp              esi, 1
                                                                                        jne   .Lx195_57
                        mov              r9, rax
                                                                                        jmp   .Lx195_42
.Lx195_57:
                        cmp              esi, 2
                                                                                        jne   .Lx195_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx195_43
                        mov              r9, rax
                                                                                        jmp   .Lx195_42
.Lx195_58:
                        cmp              eax, 13
                                                                                        jne   .Lx195_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx195_43
                        cmp              rax, r9
                                                                                        je    .Lx195_43
                        mov              r9, rax
                                                                                        jmp   .Lx195_42
.Lx195_43:
                        cmp              r8, r9
                                                                                        je    .Lx195_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx195_44
                        cmp              eax, 99
                                                                                        je    .Lx195_44
                        cmp              eax, 13
                                                                                        jne   .Lx195_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx195_44
                                                                                        jmp   .Lx195_45
.Lx195_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx195_53
                        cmp              eax, 99
                                                                                        je    .Lx195_53
                        cmp              eax, 13
                                                                                        jne   .Lx195_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx195_53
                                                                                        jmp   .Lx195_46
.Lx195_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx195_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx195_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx195_51
.Lx195_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx195_47
                        cmp              eax, 99
                                                                                        je    .Lx195_47
                        cmp              eax, 13
                                                                                        jne   .Lx195_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx195_47
                                                                                        jmp   .Lx195_48
.Lx195_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx195_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx195_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx195_51
.Lx195_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx195_49
                        cmp              edx, 14
                                                                                        je    .Lx195_53
                                                                                        jmp   .Lx195_52
.Lx195_49:
                        cmp              edx, 14
                                                                                        je    .Lx195_52
                        cmp              ecx, 7
                                                                                        je    .Lx195_53
                        cmp              edx, 7
                                                                                        je    .Lx195_53
                        cmp              ecx, 6
                                                                                        jne   .Lx195_50
                        cmp              edx, 6
                                                                                        jne   .Lx195_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx195_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx195_51
                                                                                        jmp   .Lx195_52
.Lx195_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx195_53
.Lx195_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx195_54
.Lx195_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx195_54
.Lx195_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx195_54:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n79_var_ref_α
n77_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n80_lit_string_α
n78_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n82_op11_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n84_op11_α
n82_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n86_op11_α
n84_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             rt_arg_stage@PLT
.Lx207_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_22
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx207_23
.Lx207_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_arg_stage@PLT
.Lx207_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_24
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx207_25
.Lx207_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        call             rt_arg_stage@PLT
.Lx207_25:
                        mov              rdi, qword ptr [rip + .Lx207_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx207_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4]
                                                                                        jmp   rax
.Lx207_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_1:
                        call             rt_faildescr@PLT
.Lx207_2:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n87_suspend_α
n85_call_proc_staged_β:
                                                                                        jmp   n14_op11_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "random_subseq/3"
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx208_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx208_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_41
                        cmp              esi, 1
                                                                                        jne   .Lx208_55
                        mov              r8, rax
                                                                                        jmp   .Lx208_40
.Lx208_55:
                        cmp              esi, 2
                                                                                        jne   .Lx208_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx208_41
                        mov              r8, rax
                                                                                        jmp   .Lx208_40
.Lx208_56:
                        cmp              eax, 13
                                                                                        jne   .Lx208_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_41
                        cmp              rax, r8
                                                                                        je    .Lx208_41
                        mov              r8, rax
                                                                                        jmp   .Lx208_40
.Lx208_41:
                        lea              r9, [rbp + 304]
.Lx208_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx208_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_43
                        cmp              esi, 1
                                                                                        jne   .Lx208_57
                        mov              r9, rax
                                                                                        jmp   .Lx208_42
.Lx208_57:
                        cmp              esi, 2
                                                                                        jne   .Lx208_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx208_43
                        mov              r9, rax
                                                                                        jmp   .Lx208_42
.Lx208_58:
                        cmp              eax, 13
                                                                                        jne   .Lx208_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_43
                        cmp              rax, r9
                                                                                        je    .Lx208_43
                        mov              r9, rax
                                                                                        jmp   .Lx208_42
.Lx208_43:
                        cmp              r8, r9
                                                                                        je    .Lx208_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx208_44
                        cmp              eax, 99
                                                                                        je    .Lx208_44
                        cmp              eax, 13
                                                                                        jne   .Lx208_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx208_44
                                                                                        jmp   .Lx208_45
.Lx208_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx208_53
                        cmp              eax, 99
                                                                                        je    .Lx208_53
                        cmp              eax, 13
                                                                                        jne   .Lx208_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx208_53
                                                                                        jmp   .Lx208_46
.Lx208_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx208_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx208_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx208_51
.Lx208_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx208_47
                        cmp              eax, 99
                                                                                        je    .Lx208_47
                        cmp              eax, 13
                                                                                        jne   .Lx208_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx208_47
                                                                                        jmp   .Lx208_48
.Lx208_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx208_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx208_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx208_51
.Lx208_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx208_49
                        cmp              edx, 14
                                                                                        je    .Lx208_53
                                                                                        jmp   .Lx208_52
.Lx208_49:
                        cmp              edx, 14
                                                                                        je    .Lx208_52
                        cmp              ecx, 7
                                                                                        je    .Lx208_53
                        cmp              edx, 7
                                                                                        je    .Lx208_53
                        cmp              ecx, 6
                                                                                        jne   .Lx208_50
                        cmp              edx, 6
                                                                                        jne   .Lx208_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx208_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx208_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx208_51
                                                                                        jmp   .Lx208_52
.Lx208_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx208_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx208_53
.Lx208_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx208_54
.Lx208_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx208_54
.Lx208_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx208_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n88_lit_real_α
n86_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_suspend_α:
                        lea              rax, [rip + n87_suspend_β]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n87_suspend_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_real_α:
                        mov              qword ptr [rbp + 208], 7
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n89_lit_integer_α
.Lx211_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n90_var_ref_α
.Lx212_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n92_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx218_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx218_21
.Lx218_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx218_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx218_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx218_23
.Lx218_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx218_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx218_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx218_25
.Lx218_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx218_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx218_26
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx218_27
.Lx218_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx218_27:
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        mov              esi, 4
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx218_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx218_3]
                        lea              rdx, [rip + .Lx218_4]
                                                                                        jmp   rax
.Lx218_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx218_2
.Lx218_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx218_2
.Lx218_1:
                        call             rt_faildescr@PLT
.Lx218_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n93_suspend_α
n92_call_proc_staged_β:
                                                                                        jmp   n27_op11_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "random_numlist/4"
#-----------------------------------------------------------------------------------------------------------------------
n93_suspend_α:
                        lea              rax, [rip + n93_suspend_β]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n93_suspend_β:
                                                                                        jmp   n92_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3168]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 3256]
                        mov              rbp, [rbp + 3272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 3264]
                        lea              rsp, [rbp + 3280]
                        mov              rbp, [rbp + 3272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 3872
                        mov              [rsp + 3848], rcx
                        mov              [rsp + 3856], rdx
                        mov              [rsp + 3864], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3760
                        mov              edx, 3840
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n279_suspend_β]
                        mov              qword ptr [rbp + 3760], rax
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx333_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx333_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx333_101
.Lx333_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx333_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n222_var_ref_α
n221_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n224_op11_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3704], rax
                        lea              rdi, [rbp + 3696]
                        mov              rsi, qword ptr [rip + .Lx337_2]
                                                                                        jmp   .Lx337_3
.Lx337_2:
                        .quad            .Lx337_2_s
.Lx337_2_s:
                        .string          "random"
.Lx337_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n226_op11_α
                                                                                        jmp   n225_var_ref_α
n224_op11_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n228_var_ref_α
n226_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n229_op11_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_op11_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3616]
                        mov              rsi, qword ptr [rip + .Lx344_2]
                                                                                        jmp   .Lx344_3
.Lx344_2:
                        .quad            .Lx344_2_s
.Lx344_2_s:
                        .string          "state"
.Lx344_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n226_op11_α
                                                                                        jmp   n231_var_ref_α
n229_op11_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n232_op11_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n232_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2960]
                        mov              rsi, qword ptr [rip + .Lx348_2]
                                                                                        jmp   .Lx348_3
.Lx348_2:
                        .quad            .Lx348_2_s
.Lx348_2_s:
                        .string          "random"
.Lx348_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n234_var_ref_α
n232_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 3584], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n236_lit_string_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n238_var_ref_α
n235_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n239_var_ref_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n240_op11_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n242_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2880]
                        mov              rsi, qword ptr [rip + .Lx359_2]
                                                                                        jmp   .Lx359_3
.Lx359_2:
                        .quad            .Lx359_2_s
.Lx359_2_s:
                        .string          "random_subseq"
.Lx359_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n243_var_ref_α
n240_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n244_op11_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              rsi, qword ptr [rip + .Lx365_2]
                                                                                        jmp   .Lx365_3
.Lx365_2:
                        .quad            .Lx365_2_s
.Lx365_2_s:
                        .string          "random"
.Lx365_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n248_op11_α
                                                                                        jmp   n247_var_ref_α
n244_op11_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n245_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n249_lit_string_α
n245_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n250_lit_string_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n251_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n248_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n252_op11_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n253_lit_string_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n254_op11_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 99
                                                                                        je    n226_op11_α
                                                                                        jmp   n255_op11_α
n252_op11_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n256_lit_string_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              rsi, qword ptr [rip + .Lx376_2]
                                                                                        jmp   .Lx376_3
.Lx376_2:
                        .quad            .Lx376_2_s
.Lx376_2_s:
                        .string          "random_numlist"
.Lx376_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n248_op11_α
                                                                                        jmp   n257_var_ref_α
n254_op11_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3312]
                        lea              r8, [rbp + 3312]
.Lx377_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx377_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              esi, 1
                                                                                        jne   .Lx377_55
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_55:
                        cmp              esi, 2
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_56:
                        cmp              eax, 13
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              rax, r8
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_41:
                        lea              r9, [rbp + 3328]
.Lx377_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx377_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              esi, 1
                                                                                        jne   .Lx377_57
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_57:
                        cmp              esi, 2
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_58:
                        cmp              eax, 13
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              rax, r9
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_43:
                        cmp              r8, r9
                                                                                        je    .Lx377_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_44
                        cmp              eax, 99
                                                                                        je    .Lx377_44
                        cmp              eax, 13
                                                                                        jne   .Lx377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx377_44
                                                                                        jmp   .Lx377_45
.Lx377_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_53
                        cmp              eax, 99
                                                                                        je    .Lx377_53
                        cmp              eax, 13
                                                                                        jne   .Lx377_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_46
.Lx377_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx377_51
.Lx377_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_47
                        cmp              eax, 99
                                                                                        je    .Lx377_47
                        cmp              eax, 13
                                                                                        jne   .Lx377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_47
                                                                                        jmp   .Lx377_48
.Lx377_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx377_51
.Lx377_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx377_49
                        cmp              edx, 14
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_52
.Lx377_49:
                        cmp              edx, 14
                                                                                        je    .Lx377_52
                        cmp              ecx, 7
                                                                                        je    .Lx377_53
                        cmp              edx, 7
                                                                                        je    .Lx377_53
                        cmp              ecx, 6
                                                                                        jne   .Lx377_50
                        cmp              edx, 6
                                                                                        jne   .Lx377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx377_51
                                                                                        jmp   .Lx377_52
.Lx377_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
.Lx377_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx377_54
.Lx377_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx377_54
.Lx377_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx377_54:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n226_op11_α
                                                                                        jmp   n258_var_ref_α
n255_op11_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n259_lit_integer_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n261_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:
                        mov              qword ptr [rbp + 2272], 6
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n262_lit_integer_α
.Lx383_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n263_lit_string_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n264_lit_integer_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "tr"
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n265_var_ref_α
.Lx386_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n266_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n267_var_ref_α
.Lx388_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n268_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n269_lit_integer_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n270_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n268_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n271_lit_string_α
n268_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n272_lit_integer_α
.Lx395_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n273_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n274_lit_integer_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n275_var_ref_α
.Lx399_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n273_op11_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3208], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3200]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n226_op11_α
                                                                                        jmp   n276_op11_α
n273_op11_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n277_var_ref_α
.Lx401_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n276_op11_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3088]
                        lea              r8, [rbp + 3088]
.Lx404_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx404_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_41
                        cmp              esi, 1
                                                                                        jne   .Lx404_55
                        mov              r8, rax
                                                                                        jmp   .Lx404_40
.Lx404_55:
                        cmp              esi, 2
                                                                                        jne   .Lx404_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx404_41
                        mov              r8, rax
                                                                                        jmp   .Lx404_40
.Lx404_56:
                        cmp              eax, 13
                                                                                        jne   .Lx404_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_41
                        cmp              rax, r8
                                                                                        je    .Lx404_41
                        mov              r8, rax
                                                                                        jmp   .Lx404_40
.Lx404_41:
                        lea              r9, [rbp + 3104]
.Lx404_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx404_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_43
                        cmp              esi, 1
                                                                                        jne   .Lx404_57
                        mov              r9, rax
                                                                                        jmp   .Lx404_42
.Lx404_57:
                        cmp              esi, 2
                                                                                        jne   .Lx404_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx404_43
                        mov              r9, rax
                                                                                        jmp   .Lx404_42
.Lx404_58:
                        cmp              eax, 13
                                                                                        jne   .Lx404_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_43
                        cmp              rax, r9
                                                                                        je    .Lx404_43
                        mov              r9, rax
                                                                                        jmp   .Lx404_42
.Lx404_43:
                        cmp              r8, r9
                                                                                        je    .Lx404_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx404_44
                        cmp              eax, 99
                                                                                        je    .Lx404_44
                        cmp              eax, 13
                                                                                        jne   .Lx404_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx404_44
                                                                                        jmp   .Lx404_45
.Lx404_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx404_53
                        cmp              eax, 99
                                                                                        je    .Lx404_53
                        cmp              eax, 13
                                                                                        jne   .Lx404_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx404_53
                                                                                        jmp   .Lx404_46
.Lx404_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx404_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx404_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx404_51
.Lx404_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx404_47
                        cmp              eax, 99
                                                                                        je    .Lx404_47
                        cmp              eax, 13
                                                                                        jne   .Lx404_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx404_47
                                                                                        jmp   .Lx404_48
.Lx404_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx404_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx404_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx404_51
.Lx404_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx404_49
                        cmp              edx, 14
                                                                                        je    .Lx404_53
                                                                                        jmp   .Lx404_52
.Lx404_49:
                        cmp              edx, 14
                                                                                        je    .Lx404_52
                        cmp              ecx, 7
                                                                                        je    .Lx404_53
                        cmp              edx, 7
                                                                                        je    .Lx404_53
                        cmp              ecx, 6
                                                                                        jne   .Lx404_50
                        cmp              edx, 6
                                                                                        jne   .Lx404_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx404_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx404_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx404_51
                                                                                        jmp   .Lx404_52
.Lx404_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx404_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx404_53
.Lx404_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx404_54
.Lx404_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx404_54
.Lx404_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx404_54:
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n226_op11_α
                                                                                        jmp   n279_suspend_α
n276_op11_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n280_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n278_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n281_op11_α
n278_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_suspend_α:
                        lea              rax, [rip + n279_suspend_β]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n279_suspend_β:
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n281_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n283_lit_string_α
n281_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_op11_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n284_op11_α
n282_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n285_lit_string_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n286_op11_α
n284_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n287_lit_string_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n288_lit_string_α
n286_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n289_lit_string_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n290_lit_string_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n291_lit_integer_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n292_lit_string_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n293_var_ref_α
.Lx422_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n294_var_ref_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n295_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n297_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n299_lit_string_α
n297_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n300_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n301_var_ref_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n300_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n302_op11_α
n300_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n302_op11_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n304_lit_string_α
n302_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n306_op11_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n307_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n308_op11_α
n306_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n309_op11_α
n307_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_op11_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n310_op11_α
n308_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n311_op11_α
n309_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_op11_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1872]
                        lea              r8, [rbp + 1872]
.Lx449_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              esi, 1
                                                                                        jne   .Lx449_55
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_55:
                        cmp              esi, 2
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_56:
                        cmp              eax, 13
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              rax, r8
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_41:
                        lea              r9, [rbp + 1888]
.Lx449_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              esi, 1
                                                                                        jne   .Lx449_57
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_57:
                        cmp              esi, 2
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_58:
                        cmp              eax, 13
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              rax, r9
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_43:
                        cmp              r8, r9
                                                                                        je    .Lx449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_44
                        cmp              eax, 99
                                                                                        je    .Lx449_44
                        cmp              eax, 13
                                                                                        jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx449_44
                                                                                        jmp   .Lx449_45
.Lx449_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_53
                        cmp              eax, 99
                                                                                        je    .Lx449_53
                        cmp              eax, 13
                                                                                        jne   .Lx449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_46
.Lx449_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx449_51
.Lx449_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_47
                        cmp              eax, 99
                                                                                        je    .Lx449_47
                        cmp              eax, 13
                                                                                        jne   .Lx449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_47
                                                                                        jmp   .Lx449_48
.Lx449_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx449_51
.Lx449_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx449_49
                        cmp              edx, 14
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_52
.Lx449_49:
                        cmp              edx, 14
                                                                                        je    .Lx449_52
                        cmp              ecx, 7
                                                                                        je    .Lx449_53
                        cmp              edx, 7
                                                                                        je    .Lx449_53
                        cmp              ecx, 6
                                                                                        jne   .Lx449_50
                        cmp              edx, 6
                                                                                        jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx449_51
                                                                                        jmp   .Lx449_52
.Lx449_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
.Lx449_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx449_54
.Lx449_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx449_54
.Lx449_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx449_54:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n312_var_ref_α
n310_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n311_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n313_lit_string_α
n311_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n314_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n315_op11_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n316_var_ref_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n315_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n317_op11_α
n315_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n248_op11_α
                                                                                        jmp   n319_op11_α
n317_op11_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n320_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
.Lx461_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx461_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_41
                        cmp              esi, 1
                                                                                        jne   .Lx461_55
                        mov              r8, rax
                                                                                        jmp   .Lx461_40
.Lx461_55:
                        cmp              esi, 2
                                                                                        jne   .Lx461_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx461_41
                        mov              r8, rax
                                                                                        jmp   .Lx461_40
.Lx461_56:
                        cmp              eax, 13
                                                                                        jne   .Lx461_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_41
                        cmp              rax, r8
                                                                                        je    .Lx461_41
                        mov              r8, rax
                                                                                        jmp   .Lx461_40
.Lx461_41:
                        lea              r9, [rbp + 448]
.Lx461_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx461_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_43
                        cmp              esi, 1
                                                                                        jne   .Lx461_57
                        mov              r9, rax
                                                                                        jmp   .Lx461_42
.Lx461_57:
                        cmp              esi, 2
                                                                                        jne   .Lx461_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx461_43
                        mov              r9, rax
                                                                                        jmp   .Lx461_42
.Lx461_58:
                        cmp              eax, 13
                                                                                        jne   .Lx461_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_43
                        cmp              rax, r9
                                                                                        je    .Lx461_43
                        mov              r9, rax
                                                                                        jmp   .Lx461_42
.Lx461_43:
                        cmp              r8, r9
                                                                                        je    .Lx461_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx461_44
                        cmp              eax, 99
                                                                                        je    .Lx461_44
                        cmp              eax, 13
                                                                                        jne   .Lx461_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx461_44
                                                                                        jmp   .Lx461_45
.Lx461_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx461_53
                        cmp              eax, 99
                                                                                        je    .Lx461_53
                        cmp              eax, 13
                                                                                        jne   .Lx461_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx461_53
                                                                                        jmp   .Lx461_46
.Lx461_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx461_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx461_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx461_51
.Lx461_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx461_47
                        cmp              eax, 99
                                                                                        je    .Lx461_47
                        cmp              eax, 13
                                                                                        jne   .Lx461_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx461_47
                                                                                        jmp   .Lx461_48
.Lx461_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx461_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx461_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx461_51
.Lx461_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx461_49
                        cmp              edx, 14
                                                                                        je    .Lx461_53
                                                                                        jmp   .Lx461_52
.Lx461_49:
                        cmp              edx, 14
                                                                                        je    .Lx461_52
                        cmp              ecx, 7
                                                                                        je    .Lx461_53
                        cmp              edx, 7
                                                                                        je    .Lx461_53
                        cmp              ecx, 6
                                                                                        jne   .Lx461_50
                        cmp              edx, 6
                                                                                        jne   .Lx461_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx461_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx461_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx461_51
                                                                                        jmp   .Lx461_52
.Lx461_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx461_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx461_53
.Lx461_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx461_54
.Lx461_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx461_54
.Lx461_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx461_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n248_op11_α
                                                                                        jmp   n321_var_ref_α
n319_op11_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n322_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n323_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n324_op11_α
n322_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n325_lit_real_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lx468_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx468_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_41
                        cmp              esi, 1
                                                                                        jne   .Lx468_55
                        mov              r8, rax
                                                                                        jmp   .Lx468_40
.Lx468_55:
                        cmp              esi, 2
                                                                                        jne   .Lx468_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx468_41
                        mov              r8, rax
                                                                                        jmp   .Lx468_40
.Lx468_56:
                        cmp              eax, 13
                                                                                        jne   .Lx468_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_41
                        cmp              rax, r8
                                                                                        je    .Lx468_41
                        mov              r8, rax
                                                                                        jmp   .Lx468_40
.Lx468_41:
                        lea              r9, [rbp + 1664]
.Lx468_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx468_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_43
                        cmp              esi, 1
                                                                                        jne   .Lx468_57
                        mov              r9, rax
                                                                                        jmp   .Lx468_42
.Lx468_57:
                        cmp              esi, 2
                                                                                        jne   .Lx468_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx468_43
                        mov              r9, rax
                                                                                        jmp   .Lx468_42
.Lx468_58:
                        cmp              eax, 13
                                                                                        jne   .Lx468_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_43
                        cmp              rax, r9
                                                                                        je    .Lx468_43
                        mov              r9, rax
                                                                                        jmp   .Lx468_42
.Lx468_43:
                        cmp              r8, r9
                                                                                        je    .Lx468_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx468_44
                        cmp              eax, 99
                                                                                        je    .Lx468_44
                        cmp              eax, 13
                                                                                        jne   .Lx468_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx468_44
                                                                                        jmp   .Lx468_45
.Lx468_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx468_53
                        cmp              eax, 99
                                                                                        je    .Lx468_53
                        cmp              eax, 13
                                                                                        jne   .Lx468_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx468_53
                                                                                        jmp   .Lx468_46
.Lx468_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx468_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx468_51
.Lx468_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx468_47
                        cmp              eax, 99
                                                                                        je    .Lx468_47
                        cmp              eax, 13
                                                                                        jne   .Lx468_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx468_47
                                                                                        jmp   .Lx468_48
.Lx468_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx468_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx468_51
.Lx468_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx468_49
                        cmp              edx, 14
                                                                                        je    .Lx468_53
                                                                                        jmp   .Lx468_52
.Lx468_49:
                        cmp              edx, 14
                                                                                        je    .Lx468_52
                        cmp              ecx, 7
                                                                                        je    .Lx468_53
                        cmp              edx, 7
                                                                                        je    .Lx468_53
                        cmp              ecx, 6
                                                                                        jne   .Lx468_50
                        cmp              edx, 6
                                                                                        jne   .Lx468_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx468_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx468_51
                                                                                        jmp   .Lx468_52
.Lx468_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx468_53
.Lx468_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx468_54
.Lx468_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx468_54
.Lx468_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx468_54:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n326_suspend_α
n324_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_real_α:
                        mov              qword ptr [rbp + 224], 7
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n327_lit_integer_α
.Lx469_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n326_suspend_α:
                        lea              rax, [rip + n326_suspend_β]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n326_suspend_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n328_var_ref_α
.Lx472_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n330_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n248_op11_α
                                                                                        jmp   n331_op11_α
n330_op11_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx478_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_41
                        cmp              esi, 1
                                                                                        jne   .Lx478_55
                        mov              r8, rax
                                                                                        jmp   .Lx478_40
.Lx478_55:
                        cmp              esi, 2
                                                                                        jne   .Lx478_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_41
                        mov              r8, rax
                                                                                        jmp   .Lx478_40
.Lx478_56:
                        cmp              eax, 13
                                                                                        jne   .Lx478_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_41
                        cmp              rax, r8
                                                                                        je    .Lx478_41
                        mov              r8, rax
                                                                                        jmp   .Lx478_40
.Lx478_41:
                        lea              r9, [rbp + 192]
.Lx478_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_43
                        cmp              esi, 1
                                                                                        jne   .Lx478_57
                        mov              r9, rax
                                                                                        jmp   .Lx478_42
.Lx478_57:
                        cmp              esi, 2
                                                                                        jne   .Lx478_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_43
                        mov              r9, rax
                                                                                        jmp   .Lx478_42
.Lx478_58:
                        cmp              eax, 13
                                                                                        jne   .Lx478_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_43
                        cmp              rax, r9
                                                                                        je    .Lx478_43
                        mov              r9, rax
                                                                                        jmp   .Lx478_42
.Lx478_43:
                        cmp              r8, r9
                                                                                        je    .Lx478_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_44
                        cmp              eax, 99
                                                                                        je    .Lx478_44
                        cmp              eax, 13
                                                                                        jne   .Lx478_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx478_44
                                                                                        jmp   .Lx478_45
.Lx478_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_53
                        cmp              eax, 99
                                                                                        je    .Lx478_53
                        cmp              eax, 13
                                                                                        jne   .Lx478_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx478_53
                                                                                        jmp   .Lx478_46
.Lx478_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx478_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx478_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx478_51
.Lx478_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_47
                        cmp              eax, 99
                                                                                        je    .Lx478_47
                        cmp              eax, 13
                                                                                        jne   .Lx478_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx478_47
                                                                                        jmp   .Lx478_48
.Lx478_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx478_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx478_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx478_51
.Lx478_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx478_49
                        cmp              edx, 14
                                                                                        je    .Lx478_53
                                                                                        jmp   .Lx478_52
.Lx478_49:
                        cmp              edx, 14
                                                                                        je    .Lx478_52
                        cmp              ecx, 7
                                                                                        je    .Lx478_53
                        cmp              edx, 7
                                                                                        je    .Lx478_53
                        cmp              ecx, 6
                                                                                        jne   .Lx478_50
                        cmp              edx, 6
                                                                                        jne   .Lx478_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx478_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx478_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx478_51
                                                                                        jmp   .Lx478_52
.Lx478_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx478_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx478_53
.Lx478_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx478_54
.Lx478_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx478_54
.Lx478_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx478_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n248_op11_α
                                                                                        jmp   n332_suspend_α
n331_op11_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n332_suspend_α:
                        lea              rax, [rip + n332_suspend_β]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n332_suspend_β:
                                                                                        jmp   n248_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 3760]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 3848]
                        mov              rbp, [rbp + 3864]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 3856]
                        lea              rsp, [rbp + 3872]
                        mov              rbp, [rbp + 3864]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tr$2F3_α
proc_tr$2F3_α:
                        .global          proc_tr$2F3_α
                        .global          proc_tr$2F3_β
                        .global          proc_tr$2F3_γ
                        .global          proc_tr$2F3_ω
                        sub              rsp, 1104
                        mov              [rsp + 1080], rcx
                        mov              [rsp + 1088], rdx
                        mov              [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1072
                        call             rt_jmp_frame_lexprep2@PLT
proc_tr$2F3_α_body:
                        lea              rax, [rip + n510_suspend_β]
                        mov              qword ptr [rbp + 992], rax
#-----------------------------------------------------------------------------------------------------------------------
n481_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx511_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx511_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx511_101
.Lx511_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx511_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_tr$2F3_ω
                                                                                        jmp   n482_var_ref_α
n481_op11_β:
                                                                                        jmp   proc_tr$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n483_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx516_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx516_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx516_41
                        cmp              esi, 1
                                                                                        jne   .Lx516_55
                        mov              r8, rax
                                                                                        jmp   .Lx516_40
.Lx516_55:
                        cmp              esi, 2
                                                                                        jne   .Lx516_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx516_41
                        mov              r8, rax
                                                                                        jmp   .Lx516_40
.Lx516_56:
                        cmp              eax, 13
                                                                                        jne   .Lx516_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx516_41
                        cmp              rax, r8
                                                                                        je    .Lx516_41
                        mov              r8, rax
                                                                                        jmp   .Lx516_40
.Lx516_41:
                        lea              r9, [rbp + 944]
.Lx516_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx516_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx516_43
                        cmp              esi, 1
                                                                                        jne   .Lx516_57
                        mov              r9, rax
                                                                                        jmp   .Lx516_42
.Lx516_57:
                        cmp              esi, 2
                                                                                        jne   .Lx516_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx516_43
                        mov              r9, rax
                                                                                        jmp   .Lx516_42
.Lx516_58:
                        cmp              eax, 13
                                                                                        jne   .Lx516_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx516_43
                        cmp              rax, r9
                                                                                        je    .Lx516_43
                        mov              r9, rax
                                                                                        jmp   .Lx516_42
.Lx516_43:
                        cmp              r8, r9
                                                                                        je    .Lx516_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx516_44
                        cmp              eax, 99
                                                                                        je    .Lx516_44
                        cmp              eax, 13
                                                                                        jne   .Lx516_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx516_44
                                                                                        jmp   .Lx516_45
.Lx516_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx516_53
                        cmp              eax, 99
                                                                                        je    .Lx516_53
                        cmp              eax, 13
                                                                                        jne   .Lx516_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx516_53
                                                                                        jmp   .Lx516_46
.Lx516_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx516_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx516_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx516_51
.Lx516_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx516_47
                        cmp              eax, 99
                                                                                        je    .Lx516_47
                        cmp              eax, 13
                                                                                        jne   .Lx516_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx516_47
                                                                                        jmp   .Lx516_48
.Lx516_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx516_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx516_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx516_51
.Lx516_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx516_49
                        cmp              edx, 14
                                                                                        je    .Lx516_53
                                                                                        jmp   .Lx516_52
.Lx516_49:
                        cmp              edx, 14
                                                                                        je    .Lx516_52
                        cmp              ecx, 7
                                                                                        je    .Lx516_53
                        cmp              edx, 7
                                                                                        je    .Lx516_53
                        cmp              ecx, 6
                                                                                        jne   .Lx516_50
                        cmp              edx, 6
                                                                                        jne   .Lx516_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx516_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx516_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx516_51
                                                                                        jmp   .Lx516_52
.Lx516_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx516_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx516_53
.Lx516_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx516_54
.Lx516_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx516_54
.Lx516_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx516_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n485_var_ref_α
n484_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_tr$2F3_ω
                                                                                        jmp   proc_tr$2F3_ω
n486_op11_β:
                                                                                        jmp   proc_tr$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n488_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx522_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx522_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_41
                        cmp              esi, 1
                                                                                        jne   .Lx522_55
                        mov              r8, rax
                                                                                        jmp   .Lx522_40
.Lx522_55:
                        cmp              esi, 2
                                                                                        jne   .Lx522_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx522_41
                        mov              r8, rax
                                                                                        jmp   .Lx522_40
.Lx522_56:
                        cmp              eax, 13
                                                                                        jne   .Lx522_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_41
                        cmp              rax, r8
                                                                                        je    .Lx522_41
                        mov              r8, rax
                                                                                        jmp   .Lx522_40
.Lx522_41:
                        lea              r9, [rbp + 864]
.Lx522_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx522_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_43
                        cmp              esi, 1
                                                                                        jne   .Lx522_57
                        mov              r9, rax
                                                                                        jmp   .Lx522_42
.Lx522_57:
                        cmp              esi, 2
                                                                                        jne   .Lx522_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx522_43
                        mov              r9, rax
                                                                                        jmp   .Lx522_42
.Lx522_58:
                        cmp              eax, 13
                                                                                        jne   .Lx522_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_43
                        cmp              rax, r9
                                                                                        je    .Lx522_43
                        mov              r9, rax
                                                                                        jmp   .Lx522_42
.Lx522_43:
                        cmp              r8, r9
                                                                                        je    .Lx522_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx522_44
                        cmp              eax, 99
                                                                                        je    .Lx522_44
                        cmp              eax, 13
                                                                                        jne   .Lx522_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx522_44
                                                                                        jmp   .Lx522_45
.Lx522_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx522_53
                        cmp              eax, 99
                                                                                        je    .Lx522_53
                        cmp              eax, 13
                                                                                        jne   .Lx522_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx522_53
                                                                                        jmp   .Lx522_46
.Lx522_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx522_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx522_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx522_51
.Lx522_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx522_47
                        cmp              eax, 99
                                                                                        je    .Lx522_47
                        cmp              eax, 13
                                                                                        jne   .Lx522_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx522_47
                                                                                        jmp   .Lx522_48
.Lx522_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx522_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx522_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx522_51
.Lx522_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx522_49
                        cmp              edx, 14
                                                                                        je    .Lx522_53
                                                                                        jmp   .Lx522_52
.Lx522_49:
                        cmp              edx, 14
                                                                                        je    .Lx522_52
                        cmp              ecx, 7
                                                                                        je    .Lx522_53
                        cmp              edx, 7
                                                                                        je    .Lx522_53
                        cmp              ecx, 6
                                                                                        jne   .Lx522_50
                        cmp              edx, 6
                                                                                        jne   .Lx522_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx522_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx522_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx522_51
                                                                                        jmp   .Lx522_52
.Lx522_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx522_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx522_53
.Lx522_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx522_54
.Lx522_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx522_54
.Lx522_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx522_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n489_var_ref_α
n488_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n490_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n491_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n491_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        lea              r8, [rbp + 768]
.Lx527_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx527_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx527_41
                        cmp              esi, 1
                                                                                        jne   .Lx527_55
                        mov              r8, rax
                                                                                        jmp   .Lx527_40
.Lx527_55:
                        cmp              esi, 2
                                                                                        jne   .Lx527_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx527_41
                        mov              r8, rax
                                                                                        jmp   .Lx527_40
.Lx527_56:
                        cmp              eax, 13
                                                                                        jne   .Lx527_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx527_41
                        cmp              rax, r8
                                                                                        je    .Lx527_41
                        mov              r8, rax
                                                                                        jmp   .Lx527_40
.Lx527_41:
                        lea              r9, [rbp + 784]
.Lx527_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx527_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx527_43
                        cmp              esi, 1
                                                                                        jne   .Lx527_57
                        mov              r9, rax
                                                                                        jmp   .Lx527_42
.Lx527_57:
                        cmp              esi, 2
                                                                                        jne   .Lx527_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx527_43
                        mov              r9, rax
                                                                                        jmp   .Lx527_42
.Lx527_58:
                        cmp              eax, 13
                                                                                        jne   .Lx527_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx527_43
                        cmp              rax, r9
                                                                                        je    .Lx527_43
                        mov              r9, rax
                                                                                        jmp   .Lx527_42
.Lx527_43:
                        cmp              r8, r9
                                                                                        je    .Lx527_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx527_44
                        cmp              eax, 99
                                                                                        je    .Lx527_44
                        cmp              eax, 13
                                                                                        jne   .Lx527_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx527_44
                                                                                        jmp   .Lx527_45
.Lx527_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx527_53
                        cmp              eax, 99
                                                                                        je    .Lx527_53
                        cmp              eax, 13
                                                                                        jne   .Lx527_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx527_53
                                                                                        jmp   .Lx527_46
.Lx527_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx527_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx527_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx527_51
.Lx527_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx527_47
                        cmp              eax, 99
                                                                                        je    .Lx527_47
                        cmp              eax, 13
                                                                                        jne   .Lx527_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx527_47
                                                                                        jmp   .Lx527_48
.Lx527_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx527_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx527_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx527_51
.Lx527_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx527_49
                        cmp              edx, 14
                                                                                        je    .Lx527_53
                                                                                        jmp   .Lx527_52
.Lx527_49:
                        cmp              edx, 14
                                                                                        je    .Lx527_52
                        cmp              ecx, 7
                                                                                        je    .Lx527_53
                        cmp              edx, 7
                                                                                        je    .Lx527_53
                        cmp              ecx, 6
                                                                                        jne   .Lx527_50
                        cmp              edx, 6
                                                                                        jne   .Lx527_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx527_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx527_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx527_51
                                                                                        jmp   .Lx527_52
.Lx527_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx527_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx527_53
.Lx527_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx527_54
.Lx527_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx527_54
.Lx527_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx527_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n492_lit_string_α
n491_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n493_lit_string_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "seed"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n494_op11_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n494_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n495_call_proc_staged_α
n494_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx532_21
.Lx532_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx532_21:
                        mov              rdi, qword ptr [rip + .Lx532_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx532_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_3]
                        lea              rdx, [rip + .Lx532_4]
                                                                                        jmp   rax
.Lx532_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_1:
                        call             rt_faildescr@PLT
.Lx532_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n496_lit_string_α
n495_call_proc_staged_β:
                                                                                        jmp   n486_op11_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "set_random/1"
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n497_var_ref_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n499_call_proc_staged_α
n498_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx538_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx538_21
.Lx538_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx538_21:
                        mov              rdi, qword ptr [rip + .Lx538_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx538_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx538_3]
                        lea              rdx, [rip + .Lx538_4]
                                                                                        jmp   rax
.Lx538_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx538_2
.Lx538_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx538_2
.Lx538_1:
                        call             rt_faildescr@PLT
.Lx538_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n495_call_proc_staged_β
                                                                                        jmp   n500_var_ref_α
n499_call_proc_staged_β:
                                                                                        jmp   n495_call_proc_staged_β
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "random_property/1"
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n501_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n502_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n502_call_proc_staged_α:
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 448]
                        call             proc_random_seq$2F2_dcα
                                                                                        jmp   .Lx544_2
.Lx544_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n499_call_proc_staged_β
                                                                                        jmp   n503_lit_string_α
n502_call_proc_staged_β:
                                                                                        jmp   n499_call_proc_staged_β
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "random_seq/2"
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n504_var_ref_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "state"
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n505_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n505_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n506_call_proc_staged_α
n505_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx550_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx550_21
.Lx550_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx550_21:
                        mov              rdi, qword ptr [rip + .Lx550_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx550_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx550_3]
                        lea              rdx, [rip + .Lx550_4]
                                                                                        jmp   rax
.Lx550_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx550_2
.Lx550_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx550_2
.Lx550_1:
                        call             rt_faildescr@PLT
.Lx550_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n502_call_proc_staged_β
                                                                                        jmp   n507_var_ref_α
n506_call_proc_staged_β:
                                                                                        jmp   n502_call_proc_staged_β
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "set_random/1"
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n508_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n509_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n509_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        lea              rdx, [rbp + 208]
                        call             proc_random_seq$2F2_dcα
                                                                                        jmp   .Lx556_2
.Lx556_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n506_call_proc_staged_β
                                                                                        jmp   n510_suspend_α
n509_call_proc_staged_β:
                                                                                        jmp   n506_call_proc_staged_β
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "random_seq/2"
#-----------------------------------------------------------------------------------------------------------------------
n510_suspend_α:
                        lea              rax, [rip + n510_suspend_β]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_tr$2F3_γ
n510_suspend_β:
                                                                                        jmp   n509_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_tr$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tr$2F3_β:
                                                                                        jmp   qword ptr [rbp + 992]
#-----------------------------------------------------------------------------------------------------------------------
proc_tr$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_tr$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1080]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tr$2F3_ω:
                        mov              rax, [rbp + 1088]
                        lea              rsp, [rbp + 1104]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_random$2F0_α
proc_test_random$2F0_α:
                        .global          proc_test_random$2F0_α
                        .global          proc_test_random$2F0_β
                        .global          proc_test_random$2F0_γ
                        .global          proc_test_random$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_random$2F0_α_body:
                        lea              rax, [rip + n566_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n559_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx567_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx567_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx567_101
.Lx567_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx567_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_random$2F0_ω
                                                                                        jmp   n560_lit_string_α
n559_op11_β:
                                                                                        jmp   proc_test_random$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n561_lit_string_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n562_lit_string_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n563_op11_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n563_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n565_op11_α
                                                                                        jmp   n564_call_proc_staged_α
n563_op11_β:
                                                                                        jmp   n565_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n564_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx573_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx573_21
.Lx573_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx573_21:
                        mov              rdi, qword ptr [rip + .Lx573_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx573_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx573_3]
                        lea              rdx, [rip + .Lx573_4]
                                                                                        jmp   rax
.Lx573_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx573_2
.Lx573_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx573_2
.Lx573_1:
                        call             rt_faildescr@PLT
.Lx573_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n565_op11_α
                                                                                        jmp   n566_suspend_α
n564_call_proc_staged_β:
                                                                                        jmp   n565_op11_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n565_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_random$2F0_ω
                                                                                        jmp   proc_test_random$2F0_ω
n565_op11_β:
                                                                                        jmp   proc_test_random$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n566_suspend_α:
                        lea              rax, [rip + n566_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_random$2F0_γ
n566_suspend_β:
                                                                                        jmp   n564_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_random$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_random$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_random$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_random$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_random$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_6$2F0_α
proc_pj_dir_6$2F0_α:
                        .global          proc_pj_dir_6$2F0_α
                        .global          proc_pj_dir_6$2F0_β
                        .global          proc_pj_dir_6$2F0_γ
                        .global          proc_pj_dir_6$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n580_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n577_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx582_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx582_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx582_101
.Lx582_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx582_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   n578_lit_string_α
n577_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n579_call_proc_staged_α
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n579_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx585_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx585_21
.Lx585_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx585_21:
                        mov              rdi, qword ptr [rip + .Lx585_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx585_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx585_3]
                        lea              rdx, [rip + .Lx585_4]
                                                                                        jmp   rax
.Lx585_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx585_2
.Lx585_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx585_2
.Lx585_1:
                        call             rt_faildescr@PLT
.Lx585_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n581_op11_α
                                                                                        jmp   n580_suspend_α
n579_call_proc_staged_β:
                                                                                        jmp   n581_op11_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n580_suspend_α:
                        lea              rax, [rip + n580_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_6$2F0_γ
n580_suspend_β:
                                                                                        jmp   n579_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n581_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   proc_pj_dir_6$2F0_ω
n581_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_6$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n589_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx609_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx609_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx609_101
.Lx609_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx609_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n590_lit_string_α
n589_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n591_lit_string_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n592_op11_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n594_op11_α
                                                                                        jmp   n593_lit_string_α
n592_op11_β:
                                                                                        jmp   n594_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n595_lit_string_α
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n594_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n596_lit_string_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n597_lit_integer_α
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "random_subseq"
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n598_op11_α
.Lx617_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n598_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n599_lit_string_α
n598_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n600_lit_string_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n601_lit_string_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n602_lit_integer_α
.Lx621_0:
                        .quad            .Lx621_0_s
.Lx621_0_s:
                        .string          "random_numlist"
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n603_op11_α
.Lx622_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n603_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n604_lit_string_α
n603_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n605_op11_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n605_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n606_op11_α
n605_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n594_op11_α
                                                                                        jmp   n607_call_proc_staged_α
n606_op11_β:
                                                                                        jmp   n594_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n607_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx628_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx628_21
.Lx628_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx628_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx628_22
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx628_23
.Lx628_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx628_23:
                        mov              rdi, qword ptr [rip + .Lx628_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx628_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx628_3]
                        lea              rdx, [rip + .Lx628_4]
                                                                                        jmp   rax
.Lx628_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx628_2
.Lx628_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx628_2
.Lx628_1:
                        call             rt_faildescr@PLT
.Lx628_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n594_op11_α
                                                                                        jmp   n608_suspend_α
n607_call_proc_staged_β:
                                                                                        jmp   n594_op11_α
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n608_suspend_α:
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n608_suspend_β:
                                                                                        jmp   n607_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n644_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n631_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx645_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx645_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx645_101
.Lx645_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx645_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n632_lit_string_α
n631_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n633_lit_string_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n634_op11_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "lists"
#-----------------------------------------------------------------------------------------------------------------------
n634_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n636_op11_α
                                                                                        jmp   n635_lit_string_α
n634_op11_β:
                                                                                        jmp   n636_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n637_lit_string_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n636_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n636_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n638_lit_string_α
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n639_lit_integer_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "numlist"
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n640_op11_α
.Lx653_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n640_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n641_lit_string_α
n640_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n642_op11_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n642_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n636_op11_α
                                                                                        jmp   n643_call_proc_staged_α
n642_op11_β:
                                                                                        jmp   n636_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n643_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx658_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx658_21
.Lx658_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx658_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx658_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx658_23
.Lx658_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx658_23:
                        mov              rdi, qword ptr [rip + .Lx658_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx658_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx658_3]
                        lea              rdx, [rip + .Lx658_4]
                                                                                        jmp   rax
.Lx658_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx658_2
.Lx658_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx658_2
.Lx658_1:
                        call             rt_faildescr@PLT
.Lx658_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n636_op11_α
                                                                                        jmp   n644_suspend_α
n643_call_proc_staged_β:
                                                                                        jmp   n636_op11_α
.Lx658_0:
                        .quad            .Lx658_0_s
.Lx658_0_s:
                        .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n644_suspend_α:
                        lea              rax, [rip + n644_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n644_suspend_β:
                                                                                        jmp   n643_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n672_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n661_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx673_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx673_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx673_101
.Lx673_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx673_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n662_lit_string_α
n661_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n663_lit_string_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "test_random"
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n664_lit_string_α
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n665_lit_string_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n666_lit_integer_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "test_random"
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n667_op11_α
.Lx678_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n667_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n668_lit_string_α
n667_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n669_op11_α
.Lx680_0:
                        .quad            .Lx680_0_s
.Lx680_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n669_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n671_op11_α
                                                                                        jmp   n670_call_proc_staged_α
n669_op11_β:
                                                                                        jmp   n671_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx683_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx683_21
.Lx683_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx683_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx683_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx683_23
.Lx683_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx683_23:
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx683_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4]
                                                                                        jmp   rax
.Lx683_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx683_2
.Lx683_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx683_2
.Lx683_1:
                        call             rt_faildescr@PLT
.Lx683_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n671_op11_α
                                                                                        jmp   n672_suspend_α
n670_call_proc_staged_β:
                                                                                        jmp   n671_op11_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n671_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n671_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n672_suspend_α:
                        lea              rax, [rip + n672_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n672_suspend_β:
                                                                                        jmp   n670_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$numlist_$2F3_α
proc_$numlist_$2F3_α:
                        .global          proc_$numlist_$2F3_α
                        .global          proc_$numlist_$2F3_β
                        .global          proc_$numlist_$2F3_γ
                        .global          proc_$numlist_$2F3_ω
                        sub              rsp, 1248
                        mov              [rsp + 1224], rcx
                        mov              [rsp + 1232], rdx
                        mov              [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1216
                        call             rt_jmp_frame_lexprep2@PLT
proc_$numlist_$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n687_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx728_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx728_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx728_101
.Lx728_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx728_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$numlist_$2F3_ω
                                                                                        jmp   n688_var_ref_α
n687_op11_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n689_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n690_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n690_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx733_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx733_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx733_41
                        cmp              esi, 1
                                                                                        jne   .Lx733_55
                        mov              r8, rax
                                                                                        jmp   .Lx733_40
.Lx733_55:
                        cmp              esi, 2
                                                                                        jne   .Lx733_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx733_41
                        mov              r8, rax
                                                                                        jmp   .Lx733_40
.Lx733_56:
                        cmp              eax, 13
                                                                                        jne   .Lx733_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx733_41
                        cmp              rax, r8
                                                                                        je    .Lx733_41
                        mov              r8, rax
                                                                                        jmp   .Lx733_40
.Lx733_41:
                        lea              r9, [rbp + 1104]
.Lx733_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx733_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx733_43
                        cmp              esi, 1
                                                                                        jne   .Lx733_57
                        mov              r9, rax
                                                                                        jmp   .Lx733_42
.Lx733_57:
                        cmp              esi, 2
                                                                                        jne   .Lx733_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx733_43
                        mov              r9, rax
                                                                                        jmp   .Lx733_42
.Lx733_58:
                        cmp              eax, 13
                                                                                        jne   .Lx733_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx733_43
                        cmp              rax, r9
                                                                                        je    .Lx733_43
                        mov              r9, rax
                                                                                        jmp   .Lx733_42
.Lx733_43:
                        cmp              r8, r9
                                                                                        je    .Lx733_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx733_44
                        cmp              eax, 99
                                                                                        je    .Lx733_44
                        cmp              eax, 13
                                                                                        jne   .Lx733_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx733_44
                                                                                        jmp   .Lx733_45
.Lx733_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx733_53
                        cmp              eax, 99
                                                                                        je    .Lx733_53
                        cmp              eax, 13
                                                                                        jne   .Lx733_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx733_53
                                                                                        jmp   .Lx733_46
.Lx733_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx733_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx733_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx733_51
.Lx733_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx733_47
                        cmp              eax, 99
                                                                                        je    .Lx733_47
                        cmp              eax, 13
                                                                                        jne   .Lx733_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx733_47
                                                                                        jmp   .Lx733_48
.Lx733_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx733_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx733_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx733_51
.Lx733_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx733_49
                        cmp              edx, 14
                                                                                        je    .Lx733_53
                                                                                        jmp   .Lx733_52
.Lx733_49:
                        cmp              edx, 14
                                                                                        je    .Lx733_52
                        cmp              ecx, 7
                                                                                        je    .Lx733_53
                        cmp              edx, 7
                                                                                        je    .Lx733_53
                        cmp              ecx, 6
                                                                                        jne   .Lx733_50
                        cmp              edx, 6
                                                                                        jne   .Lx733_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx733_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx733_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx733_51
                                                                                        jmp   .Lx733_52
.Lx733_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx733_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx733_53
.Lx733_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx733_54
.Lx733_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx733_54
.Lx733_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx733_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n692_op11_α
                                                                                        jmp   n691_var_ref_α
n690_op11_β:
                                                                                        jmp   n692_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n693_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n692_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_$numlist_$2F3_ω
                                                                                        jmp   n694_var_ref_α
n692_op11_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n695_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n694_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n696_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n695_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx741_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx741_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx741_41
                        cmp              esi, 1
                                                                                        jne   .Lx741_55
                        mov              r8, rax
                                                                                        jmp   .Lx741_40
.Lx741_55:
                        cmp              esi, 2
                                                                                        jne   .Lx741_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx741_41
                        mov              r8, rax
                                                                                        jmp   .Lx741_40
.Lx741_56:
                        cmp              eax, 13
                                                                                        jne   .Lx741_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx741_41
                        cmp              rax, r8
                                                                                        je    .Lx741_41
                        mov              r8, rax
                                                                                        jmp   .Lx741_40
.Lx741_41:
                        lea              r9, [rbp + 1024]
.Lx741_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx741_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx741_43
                        cmp              esi, 1
                                                                                        jne   .Lx741_57
                        mov              r9, rax
                                                                                        jmp   .Lx741_42
.Lx741_57:
                        cmp              esi, 2
                                                                                        jne   .Lx741_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx741_43
                        mov              r9, rax
                                                                                        jmp   .Lx741_42
.Lx741_58:
                        cmp              eax, 13
                                                                                        jne   .Lx741_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx741_43
                        cmp              rax, r9
                                                                                        je    .Lx741_43
                        mov              r9, rax
                                                                                        jmp   .Lx741_42
.Lx741_43:
                        cmp              r8, r9
                                                                                        je    .Lx741_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx741_44
                        cmp              eax, 99
                                                                                        je    .Lx741_44
                        cmp              eax, 13
                                                                                        jne   .Lx741_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx741_44
                                                                                        jmp   .Lx741_45
.Lx741_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx741_53
                        cmp              eax, 99
                                                                                        je    .Lx741_53
                        cmp              eax, 13
                                                                                        jne   .Lx741_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx741_53
                                                                                        jmp   .Lx741_46
.Lx741_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx741_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx741_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx741_51
.Lx741_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx741_47
                        cmp              eax, 99
                                                                                        je    .Lx741_47
                        cmp              eax, 13
                                                                                        jne   .Lx741_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx741_47
                                                                                        jmp   .Lx741_48
.Lx741_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx741_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx741_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx741_51
.Lx741_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx741_49
                        cmp              edx, 14
                                                                                        je    .Lx741_53
                                                                                        jmp   .Lx741_52
.Lx741_49:
                        cmp              edx, 14
                                                                                        je    .Lx741_52
                        cmp              ecx, 7
                                                                                        je    .Lx741_53
                        cmp              edx, 7
                                                                                        je    .Lx741_53
                        cmp              ecx, 6
                                                                                        jne   .Lx741_50
                        cmp              edx, 6
                                                                                        jne   .Lx741_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx741_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx741_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx741_51
                                                                                        jmp   .Lx741_52
.Lx741_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx741_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx741_53
.Lx741_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx741_54
.Lx741_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx741_54
.Lx741_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx741_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n692_op11_α
                                                                                        jmp   n697_var_ref_α
n695_op11_β:
                                                                                        jmp   n692_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n698_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n697_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n698_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx746_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx746_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_41
                        cmp              esi, 1
                                                                                        jne   .Lx746_55
                        mov              r8, rax
                                                                                        jmp   .Lx746_40
.Lx746_55:
                        cmp              esi, 2
                                                                                        jne   .Lx746_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx746_41
                        mov              r8, rax
                                                                                        jmp   .Lx746_40
.Lx746_56:
                        cmp              eax, 13
                                                                                        jne   .Lx746_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_41
                        cmp              rax, r8
                                                                                        je    .Lx746_41
                        mov              r8, rax
                                                                                        jmp   .Lx746_40
.Lx746_41:
                        lea              r9, [rbp + 752]
.Lx746_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx746_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_43
                        cmp              esi, 1
                                                                                        jne   .Lx746_57
                        mov              r9, rax
                                                                                        jmp   .Lx746_42
.Lx746_57:
                        cmp              esi, 2
                                                                                        jne   .Lx746_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx746_43
                        mov              r9, rax
                                                                                        jmp   .Lx746_42
.Lx746_58:
                        cmp              eax, 13
                                                                                        jne   .Lx746_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_43
                        cmp              rax, r9
                                                                                        je    .Lx746_43
                        mov              r9, rax
                                                                                        jmp   .Lx746_42
.Lx746_43:
                        cmp              r8, r9
                                                                                        je    .Lx746_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx746_44
                        cmp              eax, 99
                                                                                        je    .Lx746_44
                        cmp              eax, 13
                                                                                        jne   .Lx746_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx746_44
                                                                                        jmp   .Lx746_45
.Lx746_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx746_53
                        cmp              eax, 99
                                                                                        je    .Lx746_53
                        cmp              eax, 13
                                                                                        jne   .Lx746_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx746_53
                                                                                        jmp   .Lx746_46
.Lx746_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx746_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx746_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx746_51
.Lx746_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx746_47
                        cmp              eax, 99
                                                                                        je    .Lx746_47
                        cmp              eax, 13
                                                                                        jne   .Lx746_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx746_47
                                                                                        jmp   .Lx746_48
.Lx746_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx746_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx746_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx746_51
.Lx746_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx746_49
                        cmp              edx, 14
                                                                                        je    .Lx746_53
                                                                                        jmp   .Lx746_52
.Lx746_49:
                        cmp              edx, 14
                                                                                        je    .Lx746_52
                        cmp              ecx, 7
                                                                                        je    .Lx746_53
                        cmp              edx, 7
                                                                                        je    .Lx746_53
                        cmp              ecx, 6
                                                                                        jne   .Lx746_50
                        cmp              edx, 6
                                                                                        jne   .Lx746_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx746_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx746_51
                                                                                        jmp   .Lx746_52
.Lx746_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx746_53
.Lx746_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx746_54
.Lx746_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx746_54
.Lx746_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx746_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n700_var_ref_α
n698_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n702_op11_α
.Lx747_0:
                        .quad            .Lx747_0_s
.Lx747_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n703_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n701_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_$numlist_$2F3_ω
                                                                                        jmp   proc_$numlist_$2F3_ω
n701_op11_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n702_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lx751_2]
                                                                                        jmp   .Lx751_3
.Lx751_2:
                        .quad            .Lx751_2_s
.Lx751_2_s:
                        .string          "[]"
.Lx751_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n692_op11_α
                                                                                        jmp   n704_var_α
n702_op11_β:
                                                                                        jmp   n692_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n703_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n705_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n706_var_α
#-----------------------------------------------------------------------------------------------------------------------
n705_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx756_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx756_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx756_41
                        cmp              esi, 1
                                                                                        jne   .Lx756_55
                        mov              r8, rax
                                                                                        jmp   .Lx756_40
.Lx756_55:
                        cmp              esi, 2
                                                                                        jne   .Lx756_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx756_41
                        mov              r8, rax
                                                                                        jmp   .Lx756_40
.Lx756_56:
                        cmp              eax, 13
                                                                                        jne   .Lx756_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx756_41
                        cmp              rax, r8
                                                                                        je    .Lx756_41
                        mov              r8, rax
                                                                                        jmp   .Lx756_40
.Lx756_41:
                        lea              r9, [rbp + 672]
.Lx756_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx756_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx756_43
                        cmp              esi, 1
                                                                                        jne   .Lx756_57
                        mov              r9, rax
                                                                                        jmp   .Lx756_42
.Lx756_57:
                        cmp              esi, 2
                                                                                        jne   .Lx756_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx756_43
                        mov              r9, rax
                                                                                        jmp   .Lx756_42
.Lx756_58:
                        cmp              eax, 13
                                                                                        jne   .Lx756_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx756_43
                        cmp              rax, r9
                                                                                        je    .Lx756_43
                        mov              r9, rax
                                                                                        jmp   .Lx756_42
.Lx756_43:
                        cmp              r8, r9
                                                                                        je    .Lx756_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx756_44
                        cmp              eax, 99
                                                                                        je    .Lx756_44
                        cmp              eax, 13
                                                                                        jne   .Lx756_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx756_44
                                                                                        jmp   .Lx756_45
.Lx756_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx756_53
                        cmp              eax, 99
                                                                                        je    .Lx756_53
                        cmp              eax, 13
                                                                                        jne   .Lx756_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx756_53
                                                                                        jmp   .Lx756_46
.Lx756_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx756_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx756_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx756_51
.Lx756_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx756_47
                        cmp              eax, 99
                                                                                        je    .Lx756_47
                        cmp              eax, 13
                                                                                        jne   .Lx756_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx756_47
                                                                                        jmp   .Lx756_48
.Lx756_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx756_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx756_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx756_51
.Lx756_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx756_49
                        cmp              edx, 14
                                                                                        je    .Lx756_53
                                                                                        jmp   .Lx756_52
.Lx756_49:
                        cmp              edx, 14
                                                                                        je    .Lx756_52
                        cmp              ecx, 7
                                                                                        je    .Lx756_53
                        cmp              edx, 7
                                                                                        je    .Lx756_53
                        cmp              ecx, 6
                                                                                        jne   .Lx756_50
                        cmp              edx, 6
                                                                                        jne   .Lx756_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx756_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx756_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx756_51
                                                                                        jmp   .Lx756_52
.Lx756_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx756_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx756_53
.Lx756_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx756_54
.Lx756_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx756_54
.Lx756_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx756_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n707_var_ref_α
n705_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n708_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n707_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n709_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n708_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n692_op11_α
                                                                                        jmp   n710_op19_α
n708_op11_β:
                                                                                        jmp   n692_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n711_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n710_op19_α:
                                                                                        jmp   n712_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n713_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n712_move_label_α:
                        lea              rax, [rip + n692_op11_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_$numlist_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n713_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx769_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_61
                        cmp              esi, 1
                                                                                        jne   .Lx769_62
                        mov              r8, rax
                                                                                        jmp   .Lx769_60
.Lx769_62:
                        cmp              esi, 2
                                                                                        jne   .Lx769_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_61
                        mov              r8, rax
                                                                                        jmp   .Lx769_60
.Lx769_63:
                        cmp              eax, 13
                                                                                        jne   .Lx769_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_61
                        cmp              rax, r8
                                                                                        je    .Lx769_61
                        mov              r8, rax
                                                                                        jmp   .Lx769_60
.Lx769_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_80
                        cmp              eax, 99
                                                                                        je    .Lx769_80
                        cmp              eax, 13
                                                                                        jne   .Lx769_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx769_80
                                                                                        jmp   .Lx769_74
.Lx769_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx769_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx769_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx769_73
                        lea              r9, [rbp + 576]
.Lx769_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_65
                        cmp              esi, 1
                                                                                        jne   .Lx769_66
                        mov              r9, rax
                                                                                        jmp   .Lx769_64
.Lx769_66:
                        cmp              esi, 2
                                                                                        jne   .Lx769_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_65
                        mov              r9, rax
                                                                                        jmp   .Lx769_64
.Lx769_67:
                        cmp              eax, 13
                                                                                        jne   .Lx769_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_65
                        cmp              rax, r9
                                                                                        je    .Lx769_65
                        mov              r9, rax
                                                                                        jmp   .Lx769_64
.Lx769_65:
                        lea              rcx, [rbp + 592]
.Lx769_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx769_69
                        cmp              esi, 1
                                                                                        jne   .Lx769_70
                        mov              rcx, rax
                                                                                        jmp   .Lx769_68
.Lx769_70:
                        cmp              esi, 2
                                                                                        jne   .Lx769_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_69
                        mov              rcx, rax
                                                                                        jmp   .Lx769_68
.Lx769_71:
                        cmp              eax, 13
                                                                                        jne   .Lx769_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx769_69
                        cmp              rax, rcx
                                                                                        je    .Lx769_69
                        mov              rcx, rax
                                                                                        jmp   .Lx769_68
.Lx769_69:
                        cmp              r9, rcx
                                                                                        je    .Lx769_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_75
                        cmp              eax, 99
                                                                                        je    .Lx769_75
                        cmp              eax, 13
                                                                                        jne   .Lx769_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx769_75
                                                                                        jmp   .Lx769_72
.Lx769_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_76
                        cmp              eax, 99
                                                                                        je    .Lx769_76
                        cmp              eax, 13
                                                                                        jne   .Lx769_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx769_76
                                                                                        jmp   .Lx769_72
.Lx769_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx769_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx769_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx769_77
.Lx769_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx769_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx769_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx769_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx769_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx769_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 576]
.Lx769_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_82
                        cmp              esi, 1
                                                                                        jne   .Lx769_83
                        mov              r9, rax
                                                                                        jmp   .Lx769_81
.Lx769_83:
                        cmp              esi, 2
                                                                                        jne   .Lx769_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_82
                        mov              r9, rax
                                                                                        jmp   .Lx769_81
.Lx769_84:
                        cmp              eax, 13
                                                                                        jne   .Lx769_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_82
                        cmp              rax, r9
                                                                                        je    .Lx769_82
                        mov              r9, rax
                                                                                        jmp   .Lx769_81
.Lx769_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_85
                        cmp              eax, 99
                                                                                        je    .Lx769_85
                        cmp              eax, 13
                                                                                        jne   .Lx769_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx769_85
                                                                                        jmp   .Lx769_86
.Lx769_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx769_87
.Lx769_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx769_87:
                        lea              rcx, [rbp + 592]
.Lx769_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx769_89
                        cmp              esi, 1
                                                                                        jne   .Lx769_90
                        mov              rcx, rax
                                                                                        jmp   .Lx769_88
.Lx769_90:
                        cmp              esi, 2
                                                                                        jne   .Lx769_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_89
                        mov              rcx, rax
                                                                                        jmp   .Lx769_88
.Lx769_91:
                        cmp              eax, 13
                                                                                        jne   .Lx769_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx769_89
                        cmp              rax, rcx
                                                                                        je    .Lx769_89
                        mov              rcx, rax
                                                                                        jmp   .Lx769_88
.Lx769_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_92
                        cmp              eax, 99
                                                                                        je    .Lx769_92
                        cmp              eax, 13
                                                                                        jne   .Lx769_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx769_92
                                                                                        jmp   .Lx769_93
.Lx769_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx769_94
.Lx769_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx769_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx769_77
.Lx769_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx769_77
.Lx769_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx769_77:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n715_var_α
n713_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n714_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n714_disjunction_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n716_var_α
#-----------------------------------------------------------------------------------------------------------------------
n716_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n717_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n717_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_le@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n718_var_ref_α
n717_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n718_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n719_var_α
#-----------------------------------------------------------------------------------------------------------------------
n719_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n720_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n721_op11_α
.Lx781_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n721_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n722_op11_α
n721_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n722_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n723_var_ref_α
n722_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n723_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n724_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n724_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n725_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n726_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n726_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             proc_$numlist_$2F3_dcα
                                                                                        jmp   .Lx791_2
.Lx791_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n727_move_label_α
n726_call_proc_staged_β:
                                                                                        jmp   n701_op11_α
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "$numlist_/3"
#-----------------------------------------------------------------------------------------------------------------------
n727_move_label_α:
                        lea              rax, [rip + n726_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_$numlist_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_β:
                                                                                        jmp   n714_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1224]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_ω:
                        mov              rax, [rbp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_dcα:
                        pop              r11
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1216], r11
                        lea              rax, [rip + .Lx794_2]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rax, [rip + .Lx794_3]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1152
                        mov              edx, 1216
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$numlist_$2F3_α_body
.Lx794_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx794_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_random_seq$2F2_α
proc_random_seq$2F2_α:
                        .global          proc_random_seq$2F2_α
                        .global          proc_random_seq$2F2_β
                        .global          proc_random_seq$2F2_γ
                        .global          proc_random_seq$2F2_ω
                        sub              rsp, 992
                        mov              [rsp + 968], rcx
                        mov              [rsp + 976], rdx
                        mov              [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 960
                        call             rt_jmp_frame_lexprep2@PLT
proc_random_seq$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n795_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx828_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx828_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx828_101
.Lx828_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx828_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_random_seq$2F2_ω
                                                                                        jmp   n796_var_ref_α
n795_op11_β:
                                                                                        jmp   proc_random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n797_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n798_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n798_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx833_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx833_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx833_41
                        cmp              esi, 1
                                                                                        jne   .Lx833_55
                        mov              r8, rax
                                                                                        jmp   .Lx833_40
.Lx833_55:
                        cmp              esi, 2
                                                                                        jne   .Lx833_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx833_41
                        mov              r8, rax
                                                                                        jmp   .Lx833_40
.Lx833_56:
                        cmp              eax, 13
                                                                                        jne   .Lx833_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx833_41
                        cmp              rax, r8
                                                                                        je    .Lx833_41
                        mov              r8, rax
                                                                                        jmp   .Lx833_40
.Lx833_41:
                        lea              r9, [rbp + 848]
.Lx833_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx833_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx833_43
                        cmp              esi, 1
                                                                                        jne   .Lx833_57
                        mov              r9, rax
                                                                                        jmp   .Lx833_42
.Lx833_57:
                        cmp              esi, 2
                                                                                        jne   .Lx833_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx833_43
                        mov              r9, rax
                                                                                        jmp   .Lx833_42
.Lx833_58:
                        cmp              eax, 13
                                                                                        jne   .Lx833_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx833_43
                        cmp              rax, r9
                                                                                        je    .Lx833_43
                        mov              r9, rax
                                                                                        jmp   .Lx833_42
.Lx833_43:
                        cmp              r8, r9
                                                                                        je    .Lx833_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx833_44
                        cmp              eax, 99
                                                                                        je    .Lx833_44
                        cmp              eax, 13
                                                                                        jne   .Lx833_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx833_44
                                                                                        jmp   .Lx833_45
.Lx833_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx833_53
                        cmp              eax, 99
                                                                                        je    .Lx833_53
                        cmp              eax, 13
                                                                                        jne   .Lx833_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx833_53
                                                                                        jmp   .Lx833_46
.Lx833_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx833_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx833_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx833_51
.Lx833_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx833_47
                        cmp              eax, 99
                                                                                        je    .Lx833_47
                        cmp              eax, 13
                                                                                        jne   .Lx833_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx833_47
                                                                                        jmp   .Lx833_48
.Lx833_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx833_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx833_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx833_51
.Lx833_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx833_49
                        cmp              edx, 14
                                                                                        je    .Lx833_53
                                                                                        jmp   .Lx833_52
.Lx833_49:
                        cmp              edx, 14
                                                                                        je    .Lx833_52
                        cmp              ecx, 7
                                                                                        je    .Lx833_53
                        cmp              edx, 7
                                                                                        je    .Lx833_53
                        cmp              ecx, 6
                                                                                        jne   .Lx833_50
                        cmp              edx, 6
                                                                                        jne   .Lx833_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx833_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx833_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx833_51
                                                                                        jmp   .Lx833_52
.Lx833_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx833_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx833_53
.Lx833_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx833_54
.Lx833_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx833_54
.Lx833_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx833_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n800_op11_α
                                                                                        jmp   n799_var_ref_α
n798_op11_β:
                                                                                        jmp   n800_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n801_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n800_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_random_seq$2F2_ω
                                                                                        jmp   n802_var_ref_α
n800_op11_β:
                                                                                        jmp   proc_random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n803_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n804_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n805_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n806_lit_integer_α
.Lx843_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n805_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx844_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_61
                        cmp              esi, 1
                                                                                        jne   .Lx844_62
                        mov              r8, rax
                                                                                        jmp   .Lx844_60
.Lx844_62:
                        cmp              esi, 2
                                                                                        jne   .Lx844_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_61
                        mov              r8, rax
                                                                                        jmp   .Lx844_60
.Lx844_63:
                        cmp              eax, 13
                                                                                        jne   .Lx844_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_61
                        cmp              rax, r8
                                                                                        je    .Lx844_61
                        mov              r8, rax
                                                                                        jmp   .Lx844_60
.Lx844_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_80
                        cmp              eax, 99
                                                                                        je    .Lx844_80
                        cmp              eax, 13
                                                                                        jne   .Lx844_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx844_80
                                                                                        jmp   .Lx844_74
.Lx844_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx844_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx844_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx844_73
                        lea              r9, [rbp + 752]
.Lx844_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_65
                        cmp              esi, 1
                                                                                        jne   .Lx844_66
                        mov              r9, rax
                                                                                        jmp   .Lx844_64
.Lx844_66:
                        cmp              esi, 2
                                                                                        jne   .Lx844_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_65
                        mov              r9, rax
                                                                                        jmp   .Lx844_64
.Lx844_67:
                        cmp              eax, 13
                                                                                        jne   .Lx844_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_65
                        cmp              rax, r9
                                                                                        je    .Lx844_65
                        mov              r9, rax
                                                                                        jmp   .Lx844_64
.Lx844_65:
                        lea              rcx, [rbp + 768]
.Lx844_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx844_69
                        cmp              esi, 1
                                                                                        jne   .Lx844_70
                        mov              rcx, rax
                                                                                        jmp   .Lx844_68
.Lx844_70:
                        cmp              esi, 2
                                                                                        jne   .Lx844_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_69
                        mov              rcx, rax
                                                                                        jmp   .Lx844_68
.Lx844_71:
                        cmp              eax, 13
                                                                                        jne   .Lx844_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx844_69
                        cmp              rax, rcx
                                                                                        je    .Lx844_69
                        mov              rcx, rax
                                                                                        jmp   .Lx844_68
.Lx844_69:
                        cmp              r9, rcx
                                                                                        je    .Lx844_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_75
                        cmp              eax, 99
                                                                                        je    .Lx844_75
                        cmp              eax, 13
                                                                                        jne   .Lx844_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx844_75
                                                                                        jmp   .Lx844_72
.Lx844_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_76
                        cmp              eax, 99
                                                                                        je    .Lx844_76
                        cmp              eax, 13
                                                                                        jne   .Lx844_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx844_76
                                                                                        jmp   .Lx844_72
.Lx844_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx844_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx844_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx844_77
.Lx844_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx844_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx844_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx844_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx844_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx844_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 752]
.Lx844_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_82
                        cmp              esi, 1
                                                                                        jne   .Lx844_83
                        mov              r9, rax
                                                                                        jmp   .Lx844_81
.Lx844_83:
                        cmp              esi, 2
                                                                                        jne   .Lx844_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_82
                        mov              r9, rax
                                                                                        jmp   .Lx844_81
.Lx844_84:
                        cmp              eax, 13
                                                                                        jne   .Lx844_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_82
                        cmp              rax, r9
                                                                                        je    .Lx844_82
                        mov              r9, rax
                                                                                        jmp   .Lx844_81
.Lx844_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_85
                        cmp              eax, 99
                                                                                        je    .Lx844_85
                        cmp              eax, 13
                                                                                        jne   .Lx844_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx844_85
                                                                                        jmp   .Lx844_86
.Lx844_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx844_87
.Lx844_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx844_87:
                        lea              rcx, [rbp + 768]
.Lx844_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx844_89
                        cmp              esi, 1
                                                                                        jne   .Lx844_90
                        mov              rcx, rax
                                                                                        jmp   .Lx844_88
.Lx844_90:
                        cmp              esi, 2
                                                                                        jne   .Lx844_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_89
                        mov              rcx, rax
                                                                                        jmp   .Lx844_88
.Lx844_91:
                        cmp              eax, 13
                                                                                        jne   .Lx844_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx844_89
                        cmp              rax, rcx
                                                                                        je    .Lx844_89
                        mov              rcx, rax
                                                                                        jmp   .Lx844_88
.Lx844_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_92
                        cmp              eax, 99
                                                                                        je    .Lx844_92
                        cmp              eax, 13
                                                                                        jne   .Lx844_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx844_92
                                                                                        jmp   .Lx844_93
.Lx844_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx844_94
.Lx844_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx844_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx844_77
.Lx844_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx844_77
.Lx844_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx844_77:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n800_op11_α
                                                                                        jmp   n807_var_ref_α
n805_op11_β:
                                                                                        jmp   n800_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n808_op11_α
.Lx845_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n807_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n809_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n808_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx848_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx848_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx848_111
                        cmp              esi, 1
                                                                                        jne   .Lx848_112
                        mov              r8, rax
                                                                                        jmp   .Lx848_110
.Lx848_112:
                        cmp              esi, 2
                                                                                        jne   .Lx848_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx848_111
                        mov              r8, rax
                                                                                        jmp   .Lx848_110
.Lx848_113:
                        cmp              eax, 13
                                                                                        jne   .Lx848_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx848_111
                        cmp              rax, r8
                                                                                        je    .Lx848_111
                        mov              r8, rax
                                                                                        jmp   .Lx848_110
.Lx848_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx848_114
                        cmp              eax, 99
                                                                                        je    .Lx848_114
                        cmp              eax, 13
                                                                                        jne   .Lx848_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx848_114
                                                                                        jmp   .Lx848_118
.Lx848_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx848_115
                        cmp              eax, 6
                                                                                        jne   .Lx848_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx848_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx848_115
                                                                                        jmp   .Lx848_114
.Lx848_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx848_117
.Lx848_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx848_117
.Lx848_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx848_117:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n811_op11_α
                                                                                        jmp   n810_var_ref_α
n808_op11_β:
                                                                                        jmp   n811_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n809_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n812_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n810_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n813_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n811_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_random_seq$2F2_ω
                                                                                        jmp   proc_random_seq$2F2_ω
n811_op11_β:
                                                                                        jmp   proc_random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n812_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn855:              .string          "$succ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn855]
                        lea              rsi, [rbp + 640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n800_op11_α
                                                                                        jmp   n814_op19_α
n812_op11_β:
                                                                                        jmp   n800_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n813_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n815_op11_α
.Lx856_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n814_op19_α:
                                                                                        jmp   n816_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n815_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n811_op11_α
                                                                                        jmp   n817_var_ref_α
n815_op11_β:
                                                                                        jmp   n811_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n816_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n819_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n820_op11_α
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "random_float"
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n821_op11_α
.Lx864_0:
                        .quad            .Lx864_0_s
.Lx864_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n820_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n811_op11_α
                                                                                        jmp   n822_var_ref_α
n820_op11_β:
                                                                                        jmp   n811_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n821_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx866_2]
                                                                                        jmp   .Lx866_3
.Lx866_2:
                        .quad            .Lx866_2_s
.Lx866_2_s:
                        .string          "[]"
.Lx866_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n811_op11_α
                                                                                        jmp   n823_move_label_α
n821_op11_β:
                                                                                        jmp   n811_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n824_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n823_move_label_α:
                        lea              rax, [rip + n811_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_random_seq$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n824_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n826_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n825_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n825_disjunction_β:
                                                                                        jmp   proc_random_seq$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n826_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 528]
                        call             proc_random_seq$2F2_dcα
                                                                                        jmp   .Lx876_2
.Lx876_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n811_op11_α
                                                                                        jmp   n827_move_label_α
n826_call_proc_staged_β:
                                                                                        jmp   n811_op11_α
.Lx876_0:
                        .quad            .Lx876_0_s
.Lx876_0_s:
                        .string          "random_seq/2"
#-----------------------------------------------------------------------------------------------------------------------
n827_move_label_α:
                        lea              rax, [rip + n826_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_random_seq$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_random_seq$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_random_seq$2F2_β:
                                                                                        jmp   n825_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_random_seq$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 968]
                        lea              rsp, [rbp + 992]
                        mov              rbp, [rbp + 984]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_random_seq$2F2_ω:
                        mov              rax, [rbp + 976]
                        lea              rsp, [rbp + 992]
                        mov              rbp, [rbp + 984]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_random_seq$2F2_dcα:
                        pop              r11
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 960], r11
                        lea              rax, [rip + .Lx879_2]
                        mov              qword ptr [rbp + 968], rax
                        lea              rax, [rip + .Lx879_3]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 896
                        mov              edx, 960
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_random_seq$2F2_α_body
.Lx879_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -992
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx879_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -992
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n883_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n880_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx885_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx885_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx885_101
.Lx885_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx885_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n881_lit_string_α
n880_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n881_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n882_call_proc_staged_α
.Lx886_0:
                        .quad            .Lx886_0_s
.Lx886_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n882_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx888_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx888_21
.Lx888_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx888_21:
                        mov              rdi, qword ptr [rip + .Lx888_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx888_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx888_3]
                        lea              rdx, [rip + .Lx888_4]
                                                                                        jmp   rax
.Lx888_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx888_2
.Lx888_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx888_2
.Lx888_1:
                        call             rt_faildescr@PLT
.Lx888_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n884_op11_α
                                                                                        jmp   n883_suspend_α
n882_call_proc_staged_β:
                                                                                        jmp   n884_op11_α
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n883_suspend_α:
                        lea              rax, [rip + n883_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n883_suspend_β:
                                                                                        jmp   n882_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n884_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   proc_pj_dir_5$2F0_ω
n884_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n898_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n892_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx899_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx899_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx899_101
.Lx899_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx899_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n893_lit_string_α
n892_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n894_lit_string_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n895_op11_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n895_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n897_op11_α
                                                                                        jmp   n896_call_proc_staged_α
n895_op11_β:
                                                                                        jmp   n897_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n896_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx904_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx904_21
.Lx904_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx904_21:
                        mov              rdi, qword ptr [rip + .Lx904_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx904_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx904_3]
                        lea              rdx, [rip + .Lx904_4]
                                                                                        jmp   rax
.Lx904_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx904_2
.Lx904_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx904_2
.Lx904_1:
                        call             rt_faildescr@PLT
.Lx904_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n897_op11_α
                                                                                        jmp   n898_suspend_α
n896_call_proc_staged_β:
                                                                                        jmp   n897_op11_α
.Lx904_0:
                        .quad            .Lx904_0_s
.Lx904_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n897_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n897_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n898_suspend_α:
                        lea              rax, [rip + n898_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n898_suspend_β:
                                                                                        jmp   n896_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n927_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n908_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx928_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx928_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx928_101
.Lx928_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx928_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n909_lit_string_α
n908_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n909_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n910_lit_string_α
.Lx929_0:
                        .quad            .Lx929_0_s
.Lx929_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n911_lit_string_α
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n912_lit_string_α
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n913_lit_string_α
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "dialect"
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n914_op11_α
.Lx933_0:
                        .quad            .Lx933_0_s
.Lx933_0_s:
                        .string          "sicstus4"
#-----------------------------------------------------------------------------------------------------------------------
n914_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n915_lit_string_α
n914_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n915_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n916_op11_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          "lists"
#-----------------------------------------------------------------------------------------------------------------------
n916_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n917_op11_α
n916_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n917_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n919_op11_α
                                                                                        jmp   n918_lit_string_α
n917_op11_β:
                                                                                        jmp   n919_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n920_lit_string_α
.Lx938_0:
                        .quad            .Lx938_0_s
.Lx938_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n919_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n919_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n921_lit_string_α
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n922_lit_integer_α
.Lx941_0:
                        .quad            .Lx941_0_s
.Lx941_0_s:
                        .string          "subseq"
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx942_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n923_op11_α
.Lx942_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n923_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n924_lit_string_α
n923_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n925_op11_α
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n925_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n919_op11_α
                                                                                        jmp   n926_call_proc_staged_α
n925_op11_β:
                                                                                        jmp   n919_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n926_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx947_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx947_21
.Lx947_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx947_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx947_22
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx947_23
.Lx947_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx947_23:
                        mov              rdi, qword ptr [rip + .Lx947_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx947_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx947_3]
                        lea              rdx, [rip + .Lx947_4]
                                                                                        jmp   rax
.Lx947_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx947_2
.Lx947_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx947_2
.Lx947_1:
                        call             rt_faildescr@PLT
.Lx947_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n919_op11_α
                                                                                        jmp   n927_suspend_α
n926_call_proc_staged_β:
                                                                                        jmp   n919_op11_α
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n927_suspend_α:
                        lea              rax, [rip + n927_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n927_suspend_β:
                                                                                        jmp   n926_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_numlist$2F3_α
proc_numlist$2F3_α:
                        .global          proc_numlist$2F3_α
                        .global          proc_numlist$2F3_β
                        .global          proc_numlist$2F3_γ
                        .global          proc_numlist$2F3_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_numlist$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n950_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx967_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx967_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx967_101
.Lx967_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx967_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_numlist$2F3_ω
                                                                                        jmp   n951_var_ref_α
n950_op11_β:
                                                                                        jmp   proc_numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n951_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n952_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n952_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n953_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n953_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        lea              r8, [rbp + 464]
.Lx972_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx972_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx972_41
                        cmp              esi, 1
                                                                                        jne   .Lx972_55
                        mov              r8, rax
                                                                                        jmp   .Lx972_40
.Lx972_55:
                        cmp              esi, 2
                                                                                        jne   .Lx972_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx972_41
                        mov              r8, rax
                                                                                        jmp   .Lx972_40
.Lx972_56:
                        cmp              eax, 13
                                                                                        jne   .Lx972_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx972_41
                        cmp              rax, r8
                                                                                        je    .Lx972_41
                        mov              r8, rax
                                                                                        jmp   .Lx972_40
.Lx972_41:
                        lea              r9, [rbp + 480]
.Lx972_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx972_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx972_43
                        cmp              esi, 1
                                                                                        jne   .Lx972_57
                        mov              r9, rax
                                                                                        jmp   .Lx972_42
.Lx972_57:
                        cmp              esi, 2
                                                                                        jne   .Lx972_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx972_43
                        mov              r9, rax
                                                                                        jmp   .Lx972_42
.Lx972_58:
                        cmp              eax, 13
                                                                                        jne   .Lx972_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx972_43
                        cmp              rax, r9
                                                                                        je    .Lx972_43
                        mov              r9, rax
                                                                                        jmp   .Lx972_42
.Lx972_43:
                        cmp              r8, r9
                                                                                        je    .Lx972_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx972_44
                        cmp              eax, 99
                                                                                        je    .Lx972_44
                        cmp              eax, 13
                                                                                        jne   .Lx972_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx972_44
                                                                                        jmp   .Lx972_45
.Lx972_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx972_53
                        cmp              eax, 99
                                                                                        je    .Lx972_53
                        cmp              eax, 13
                                                                                        jne   .Lx972_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx972_53
                                                                                        jmp   .Lx972_46
.Lx972_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx972_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx972_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx972_51
.Lx972_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx972_47
                        cmp              eax, 99
                                                                                        je    .Lx972_47
                        cmp              eax, 13
                                                                                        jne   .Lx972_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx972_47
                                                                                        jmp   .Lx972_48
.Lx972_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx972_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx972_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx972_51
.Lx972_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx972_49
                        cmp              edx, 14
                                                                                        je    .Lx972_53
                                                                                        jmp   .Lx972_52
.Lx972_49:
                        cmp              edx, 14
                                                                                        je    .Lx972_52
                        cmp              ecx, 7
                                                                                        je    .Lx972_53
                        cmp              edx, 7
                                                                                        je    .Lx972_53
                        cmp              ecx, 6
                                                                                        jne   .Lx972_50
                        cmp              edx, 6
                                                                                        jne   .Lx972_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx972_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx972_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx972_51
                                                                                        jmp   .Lx972_52
.Lx972_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx972_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx972_53
.Lx972_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx972_54
.Lx972_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx972_54
.Lx972_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx972_54:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n955_op11_α
                                                                                        jmp   n954_var_ref_α
n953_op11_β:
                                                                                        jmp   n955_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n954_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n956_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n955_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_numlist$2F3_ω
                                                                                        jmp   proc_numlist$2F3_ω
n955_op11_β:
                                                                                        jmp   proc_numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n956_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n957_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n957_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx978_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx978_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx978_41
                        cmp              esi, 1
                                                                                        jne   .Lx978_55
                        mov              r8, rax
                                                                                        jmp   .Lx978_40
.Lx978_55:
                        cmp              esi, 2
                                                                                        jne   .Lx978_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx978_41
                        mov              r8, rax
                                                                                        jmp   .Lx978_40
.Lx978_56:
                        cmp              eax, 13
                                                                                        jne   .Lx978_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx978_41
                        cmp              rax, r8
                                                                                        je    .Lx978_41
                        mov              r8, rax
                                                                                        jmp   .Lx978_40
.Lx978_41:
                        lea              r9, [rbp + 400]
.Lx978_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx978_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx978_43
                        cmp              esi, 1
                                                                                        jne   .Lx978_57
                        mov              r9, rax
                                                                                        jmp   .Lx978_42
.Lx978_57:
                        cmp              esi, 2
                                                                                        jne   .Lx978_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx978_43
                        mov              r9, rax
                                                                                        jmp   .Lx978_42
.Lx978_58:
                        cmp              eax, 13
                                                                                        jne   .Lx978_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx978_43
                        cmp              rax, r9
                                                                                        je    .Lx978_43
                        mov              r9, rax
                                                                                        jmp   .Lx978_42
.Lx978_43:
                        cmp              r8, r9
                                                                                        je    .Lx978_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx978_44
                        cmp              eax, 99
                                                                                        je    .Lx978_44
                        cmp              eax, 13
                                                                                        jne   .Lx978_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx978_44
                                                                                        jmp   .Lx978_45
.Lx978_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx978_53
                        cmp              eax, 99
                                                                                        je    .Lx978_53
                        cmp              eax, 13
                                                                                        jne   .Lx978_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx978_53
                                                                                        jmp   .Lx978_46
.Lx978_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx978_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx978_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx978_51
.Lx978_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx978_47
                        cmp              eax, 99
                                                                                        je    .Lx978_47
                        cmp              eax, 13
                                                                                        jne   .Lx978_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx978_47
                                                                                        jmp   .Lx978_48
.Lx978_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx978_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx978_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx978_51
.Lx978_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx978_49
                        cmp              edx, 14
                                                                                        je    .Lx978_53
                                                                                        jmp   .Lx978_52
.Lx978_49:
                        cmp              edx, 14
                                                                                        je    .Lx978_52
                        cmp              ecx, 7
                                                                                        je    .Lx978_53
                        cmp              edx, 7
                                                                                        je    .Lx978_53
                        cmp              ecx, 6
                                                                                        jne   .Lx978_50
                        cmp              edx, 6
                                                                                        jne   .Lx978_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx978_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx978_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx978_51
                                                                                        jmp   .Lx978_52
.Lx978_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx978_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx978_53
.Lx978_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx978_54
.Lx978_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx978_54
.Lx978_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx978_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n955_op11_α
                                                                                        jmp   n958_var_ref_α
n957_op11_β:
                                                                                        jmp   n955_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n958_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n959_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n959_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n960_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n960_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx983_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx983_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx983_41
                        cmp              esi, 1
                                                                                        jne   .Lx983_55
                        mov              r8, rax
                                                                                        jmp   .Lx983_40
.Lx983_55:
                        cmp              esi, 2
                                                                                        jne   .Lx983_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx983_41
                        mov              r8, rax
                                                                                        jmp   .Lx983_40
.Lx983_56:
                        cmp              eax, 13
                                                                                        jne   .Lx983_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx983_41
                        cmp              rax, r8
                                                                                        je    .Lx983_41
                        mov              r8, rax
                                                                                        jmp   .Lx983_40
.Lx983_41:
                        lea              r9, [rbp + 320]
.Lx983_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx983_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx983_43
                        cmp              esi, 1
                                                                                        jne   .Lx983_57
                        mov              r9, rax
                                                                                        jmp   .Lx983_42
.Lx983_57:
                        cmp              esi, 2
                                                                                        jne   .Lx983_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx983_43
                        mov              r9, rax
                                                                                        jmp   .Lx983_42
.Lx983_58:
                        cmp              eax, 13
                                                                                        jne   .Lx983_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx983_43
                        cmp              rax, r9
                                                                                        je    .Lx983_43
                        mov              r9, rax
                                                                                        jmp   .Lx983_42
.Lx983_43:
                        cmp              r8, r9
                                                                                        je    .Lx983_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx983_44
                        cmp              eax, 99
                                                                                        je    .Lx983_44
                        cmp              eax, 13
                                                                                        jne   .Lx983_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx983_44
                                                                                        jmp   .Lx983_45
.Lx983_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx983_53
                        cmp              eax, 99
                                                                                        je    .Lx983_53
                        cmp              eax, 13
                                                                                        jne   .Lx983_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx983_53
                                                                                        jmp   .Lx983_46
.Lx983_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx983_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx983_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx983_51
.Lx983_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx983_47
                        cmp              eax, 99
                                                                                        je    .Lx983_47
                        cmp              eax, 13
                                                                                        jne   .Lx983_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx983_47
                                                                                        jmp   .Lx983_48
.Lx983_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx983_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx983_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx983_51
.Lx983_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx983_49
                        cmp              edx, 14
                                                                                        je    .Lx983_53
                                                                                        jmp   .Lx983_52
.Lx983_49:
                        cmp              edx, 14
                                                                                        je    .Lx983_52
                        cmp              ecx, 7
                                                                                        je    .Lx983_53
                        cmp              edx, 7
                                                                                        je    .Lx983_53
                        cmp              ecx, 6
                                                                                        jne   .Lx983_50
                        cmp              edx, 6
                                                                                        jne   .Lx983_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx983_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx983_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx983_51
                                                                                        jmp   .Lx983_52
.Lx983_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx983_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx983_53
.Lx983_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx983_54
.Lx983_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx983_54
.Lx983_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx983_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n955_op11_α
                                                                                        jmp   n961_var_ref_α
n960_op11_β:
                                                                                        jmp   n955_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n962_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n962_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n963_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n963_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n964_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n964_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             proc_$numlist_$2F3_dcα
                                                                                        jmp   .Lx991_2
.Lx991_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n955_op11_α
                                                                                        jmp   n965_move_label_α
n964_call_proc_staged_β:
                                                                                        jmp   n955_op11_α
.Lx991_0:
                        .quad            .Lx991_0_s
.Lx991_0_s:
                        .string          "$numlist_/3"
#-----------------------------------------------------------------------------------------------------------------------
n965_move_label_α:
                        lea              rax, [rip + n964_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_numlist$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n966_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n966_disjunction_β:
                                                                                        jmp   proc_numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_β:
                                                                                        jmp   n966_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 584]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_dcα:
                        pop              r11
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 576], r11
                        lea              rax, [rip + .Lx996_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx996_3]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 528
                        mov              edx, 576
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_numlist$2F3_α_body
.Lx996_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx996_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3840
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tr/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_tr$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1072
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "test_random/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_test_random$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_6/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_6$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "$numlist_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_$numlist_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_$numlist_$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "random_seq/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_random_seq$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 960
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_random_seq$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "numlist/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_numlist$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_numlist$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n997_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n998_call_proc_staged_α
.Lx999_0:
                        .quad            .Lx999_0_s
.Lx999_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n998_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1001_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1001_21
.Lx1001_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx1001_21:
                        mov              rdi, qword ptr [rip + .Lx1001_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1001_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1001_3]
                        lea              rdx, [rip + .Lx1001_4]
                                                                                        jmp   rax
.Lx1001_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1001_2
.Lx1001_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1001_2
.Lx1001_1:
                        call             rt_faildescr@PLT
.Lx1001_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n998_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 72
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 72
                        ret
                        .section         .note.GNU-stack,"",@progbits
