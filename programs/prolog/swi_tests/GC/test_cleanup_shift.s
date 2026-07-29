                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 3392
                        mov              [rsp + 3368], rcx
                        mov              [rsp + 3376], rdx
                        mov              [rsp + 3384], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3344
                        mov              edx, 3360
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx121_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx121_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx121_101
.Lx121_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx121_101:
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
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n3_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "gtrue"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3280]
                        mov              rsi, qword ptr [rip + .Lx125_2]
                                                                                        jmp   .Lx125_3
.Lx125_2:
                        .quad            .Lx125_2_s
.Lx125_2_s:
                        .string          "gtrue"
.Lx125_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3088]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n8_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3200]
                        mov              rsi, qword ptr [rip + .Lx132_2]
                                                                                        jmp   .Lx132_3
.Lx132_2:
                        .quad            .Lx132_2_s
.Lx132_2_s:
                        .string          "true"
.Lx132_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_lit_string_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n11_op11_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "ltrue"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n12_call_proc_staged_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              rsi, qword ptr [rip + .Lx135_2]
                                                                                        jmp   .Lx135_3
.Lx135_2:
                        .quad            .Lx135_2_s
.Lx135_2_s:
                        .string          "ltrue"
.Lx135_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α:
                        mov              qword ptr [rbp + 3136], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx137_20
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx137_21
.Lx137_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        call             rt_arg_stage@PLT
.Lx137_21:
                        mov              edi, 15
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx137_1
                        lea              rcx, [rip + .Lx137_3]
                        lea              rdx, [rip + .Lx137_4]
                                                                                        jmp   rax
.Lx137_3:
                        mov              qword ptr [rbp + 3144], rsp
                        mov              rax, qword ptr [rbp + 3136]
                        test             rax, rax
                                                                                        jne   .Lx137_5
                        mov              qword ptr [rbp + 3136], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx137_2
.Lx137_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx137_2
.Lx137_4:
                        mov              rax, qword ptr [rbp + 3136]
                        test             rax, rax
                                                                                        jne   .Lx137_6
                        mov              qword ptr [rbp + 3136], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx137_2
.Lx137_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx137_2
.Lx137_1:
                        call             rt_faildescr@PLT
.Lx137_2:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n15_suspend_α
n12_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3144]
                                                                                        jmp   qword ptr [rsp]
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "t_true/1"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n15_suspend_β:
                                                                                        jmp   n12_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n18_op11_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              rsi, qword ptr [rip + .Lx146_2]
                                                                                        jmp   .Lx146_3
.Lx146_2:
                        .quad            .Lx146_2_s
.Lx146_2_s:
                        .string          "true"
.Lx146_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n20_lit_string_α
n18_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n21_op11_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "ttrue"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n22_call_proc_staged_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              rsi, qword ptr [rip + .Lx149_2]
                                                                                        jmp   .Lx149_3
.Lx149_2:
                        .quad            .Lx149_2_s
.Lx149_2_s:
                        .string          "ttrue"
.Lx149_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_var_ref_α
n21_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        mov              qword ptr [rbp + 2864], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx151_20
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx151_21
.Lx151_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        call             rt_arg_stage@PLT
.Lx151_21:
                        mov              edi, 15
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx151_1
                        lea              rcx, [rip + .Lx151_3]
                        lea              rdx, [rip + .Lx151_4]
                                                                                        jmp   rax
.Lx151_3:
                        mov              qword ptr [rbp + 2872], rsp
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx151_5
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx151_2
.Lx151_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx151_2
.Lx151_4:
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx151_6
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx151_2
.Lx151_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx151_2
.Lx151_1:
                        call             rt_faildescr@PLT
.Lx151_2:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n25_suspend_α
n22_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2872]
                                                                                        jmp   qword ptr [rsp]
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "t_true/1"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n27_var_ref_α
n24_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_suspend_α:
                        lea              rax, [rip + n25_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n25_suspend_β:
                                                                                        jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n28_op11_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              rsi, qword ptr [rip + .Lx160_2]
                                                                                        jmp   .Lx160_3
.Lx160_2:
                        .quad            .Lx160_2_s
.Lx160_2_s:
                        .string          "true"
.Lx160_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n30_lit_string_α
n28_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n31_op11_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "gfalse"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n32_call_proc_staged_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              rsi, qword ptr [rip + .Lx163_2]
                                                                                        jmp   .Lx163_3
.Lx163_2:
                        .quad            .Lx163_2_s
.Lx163_2_s:
                        .string          "gfalse"
.Lx163_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n34_op11_α
                                                                                        jmp   n33_var_ref_α
n31_op11_β:
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_proc_staged_α:
                        mov              qword ptr [rbp + 2592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx165_20
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx165_21
.Lx165_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        call             rt_arg_stage@PLT
.Lx165_21:
                        mov              edi, 15
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx165_1
                        lea              rcx, [rip + .Lx165_3]
                        lea              rdx, [rip + .Lx165_4]
                                                                                        jmp   rax
.Lx165_3:
                        mov              qword ptr [rbp + 2600], rsp
                        mov              rax, qword ptr [rbp + 2592]
                        test             rax, rax
                                                                                        jne   .Lx165_5
                        mov              qword ptr [rbp + 2592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx165_2
.Lx165_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx165_2
.Lx165_4:
                        mov              rax, qword ptr [rbp + 2592]
                        test             rax, rax
                                                                                        jne   .Lx165_6
                        mov              qword ptr [rbp + 2592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx165_2
.Lx165_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx165_2
.Lx165_1:
                        call             rt_faildescr@PLT
.Lx165_2:
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n35_suspend_α
n32_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2600]
                                                                                        jmp   qword ptr [rsp]
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "t_true/1"
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n37_var_ref_α
n34_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_suspend_α:
                        lea              rax, [rip + n35_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n35_suspend_β:
                                                                                        jmp   n32_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n38_op11_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              rsi, qword ptr [rip + .Lx174_2]
                                                                                        jmp   .Lx174_3
.Lx174_2:
                        .quad            .Lx174_2_s
.Lx174_2_s:
                        .string          "fail"
.Lx174_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n34_op11_α
                                                                                        jmp   n40_lit_string_α
n38_op11_β:
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n41_op11_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "lfalse"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n42_call_proc_staged_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              rsi, qword ptr [rip + .Lx177_2]
                                                                                        jmp   .Lx177_3
.Lx177_2:
                        .quad            .Lx177_2_s
.Lx177_2_s:
                        .string          "lfalse"
.Lx177_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n43_var_ref_α
n41_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α:
                        mov              qword ptr [rbp + 2320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx179_20
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx179_21
.Lx179_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        call             rt_arg_stage@PLT
.Lx179_21:
                        mov              edi, 16
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx179_1
                        lea              rcx, [rip + .Lx179_3]
                        lea              rdx, [rip + .Lx179_4]
                                                                                        jmp   rax
.Lx179_3:
                        mov              qword ptr [rbp + 2328], rsp
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx179_5
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_4:
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx179_6
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_1:
                        call             rt_faildescr@PLT
.Lx179_2:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n34_op11_α
                                                                                        jmp   n45_suspend_α
n42_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2328]
                                                                                        jmp   qword ptr [rsp]
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "t_false/1"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n47_var_ref_α
n44_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_suspend_α:
                        lea              rax, [rip + n45_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n45_suspend_β:
                                                                                        jmp   n42_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_op11_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2112]
                        mov              rsi, qword ptr [rip + .Lx188_2]
                                                                                        jmp   .Lx188_3
.Lx188_2:
                        .quad            .Lx188_2_s
.Lx188_2_s:
                        .string          "fail"
.Lx188_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n50_lit_string_α
n48_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n51_op11_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "tfalse"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n52_call_proc_staged_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              rsi, qword ptr [rip + .Lx191_2]
                                                                                        jmp   .Lx191_3
.Lx191_2:
                        .quad            .Lx191_2_s
.Lx191_2_s:
                        .string          "tfalse"
.Lx191_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n53_var_ref_α
n51_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        mov              qword ptr [rbp + 2048], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx193_20
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx193_21
.Lx193_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx193_21:
                        mov              edi, 16
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx193_1
                        lea              rcx, [rip + .Lx193_3]
                        lea              rdx, [rip + .Lx193_4]
                                                                                        jmp   rax
.Lx193_3:
                        mov              qword ptr [rbp + 2056], rsp
                        mov              rax, qword ptr [rbp + 2048]
                        test             rax, rax
                                                                                        jne   .Lx193_5
                        mov              qword ptr [rbp + 2048], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx193_2
.Lx193_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx193_2
.Lx193_4:
                        mov              rax, qword ptr [rbp + 2048]
                        test             rax, rax
                                                                                        jne   .Lx193_6
                        mov              qword ptr [rbp + 2048], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx193_2
.Lx193_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx193_2
.Lx193_1:
                        call             rt_faildescr@PLT
.Lx193_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n55_suspend_α
n52_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2056]
                                                                                        jmp   qword ptr [rsp]
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "t_false/1"
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n57_var_ref_α
n54_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_suspend_α:
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n55_suspend_β:
                                                                                        jmp   n52_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n58_op11_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              rsi, qword ptr [rip + .Lx202_2]
                                                                                        jmp   .Lx202_3
.Lx202_2:
                        .quad            .Lx202_2_s
.Lx202_2_s:
                        .string          "fail"
.Lx202_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n60_lit_string_α
n58_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n61_op11_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "gcut"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n62_call_proc_staged_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              rsi, qword ptr [rip + .Lx205_2]
                                                                                        jmp   .Lx205_3
.Lx205_2:
                        .quad            .Lx205_2_s
.Lx205_2_s:
                        .string          "gcut"
.Lx205_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n63_var_ref_α
n61_op11_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_proc_staged_α:
                        mov              qword ptr [rbp + 1776], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              edi, 16
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx207_1
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4]
                                                                                        jmp   rax
.Lx207_3:
                        mov              qword ptr [rbp + 1784], rsp
                        mov              rax, qword ptr [rbp + 1776]
                        test             rax, rax
                                                                                        jne   .Lx207_5
                        mov              qword ptr [rbp + 1776], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_4:
                        mov              rax, qword ptr [rbp + 1776]
                        test             rax, rax
                                                                                        jne   .Lx207_6
                        mov              qword ptr [rbp + 1776], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_1:
                        call             rt_faildescr@PLT
.Lx207_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n65_suspend_α
n62_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1784]
                                                                                        jmp   qword ptr [rsp]
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "t_false/1"
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n67_var_ref_α
n64_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_suspend_α:
                        lea              rax, [rip + n65_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n65_suspend_β:
                                                                                        jmp   n62_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n68_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              rsi, qword ptr [rip + .Lx216_2]
                                                                                        jmp   .Lx216_3
.Lx216_2:
                        .quad            .Lx216_2_s
.Lx216_2_s:
                        .string          "true"
.Lx216_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n70_lit_string_α
n68_op11_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n71_op11_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "lcut"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n72_call_proc_staged_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              rsi, qword ptr [rip + .Lx219_2]
                                                                                        jmp   .Lx219_3
.Lx219_2:
                        .quad            .Lx219_2_s
.Lx219_2_s:
                        .string          "lcut"
.Lx219_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n73_var_ref_α
n71_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_proc_staged_α:
                        mov              qword ptr [rbp + 1504], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_20
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx221_21
.Lx221_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        call             rt_arg_stage@PLT
.Lx221_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx221_1
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4]
                                                                                        jmp   rax
.Lx221_3:
                        mov              qword ptr [rbp + 1512], rsp
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx221_5
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_4:
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx221_6
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_1:
                        call             rt_faildescr@PLT
.Lx221_2:
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n75_suspend_α
n72_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1512]
                                                                                        jmp   qword ptr [rsp]
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "t_cut/1"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n77_var_ref_α
n74_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_suspend_α:
                        lea              rax, [rip + n75_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n75_suspend_β:
                                                                                        jmp   n72_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n78_op11_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              rsi, qword ptr [rip + .Lx230_2]
                                                                                        jmp   .Lx230_3
.Lx230_2:
                        .quad            .Lx230_2_s
.Lx230_2_s:
                        .string          "true"
.Lx230_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n80_lit_string_α
n78_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n81_op11_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "tcut"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n82_call_proc_staged_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              rsi, qword ptr [rip + .Lx233_2]
                                                                                        jmp   .Lx233_3
.Lx233_2:
                        .quad            .Lx233_2_s
.Lx233_2_s:
                        .string          "tcut"
.Lx233_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n83_var_ref_α
n81_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx235_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx235_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n85_suspend_α
n82_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "t_cut/1"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n87_var_ref_α
n84_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_suspend_α:
                        lea              rax, [rip + n85_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n85_suspend_β:
                                                                                        jmp   n82_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n88_op11_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lx244_2]
                                                                                        jmp   .Lx244_3
.Lx244_2:
                        .quad            .Lx244_2_s
.Lx244_2_s:
                        .string          "true"
.Lx244_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n90_lit_string_α
n88_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n91_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "gexcept"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n92_call_proc_staged_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              rsi, qword ptr [rip + .Lx247_2]
                                                                                        jmp   .Lx247_3
.Lx247_2:
                        .quad            .Lx247_2_s
.Lx247_2_s:
                        .string          "gexcept"
.Lx247_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n94_op11_α
                                                                                        jmp   n93_var_ref_α
n91_op11_β:
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        mov              qword ptr [rbp + 960], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_20
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx249_21
.Lx249_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx249_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx249_1
                        lea              rcx, [rip + .Lx249_3]
                        lea              rdx, [rip + .Lx249_4]
                                                                                        jmp   rax
.Lx249_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx249_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_4:
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx249_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_1:
                        call             rt_faildescr@PLT
.Lx249_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n95_suspend_α
n92_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "t_cut/1"
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n97_var_ref_α
n94_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_suspend_α:
                        lea              rax, [rip + n95_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n95_suspend_β:
                                                                                        jmp   n92_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n98_op11_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              rsi, qword ptr [rip + .Lx258_2]
                                                                                        jmp   .Lx258_3
.Lx258_2:
                        .quad            .Lx258_2_s
.Lx258_2_s:
                        .string          "true"
.Lx258_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n94_op11_α
                                                                                        jmp   n100_lit_string_α
n98_op11_β:
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n101_op11_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "lexcept"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n102_call_proc_staged_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx261_2]
                                                                                        jmp   .Lx261_3
.Lx261_2:
                        .quad            .Lx261_2_s
.Lx261_2_s:
                        .string          "lexcept"
.Lx261_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n103_var_ref_α
n101_op11_β:
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_proc_staged_α:
                        mov              qword ptr [rbp + 688], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx263_20
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx263_21
.Lx263_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx263_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx263_1
                        lea              rcx, [rip + .Lx263_3]
                        lea              rdx, [rip + .Lx263_4]
                                                                                        jmp   rax
.Lx263_3:
                        mov              qword ptr [rbp + 696], rsp
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax
                                                                                        jne   .Lx263_5
                        mov              qword ptr [rbp + 688], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_4:
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax
                                                                                        jne   .Lx263_6
                        mov              qword ptr [rbp + 688], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_1:
                        call             rt_faildescr@PLT
.Lx263_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n94_op11_α
                                                                                        jmp   n105_suspend_α
n102_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 696]
                                                                                        jmp   qword ptr [rsp]
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "t_except/1"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n107_var_ref_α
n104_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_suspend_α:
                        lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n105_suspend_β:
                                                                                        jmp   n102_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n108_op11_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              rsi, qword ptr [rip + .Lx272_2]
                                                                                        jmp   .Lx272_3
.Lx272_2:
                        .quad            .Lx272_2_s
.Lx272_2_s:
                        .string          "true"
.Lx272_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n110_lit_string_α
n108_op11_β:
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n111_op11_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "texcept"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n112_call_proc_staged_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              rsi, qword ptr [rip + .Lx275_2]
                                                                                        jmp   .Lx275_3
.Lx275_2:
                        .quad            .Lx275_2_s
.Lx275_2_s:
                        .string          "texcept"
.Lx275_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n114_op11_α
                                                                                        jmp   n113_var_ref_α
n111_op11_β:
                                                                                        jmp   n114_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx277_21
.Lx277_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx277_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4]
                                                                                        jmp   rax
.Lx277_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx277_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx277_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_1:
                        call             rt_faildescr@PLT
.Lx277_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n115_suspend_α
n112_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "t_except/1"
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
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
n114_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_suspend_α:
                        lea              rax, [rip + n115_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n115_suspend_β:
                                                                                        jmp   n112_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n117_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              rsi, qword ptr [rip + .Lx284_2]
                                                                                        jmp   .Lx284_3
.Lx284_2:
                        .quad            .Lx284_2_s
.Lx284_2_s:
                        .string          "true"
.Lx284_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n114_op11_α
                                                                                        jmp   n118_lit_string_α
n117_op11_β:
                                                                                        jmp   n114_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n119_call_proc_staged_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx287_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx287_21
.Lx287_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx287_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx287_1
                        lea              rcx, [rip + .Lx287_3]
                        lea              rdx, [rip + .Lx287_4]
                                                                                        jmp   rax
.Lx287_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx287_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx287_2
.Lx287_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx287_2
.Lx287_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx287_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx287_2
.Lx287_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx287_2
.Lx287_1:
                        call             rt_faildescr@PLT
.Lx287_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n114_op11_α
                                                                                        jmp   n120_suspend_α
n119_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "t_except/1"
#-----------------------------------------------------------------------------------------------------------------------
n120_suspend_α:
                        lea              rax, [rip + n120_suspend_β]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n120_suspend_β:
                                                                                        jmp   n119_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3344]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 3368]
                        mov              rbp, [rbp + 3384]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 3376]
                        lea              rsp, [rbp + 3392]
                        mov              rbp, [rbp + 3384]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 5536
                        mov              [rsp + 5512], rcx
                        mov              [rsp + 5520], rdx
                        mov              [rsp + 5528], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 5488
                        mov              edx, 5504
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n326_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx483_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx483_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx483_101
.Lx483_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx483_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n291_var_ref_α
n290_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                                                                                        jmp   n292_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 5472], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   n293_op11_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n293_op11_α:
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5432], rax
                        lea              rdi, [rbp + 5424]
                        mov              rsi, qword ptr [rip + .Lx487_2]
                                                                                        jmp   .Lx487_3
.Lx487_2:
                        .quad            .Lx487_2_s
.Lx487_2_s:
                        .string          "cleanup_shift"
.Lx487_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              eax, 99
                                                                                        je    n295_op11_α
                                                                                        jmp   n294_var_ref_α
n293_op11_β:
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                                                                                        jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 5064], rax
                        lea              rdi, [rbp + 5056]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n297_var_ref_α
n295_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        mov              qword ptr [rbp + 5392], 1
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 5400], rax
                                                                                        jmp   n298_op11_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "gtrue"
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n298_op11_α:
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5352], rax
                        lea              rdi, [rbp + 5344]
                        mov              rsi, qword ptr [rip + .Lx494_2]
                                                                                        jmp   .Lx494_3
.Lx494_2:
                        .quad            .Lx494_2_s
.Lx494_2_s:
                        .string          "gtrue"
.Lx494_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx
                        cmp              eax, 99
                                                                                        je    n295_op11_α
                                                                                        jmp   n300_var_ref_α
n298_op11_β:
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rbp + 5024], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n301_op11_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                                                                                        jmp   n302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4984], rax
                        lea              rdi, [rbp + 4976]
                        mov              rsi, qword ptr [rip + .Lx498_2]
                                                                                        jmp   .Lx498_3
.Lx498_2:
                        .quad            .Lx498_2_s
.Lx498_2_s:
                        .string          "cleanup_shift"
.Lx498_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              eax, 99
                                                                                        je    n304_op11_α
                                                                                        jmp   n303_var_ref_α
n301_op11_β:
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rbp + 5312], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n305_op11_α
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n306_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n307_var_ref_α
n304_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_op11_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5272], rax
                        lea              rdi, [rbp + 5264]
                        mov              rsi, qword ptr [rip + .Lx503_2]
                                                                                        jmp   .Lx503_3
.Lx503_2:
                        .quad            .Lx503_2_s
.Lx503_2_s:
                        .string          "true"
.Lx503_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              eax, 99
                                                                                        je    n295_op11_α
                                                                                        jmp   n308_var_ref_α
n305_op11_β:
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 4944], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n309_op11_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "ltrue"
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4904], rax
                        lea              rdi, [rbp + 4896]
                        mov              rsi, qword ptr [rip + .Lx509_2]
                                                                                        jmp   .Lx509_3
.Lx509_2:
                        .quad            .Lx509_2_s
.Lx509_2_s:
                        .string          "ltrue"
.Lx509_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                        cmp              eax, 99
                                                                                        je    n304_op11_α
                                                                                        jmp   n312_var_ref_α
n309_op11_β:
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 4576], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n313_op11_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 5232], 1
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n314_lit_string_α
.Lx511_0:
                        .quad            .Lx511_0_s
.Lx511_0_s:
                        .string          "t_true"
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4528]
                        mov              rsi, qword ptr [rip + .Lx514_2]
                                                                                        jmp   .Lx514_3
.Lx514_2:
                        .quad            .Lx514_2_s
.Lx514_2_s:
                        .string          "cleanup_shift"
.Lx514_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 99
                                                                                        je    n317_op11_α
                                                                                        jmp   n316_var_ref_α
n313_op11_β:
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        mov              qword ptr [rbp + 5152], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n318_op11_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        mov              qword ptr [rbp + 4864], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n319_op11_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 4168], rax
                        lea              rdi, [rbp + 4160]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n321_var_ref_α
n317_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_op11_α:
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5192], rax
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5208], rax
                        lea              rdi, [rbp + 5184]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                        cmp              eax, 99
                                                                                        je    n295_op11_α
                                                                                        jmp   n322_op11_α
n318_op11_β:
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n319_op11_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4824], rax
                        lea              rdi, [rbp + 4816]
                        mov              rsi, qword ptr [rip + .Lx521_2]
                                                                                        jmp   .Lx521_3
.Lx521_2:
                        .quad            .Lx521_2_s
.Lx521_2_s:
                        .string          "true"
.Lx521_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              eax, 99
                                                                                        je    n304_op11_α
                                                                                        jmp   n323_var_ref_α
n319_op11_β:
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 4496], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n324_op11_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "ttrue"
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5112], rax
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5128], rax
                        lea              rdi, [rbp + 5104]
                        lea              r8, [rbp + 5104]
.Lx525_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx525_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_41
                        cmp              esi, 1
                                                                                        jne   .Lx525_55
                        mov              r8, rax
                                                                                        jmp   .Lx525_40
.Lx525_55:
                        cmp              esi, 2
                                                                                        jne   .Lx525_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx525_41
                        mov              r8, rax
                                                                                        jmp   .Lx525_40
.Lx525_56:
                        cmp              eax, 13
                                                                                        jne   .Lx525_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_41
                        cmp              rax, r8
                                                                                        je    .Lx525_41
                        mov              r8, rax
                                                                                        jmp   .Lx525_40
.Lx525_41:
                        lea              r9, [rbp + 5120]
.Lx525_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx525_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_43
                        cmp              esi, 1
                                                                                        jne   .Lx525_57
                        mov              r9, rax
                                                                                        jmp   .Lx525_42
.Lx525_57:
                        cmp              esi, 2
                                                                                        jne   .Lx525_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx525_43
                        mov              r9, rax
                                                                                        jmp   .Lx525_42
.Lx525_58:
                        cmp              eax, 13
                                                                                        jne   .Lx525_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_43
                        cmp              rax, r9
                                                                                        je    .Lx525_43
                        mov              r9, rax
                                                                                        jmp   .Lx525_42
.Lx525_43:
                        cmp              r8, r9
                                                                                        je    .Lx525_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx525_44
                        cmp              eax, 99
                                                                                        je    .Lx525_44
                        cmp              eax, 13
                                                                                        jne   .Lx525_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx525_44
                                                                                        jmp   .Lx525_45
.Lx525_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx525_53
                        cmp              eax, 99
                                                                                        je    .Lx525_53
                        cmp              eax, 13
                                                                                        jne   .Lx525_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx525_53
                                                                                        jmp   .Lx525_46
.Lx525_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx525_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx525_53
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
                                                                                        jmp   .Lx525_51
.Lx525_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx525_47
                        cmp              eax, 99
                                                                                        je    .Lx525_47
                        cmp              eax, 13
                                                                                        jne   .Lx525_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx525_47
                                                                                        jmp   .Lx525_48
.Lx525_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx525_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx525_53
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
                                                                                        jmp   .Lx525_51
.Lx525_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx525_49
                        cmp              edx, 14
                                                                                        je    .Lx525_53
                                                                                        jmp   .Lx525_52
.Lx525_49:
                        cmp              edx, 14
                                                                                        je    .Lx525_52
                        cmp              ecx, 7
                                                                                        je    .Lx525_53
                        cmp              edx, 7
                                                                                        je    .Lx525_53
                        cmp              ecx, 6
                                                                                        jne   .Lx525_50
                        cmp              edx, 6
                                                                                        jne   .Lx525_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx525_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx525_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx525_51
                                                                                        jmp   .Lx525_52
.Lx525_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx525_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx525_53
.Lx525_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx525_54
.Lx525_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx525_54
.Lx525_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx525_54:
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        cmp              eax, 99
                                                                                        je    n295_op11_α
                                                                                        jmp   n326_suspend_α
n322_op11_β:
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                                                                                        jmp   n327_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4456], rax
                        lea              rdi, [rbp + 4448]
                        mov              rsi, qword ptr [rip + .Lx528_2]
                                                                                        jmp   .Lx528_3
.Lx528_2:
                        .quad            .Lx528_2_s
.Lx528_2_s:
                        .string          "ttrue"
.Lx528_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 99
                                                                                        je    n317_op11_α
                                                                                        jmp   n328_var_ref_α
n324_op11_β:
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n329_op11_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n326_suspend_α:
                        lea              rax, [rip + n326_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n326_suspend_β:
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 4784], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n330_lit_string_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "t_true"
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   n331_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_op11_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4088], rax
                        lea              rdi, [rbp + 4080]
                        mov              rsi, qword ptr [rip + .Lx535_2]
                                                                                        jmp   .Lx535_3
.Lx535_2:
                        .quad            .Lx535_2_s
.Lx535_2_s:
                        .string          "cleanup_shift"
.Lx535_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n332_var_ref_α
n329_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:
                        mov              qword ptr [rbp + 4704], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n334_op11_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:
                        mov              qword ptr [rbp + 4416], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   n335_op11_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n333_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n337_var_ref_α
n333_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_op11_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4744], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4760], rax
                        lea              rdi, [rbp + 4736]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                        cmp              eax, 99
                                                                                        je    n304_op11_α
                                                                                        jmp   n338_op11_α
n334_op11_β:
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n335_op11_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4376], rax
                        lea              rdi, [rbp + 4368]
                        mov              rsi, qword ptr [rip + .Lx542_2]
                                                                                        jmp   .Lx542_3
.Lx542_2:
                        .quad            .Lx542_2_s
.Lx542_2_s:
                        .string          "true"
.Lx542_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n317_op11_α
                                                                                        jmp   n339_var_ref_α
n335_op11_β:
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n340_op11_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "gfalse"
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n338_op11_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4656]
                        lea              r8, [rbp + 4656]
.Lx546_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              esi, 1
                                                                                        jne   .Lx546_55
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_55:
                        cmp              esi, 2
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_56:
                        cmp              eax, 13
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              rax, r8
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_41:
                        lea              r9, [rbp + 4672]
.Lx546_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              esi, 1
                                                                                        jne   .Lx546_57
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_57:
                        cmp              esi, 2
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_58:
                        cmp              eax, 13
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              rax, r9
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_43:
                        cmp              r8, r9
                                                                                        je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_44
                        cmp              eax, 99
                                                                                        je    .Lx546_44
                        cmp              eax, 13
                                                                                        jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx546_44
                                                                                        jmp   .Lx546_45
.Lx546_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_53
                        cmp              eax, 99
                                                                                        je    .Lx546_53
                        cmp              eax, 13
                                                                                        jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_46
.Lx546_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
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
                                                                                        jmp   .Lx546_51
.Lx546_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_47
                        cmp              eax, 99
                                                                                        je    .Lx546_47
                        cmp              eax, 13
                                                                                        jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_47
                                                                                        jmp   .Lx546_48
.Lx546_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
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
                                                                                        jmp   .Lx546_51
.Lx546_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx546_49
                        cmp              edx, 14
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_52
.Lx546_49:
                        cmp              edx, 14
                                                                                        je    .Lx546_52
                        cmp              ecx, 7
                                                                                        je    .Lx546_53
                        cmp              edx, 7
                                                                                        je    .Lx546_53
                        cmp              ecx, 6
                                                                                        jne   .Lx546_50
                        cmp              edx, 6
                                                                                        jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx546_51
                                                                                        jmp   .Lx546_52
.Lx546_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
.Lx546_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx546_54
.Lx546_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx546_54
.Lx546_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx546_54:
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 99
                                                                                        je    n304_op11_α
                                                                                        jmp   n342_suspend_α
n338_op11_β:
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 4000]
                        mov              rsi, qword ptr [rip + .Lx549_2]
                                                                                        jmp   .Lx549_3
.Lx549_2:
                        .quad            .Lx549_2_s
.Lx549_2_s:
                        .string          "gfalse"
.Lx549_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n344_var_ref_α
n340_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 3680], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n345_op11_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n342_suspend_α:
                        lea              rax, [rip + n342_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n342_suspend_β:
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 4336], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n346_lit_string_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "t_true"
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n347_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              rsi, qword ptr [rip + .Lx556_2]
                                                                                        jmp   .Lx556_3
.Lx556_2:
                        .quad            .Lx556_2_s
.Lx556_2_s:
                        .string          "cleanup_shift"
.Lx556_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n349_op11_α
                                                                                        jmp   n348_var_ref_α
n345_op11_β:
                                                                                        jmp   n349_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 4256], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n350_op11_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n351_op11_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n349_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3264]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n353_var_ref_α
n349_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4288]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 99
                                                                                        je    n317_op11_α
                                                                                        jmp   n354_op11_α
n350_op11_β:
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3928], rax
                        lea              rdi, [rbp + 3920]
                        mov              rsi, qword ptr [rip + .Lx563_2]
                                                                                        jmp   .Lx563_3
.Lx563_2:
                        .quad            .Lx563_2_s
.Lx563_2_s:
                        .string          "fail"
.Lx563_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n355_var_ref_α
n351_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n356_op11_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "lfalse"
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   n357_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4216], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4232], rax
                        lea              rdi, [rbp + 4208]
                        lea              r8, [rbp + 4208]
.Lx567_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx567_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx567_41
                        cmp              esi, 1
                                                                                        jne   .Lx567_55
                        mov              r8, rax
                                                                                        jmp   .Lx567_40
.Lx567_55:
                        cmp              esi, 2
                                                                                        jne   .Lx567_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx567_41
                        mov              r8, rax
                                                                                        jmp   .Lx567_40
.Lx567_56:
                        cmp              eax, 13
                                                                                        jne   .Lx567_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx567_41
                        cmp              rax, r8
                                                                                        je    .Lx567_41
                        mov              r8, rax
                                                                                        jmp   .Lx567_40
.Lx567_41:
                        lea              r9, [rbp + 4224]
.Lx567_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx567_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx567_43
                        cmp              esi, 1
                                                                                        jne   .Lx567_57
                        mov              r9, rax
                                                                                        jmp   .Lx567_42
.Lx567_57:
                        cmp              esi, 2
                                                                                        jne   .Lx567_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx567_43
                        mov              r9, rax
                                                                                        jmp   .Lx567_42
.Lx567_58:
                        cmp              eax, 13
                                                                                        jne   .Lx567_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx567_43
                        cmp              rax, r9
                                                                                        je    .Lx567_43
                        mov              r9, rax
                                                                                        jmp   .Lx567_42
.Lx567_43:
                        cmp              r8, r9
                                                                                        je    .Lx567_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx567_44
                        cmp              eax, 99
                                                                                        je    .Lx567_44
                        cmp              eax, 13
                                                                                        jne   .Lx567_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx567_44
                                                                                        jmp   .Lx567_45
.Lx567_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx567_53
                        cmp              eax, 99
                                                                                        je    .Lx567_53
                        cmp              eax, 13
                                                                                        jne   .Lx567_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx567_53
                                                                                        jmp   .Lx567_46
.Lx567_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx567_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx567_53
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
                                                                                        jmp   .Lx567_51
.Lx567_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx567_47
                        cmp              eax, 99
                                                                                        je    .Lx567_47
                        cmp              eax, 13
                                                                                        jne   .Lx567_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx567_47
                                                                                        jmp   .Lx567_48
.Lx567_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx567_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx567_53
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
                                                                                        jmp   .Lx567_51
.Lx567_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx567_49
                        cmp              edx, 14
                                                                                        je    .Lx567_53
                                                                                        jmp   .Lx567_52
.Lx567_49:
                        cmp              edx, 14
                                                                                        je    .Lx567_52
                        cmp              ecx, 7
                                                                                        je    .Lx567_53
                        cmp              edx, 7
                                                                                        je    .Lx567_53
                        cmp              ecx, 6
                                                                                        jne   .Lx567_50
                        cmp              edx, 6
                                                                                        jne   .Lx567_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx567_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx567_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx567_51
                                                                                        jmp   .Lx567_52
.Lx567_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx567_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx567_53
.Lx567_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx567_54
.Lx567_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx567_54
.Lx567_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx567_54:
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n317_op11_α
                                                                                        jmp   n358_suspend_α
n354_op11_β:
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n359_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              rsi, qword ptr [rip + .Lx570_2]
                                                                                        jmp   .Lx570_3
.Lx570_2:
                        .quad            .Lx570_2_s
.Lx570_2_s:
                        .string          "lfalse"
.Lx570_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n349_op11_α
                                                                                        jmp   n360_var_ref_α
n356_op11_β:
                                                                                        jmp   n349_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n361_op11_α
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n358_suspend_α:
                        lea              rax, [rip + n358_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n358_suspend_β:
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 3888], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n362_lit_string_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "t_false"
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                        lea              rdi, [rbp + 3184]
                        mov              rsi, qword ptr [rip + .Lx577_2]
                                                                                        jmp   .Lx577_3
.Lx577_2:
                        .quad            .Lx577_2_s
.Lx577_2_s:
                        .string          "cleanup_shift"
.Lx577_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n364_var_ref_α
n361_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n366_op11_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n367_op11_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n369_var_ref_α
n365_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3864], rax
                        lea              rdi, [rbp + 3840]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n370_op11_α
n366_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3472]
                        mov              rsi, qword ptr [rip + .Lx584_2]
                                                                                        jmp   .Lx584_3
.Lx584_2:
                        .quad            .Lx584_2_s
.Lx584_2_s:
                        .string          "fail"
.Lx584_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n349_op11_α
                                                                                        jmp   n371_var_ref_α
n367_op11_β:
                                                                                        jmp   n349_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n372_op11_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "tfalse"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n373_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_op11_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3784], rax
                        lea              rdi, [rbp + 3760]
                        lea              r8, [rbp + 3760]
.Lx588_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx588_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        cmp              esi, 1
                                                                                        jne   .Lx588_55
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_55:
                        cmp              esi, 2
                                                                                        jne   .Lx588_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_56:
                        cmp              eax, 13
                                                                                        jne   .Lx588_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        cmp              rax, r8
                                                                                        je    .Lx588_41
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_41:
                        lea              r9, [rbp + 3776]
.Lx588_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx588_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        cmp              esi, 1
                                                                                        jne   .Lx588_57
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_57:
                        cmp              esi, 2
                                                                                        jne   .Lx588_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_58:
                        cmp              eax, 13
                                                                                        jne   .Lx588_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        cmp              rax, r9
                                                                                        je    .Lx588_43
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_43:
                        cmp              r8, r9
                                                                                        je    .Lx588_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_44
                        cmp              eax, 99
                                                                                        je    .Lx588_44
                        cmp              eax, 13
                                                                                        jne   .Lx588_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx588_44
                                                                                        jmp   .Lx588_45
.Lx588_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_53
                        cmp              eax, 99
                                                                                        je    .Lx588_53
                        cmp              eax, 13
                                                                                        jne   .Lx588_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx588_53
                                                                                        jmp   .Lx588_46
.Lx588_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx588_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx588_53
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
                                                                                        jmp   .Lx588_51
.Lx588_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_47
                        cmp              eax, 99
                                                                                        je    .Lx588_47
                        cmp              eax, 13
                                                                                        jne   .Lx588_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx588_47
                                                                                        jmp   .Lx588_48
.Lx588_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx588_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx588_53
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
                                                                                        jmp   .Lx588_51
.Lx588_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx588_49
                        cmp              edx, 14
                                                                                        je    .Lx588_53
                                                                                        jmp   .Lx588_52
.Lx588_49:
                        cmp              edx, 14
                                                                                        je    .Lx588_52
                        cmp              ecx, 7
                                                                                        je    .Lx588_53
                        cmp              edx, 7
                                                                                        je    .Lx588_53
                        cmp              ecx, 6
                                                                                        jne   .Lx588_50
                        cmp              edx, 6
                                                                                        jne   .Lx588_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx588_51
                                                                                        jmp   .Lx588_52
.Lx588_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx588_53
.Lx588_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx588_54
.Lx588_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx588_54
.Lx588_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx588_54:
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n374_suspend_α
n370_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3104]
                        mov              rsi, qword ptr [rip + .Lx591_2]
                                                                                        jmp   .Lx591_3
.Lx591_2:
                        .quad            .Lx591_2_s
.Lx591_2_s:
                        .string          "tfalse"
.Lx591_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n376_var_ref_α
n372_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n377_op11_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n374_suspend_α:
                        lea              rax, [rip + n374_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n374_suspend_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n378_lit_string_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "t_false"
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              rsi, qword ptr [rip + .Lx598_2]
                                                                                        jmp   .Lx598_3
.Lx598_2:
                        .quad            .Lx598_2_s
.Lx598_2_s:
                        .string          "cleanup_shift"
.Lx598_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n381_op11_α
                                                                                        jmp   n380_var_ref_α
n377_op11_β:
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n382_op11_α
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 3072], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n383_op11_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n385_var_ref_α
n381_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3392]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    n349_op11_α
                                                                                        jmp   n386_op11_α
n382_op11_β:
                                                                                        jmp   n349_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3024]
                        mov              rsi, qword ptr [rip + .Lx605_2]
                                                                                        jmp   .Lx605_3
.Lx605_2:
                        .quad            .Lx605_2_s
.Lx605_2_s:
                        .string          "fail"
.Lx605_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n387_var_ref_α
n383_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n388_op11_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "gcut"
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_op11_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3312]
                        lea              r8, [rbp + 3312]
.Lx609_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        cmp              esi, 1
                                                                                        jne   .Lx609_55
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_55:
                        cmp              esi, 2
                                                                                        jne   .Lx609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_56:
                        cmp              eax, 13
                                                                                        jne   .Lx609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        cmp              rax, r8
                                                                                        je    .Lx609_41
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_41:
                        lea              r9, [rbp + 3328]
.Lx609_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        cmp              esi, 1
                                                                                        jne   .Lx609_57
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_57:
                        cmp              esi, 2
                                                                                        jne   .Lx609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_58:
                        cmp              eax, 13
                                                                                        jne   .Lx609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        cmp              rax, r9
                                                                                        je    .Lx609_43
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_43:
                        cmp              r8, r9
                                                                                        je    .Lx609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_44
                        cmp              eax, 99
                                                                                        je    .Lx609_44
                        cmp              eax, 13
                                                                                        jne   .Lx609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx609_44
                                                                                        jmp   .Lx609_45
.Lx609_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_53
                        cmp              eax, 99
                                                                                        je    .Lx609_53
                        cmp              eax, 13
                                                                                        jne   .Lx609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx609_53
                                                                                        jmp   .Lx609_46
.Lx609_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx609_53
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
                                                                                        jmp   .Lx609_51
.Lx609_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_47
                        cmp              eax, 99
                                                                                        je    .Lx609_47
                        cmp              eax, 13
                                                                                        jne   .Lx609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx609_47
                                                                                        jmp   .Lx609_48
.Lx609_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx609_53
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
                                                                                        jmp   .Lx609_51
.Lx609_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx609_49
                        cmp              edx, 14
                                                                                        je    .Lx609_53
                                                                                        jmp   .Lx609_52
.Lx609_49:
                        cmp              edx, 14
                                                                                        je    .Lx609_52
                        cmp              ecx, 7
                                                                                        je    .Lx609_53
                        cmp              edx, 7
                                                                                        je    .Lx609_53
                        cmp              ecx, 6
                                                                                        jne   .Lx609_50
                        cmp              edx, 6
                                                                                        jne   .Lx609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx609_51
                                                                                        jmp   .Lx609_52
.Lx609_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx609_53
.Lx609_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx609_54
.Lx609_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx609_54
.Lx609_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx609_54:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n349_op11_α
                                                                                        jmp   n390_suspend_α
n386_op11_β:
                                                                                        jmp   n349_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n388_op11_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              rsi, qword ptr [rip + .Lx612_2]
                                                                                        jmp   .Lx612_3
.Lx612_2:
                        .quad            .Lx612_2_s
.Lx612_2_s:
                        .string          "gcut"
.Lx612_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n381_op11_α
                                                                                        jmp   n392_var_ref_α
n388_op11_β:
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n393_op11_α
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n390_suspend_α:
                        lea              rax, [rip + n390_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n390_suspend_β:
                                                                                        jmp   n349_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n394_lit_string_α
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "t_false"
#-----------------------------------------------------------------------------------------------------------------------
n392_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n395_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n393_op11_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              rsi, qword ptr [rip + .Lx619_2]
                                                                                        jmp   .Lx619_3
.Lx619_2:
                        .quad            .Lx619_2_s
.Lx619_2_s:
                        .string          "cleanup_shift"
.Lx619_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n397_op11_α
                                                                                        jmp   n396_var_ref_α
n393_op11_β:
                                                                                        jmp   n397_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n398_op11_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n399_op11_α
.Lx621_0:
                        .quad            .Lx621_0_s
.Lx621_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n400_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n397_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n401_var_ref_α
n397_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n398_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2944]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n402_op11_α
n398_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n399_op11_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              rsi, qword ptr [rip + .Lx626_2]
                                                                                        jmp   .Lx626_3
.Lx626_2:
                        .quad            .Lx626_2_s
.Lx626_2_s:
                        .string          "true"
.Lx626_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n381_op11_α
                                                                                        jmp   n403_var_ref_α
n399_op11_β:
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n404_op11_α
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "lcut"
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n405_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n402_op11_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2864]
                        lea              r8, [rbp + 2864]
.Lx630_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx630_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_41
                        cmp              esi, 1
                                                                                        jne   .Lx630_55
                        mov              r8, rax
                                                                                        jmp   .Lx630_40
.Lx630_55:
                        cmp              esi, 2
                                                                                        jne   .Lx630_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx630_41
                        mov              r8, rax
                                                                                        jmp   .Lx630_40
.Lx630_56:
                        cmp              eax, 13
                                                                                        jne   .Lx630_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_41
                        cmp              rax, r8
                                                                                        je    .Lx630_41
                        mov              r8, rax
                                                                                        jmp   .Lx630_40
.Lx630_41:
                        lea              r9, [rbp + 2880]
.Lx630_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx630_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_43
                        cmp              esi, 1
                                                                                        jne   .Lx630_57
                        mov              r9, rax
                                                                                        jmp   .Lx630_42
.Lx630_57:
                        cmp              esi, 2
                                                                                        jne   .Lx630_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx630_43
                        mov              r9, rax
                                                                                        jmp   .Lx630_42
.Lx630_58:
                        cmp              eax, 13
                                                                                        jne   .Lx630_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_43
                        cmp              rax, r9
                                                                                        je    .Lx630_43
                        mov              r9, rax
                                                                                        jmp   .Lx630_42
.Lx630_43:
                        cmp              r8, r9
                                                                                        je    .Lx630_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_44
                        cmp              eax, 99
                                                                                        je    .Lx630_44
                        cmp              eax, 13
                                                                                        jne   .Lx630_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx630_44
                                                                                        jmp   .Lx630_45
.Lx630_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_53
                        cmp              eax, 99
                                                                                        je    .Lx630_53
                        cmp              eax, 13
                                                                                        jne   .Lx630_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx630_53
                                                                                        jmp   .Lx630_46
.Lx630_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx630_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx630_53
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
                                                                                        jmp   .Lx630_51
.Lx630_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_47
                        cmp              eax, 99
                                                                                        je    .Lx630_47
                        cmp              eax, 13
                                                                                        jne   .Lx630_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx630_47
                                                                                        jmp   .Lx630_48
.Lx630_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx630_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx630_53
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
                                                                                        jmp   .Lx630_51
.Lx630_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx630_49
                        cmp              edx, 14
                                                                                        je    .Lx630_53
                                                                                        jmp   .Lx630_52
.Lx630_49:
                        cmp              edx, 14
                                                                                        je    .Lx630_52
                        cmp              ecx, 7
                                                                                        je    .Lx630_53
                        cmp              edx, 7
                                                                                        je    .Lx630_53
                        cmp              ecx, 6
                                                                                        jne   .Lx630_50
                        cmp              edx, 6
                                                                                        jne   .Lx630_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx630_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx630_51
                                                                                        jmp   .Lx630_52
.Lx630_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx630_53
.Lx630_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx630_54
.Lx630_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx630_54
.Lx630_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx630_54:
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n406_suspend_α
n402_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n407_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_op11_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              rsi, qword ptr [rip + .Lx633_2]
                                                                                        jmp   .Lx633_3
.Lx633_2:
                        .quad            .Lx633_2_s
.Lx633_2_s:
                        .string          "lcut"
.Lx633_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n397_op11_α
                                                                                        jmp   n408_var_ref_α
n404_op11_β:
                                                                                        jmp   n397_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx634_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n409_op11_α
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n406_suspend_α:
                        lea              rax, [rip + n406_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n406_suspend_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n410_lit_string_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "t_cut"
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n411_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              rsi, qword ptr [rip + .Lx640_2]
                                                                                        jmp   .Lx640_3
.Lx640_2:
                        .quad            .Lx640_2_s
.Lx640_2_s:
                        .string          "cleanup_shift"
.Lx640_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n413_op11_α
                                                                                        jmp   n412_var_ref_α
n409_op11_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n414_op11_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n415_op11_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n416_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n417_var_ref_α
n413_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n381_op11_α
                                                                                        jmp   n418_op11_α
n414_op11_β:
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n415_op11_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        mov              rsi, qword ptr [rip + .Lx647_2]
                                                                                        jmp   .Lx647_3
.Lx647_2:
                        .quad            .Lx647_2_s
.Lx647_2_s:
                        .string          "true"
.Lx647_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n397_op11_α
                                                                                        jmp   n419_var_ref_α
n415_op11_β:
                                                                                        jmp   n397_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n420_op11_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "tcut"
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n421_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2416]
                        lea              r8, [rbp + 2416]
.Lx651_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx651_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        cmp              esi, 1
                                                                                        jne   .Lx651_55
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_55:
                        cmp              esi, 2
                                                                                        jne   .Lx651_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_56:
                        cmp              eax, 13
                                                                                        jne   .Lx651_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        cmp              rax, r8
                                                                                        je    .Lx651_41
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_41:
                        lea              r9, [rbp + 2432]
.Lx651_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx651_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        cmp              esi, 1
                                                                                        jne   .Lx651_57
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_57:
                        cmp              esi, 2
                                                                                        jne   .Lx651_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_58:
                        cmp              eax, 13
                                                                                        jne   .Lx651_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        cmp              rax, r9
                                                                                        je    .Lx651_43
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_43:
                        cmp              r8, r9
                                                                                        je    .Lx651_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_44
                        cmp              eax, 99
                                                                                        je    .Lx651_44
                        cmp              eax, 13
                                                                                        jne   .Lx651_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx651_44
                                                                                        jmp   .Lx651_45
.Lx651_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_53
                        cmp              eax, 99
                                                                                        je    .Lx651_53
                        cmp              eax, 13
                                                                                        jne   .Lx651_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx651_53
                                                                                        jmp   .Lx651_46
.Lx651_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx651_53
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
                                                                                        jmp   .Lx651_51
.Lx651_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_47
                        cmp              eax, 99
                                                                                        je    .Lx651_47
                        cmp              eax, 13
                                                                                        jne   .Lx651_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx651_47
                                                                                        jmp   .Lx651_48
.Lx651_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx651_53
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
                                                                                        jmp   .Lx651_51
.Lx651_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx651_49
                        cmp              edx, 14
                                                                                        je    .Lx651_53
                                                                                        jmp   .Lx651_52
.Lx651_49:
                        cmp              edx, 14
                                                                                        je    .Lx651_52
                        cmp              ecx, 7
                                                                                        je    .Lx651_53
                        cmp              edx, 7
                                                                                        je    .Lx651_53
                        cmp              ecx, 6
                                                                                        jne   .Lx651_50
                        cmp              edx, 6
                                                                                        jne   .Lx651_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx651_51
                                                                                        jmp   .Lx651_52
.Lx651_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx651_53
.Lx651_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx651_54
.Lx651_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx651_54
.Lx651_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx651_54:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n381_op11_α
                                                                                        jmp   n422_suspend_α
n418_op11_β:
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n423_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              rsi, qword ptr [rip + .Lx654_2]
                                                                                        jmp   .Lx654_3
.Lx654_2:
                        .quad            .Lx654_2_s
.Lx654_2_s:
                        .string          "tcut"
.Lx654_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n413_op11_α
                                                                                        jmp   n424_var_ref_α
n420_op11_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n425_op11_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n422_suspend_α:
                        lea              rax, [rip + n422_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n422_suspend_β:
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n426_lit_string_α
.Lx658_0:
                        .quad            .Lx658_0_s
.Lx658_0_s:
                        .string          "t_cut"
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              rsi, qword ptr [rip + .Lx661_2]
                                                                                        jmp   .Lx661_3
.Lx661_2:
                        .quad            .Lx661_2_s
.Lx661_2_s:
                        .string          "cleanup_shift"
.Lx661_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n429_op11_α
                                                                                        jmp   n428_var_ref_α
n425_op11_β:
                                                                                        jmp   n429_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n430_op11_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n431_op11_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n432_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n433_var_ref_α
n429_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n397_op11_α
                                                                                        jmp   n434_op11_α
n430_op11_β:
                                                                                        jmp   n397_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx668_2]
                                                                                        jmp   .Lx668_3
.Lx668_2:
                        .quad            .Lx668_2_s
.Lx668_2_s:
                        .string          "true"
.Lx668_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n413_op11_α
                                                                                        jmp   n435_var_ref_α
n431_op11_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n436_op11_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "gexcept"
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1968]
                        lea              r8, [rbp + 1968]
.Lx672_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx672_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_41
                        cmp              esi, 1
                                                                                        jne   .Lx672_55
                        mov              r8, rax
                                                                                        jmp   .Lx672_40
.Lx672_55:
                        cmp              esi, 2
                                                                                        jne   .Lx672_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx672_41
                        mov              r8, rax
                                                                                        jmp   .Lx672_40
.Lx672_56:
                        cmp              eax, 13
                                                                                        jne   .Lx672_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_41
                        cmp              rax, r8
                                                                                        je    .Lx672_41
                        mov              r8, rax
                                                                                        jmp   .Lx672_40
.Lx672_41:
                        lea              r9, [rbp + 1984]
.Lx672_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx672_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_43
                        cmp              esi, 1
                                                                                        jne   .Lx672_57
                        mov              r9, rax
                                                                                        jmp   .Lx672_42
.Lx672_57:
                        cmp              esi, 2
                                                                                        jne   .Lx672_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx672_43
                        mov              r9, rax
                                                                                        jmp   .Lx672_42
.Lx672_58:
                        cmp              eax, 13
                                                                                        jne   .Lx672_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_43
                        cmp              rax, r9
                                                                                        je    .Lx672_43
                        mov              r9, rax
                                                                                        jmp   .Lx672_42
.Lx672_43:
                        cmp              r8, r9
                                                                                        je    .Lx672_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx672_44
                        cmp              eax, 99
                                                                                        je    .Lx672_44
                        cmp              eax, 13
                                                                                        jne   .Lx672_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx672_44
                                                                                        jmp   .Lx672_45
.Lx672_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx672_53
                        cmp              eax, 99
                                                                                        je    .Lx672_53
                        cmp              eax, 13
                                                                                        jne   .Lx672_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx672_53
                                                                                        jmp   .Lx672_46
.Lx672_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx672_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx672_53
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
                                                                                        jmp   .Lx672_51
.Lx672_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx672_47
                        cmp              eax, 99
                                                                                        je    .Lx672_47
                        cmp              eax, 13
                                                                                        jne   .Lx672_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx672_47
                                                                                        jmp   .Lx672_48
.Lx672_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx672_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx672_53
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
                                                                                        jmp   .Lx672_51
.Lx672_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx672_49
                        cmp              edx, 14
                                                                                        je    .Lx672_53
                                                                                        jmp   .Lx672_52
.Lx672_49:
                        cmp              edx, 14
                                                                                        je    .Lx672_52
                        cmp              ecx, 7
                                                                                        je    .Lx672_53
                        cmp              edx, 7
                                                                                        je    .Lx672_53
                        cmp              ecx, 6
                                                                                        jne   .Lx672_50
                        cmp              edx, 6
                                                                                        jne   .Lx672_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx672_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx672_51
                                                                                        jmp   .Lx672_52
.Lx672_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx672_53
.Lx672_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx672_54
.Lx672_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx672_54
.Lx672_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx672_54:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n397_op11_α
                                                                                        jmp   n438_suspend_α
n434_op11_β:
                                                                                        jmp   n397_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n439_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              rsi, qword ptr [rip + .Lx675_2]
                                                                                        jmp   .Lx675_3
.Lx675_2:
                        .quad            .Lx675_2_s
.Lx675_2_s:
                        .string          "gexcept"
.Lx675_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n429_op11_α
                                                                                        jmp   n440_var_ref_α
n436_op11_β:
                                                                                        jmp   n429_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n441_op11_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n438_suspend_α:
                        lea              rax, [rip + n438_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n438_suspend_β:
                                                                                        jmp   n397_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n442_lit_string_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "t_cut"
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n443_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              rsi, qword ptr [rip + .Lx682_2]
                                                                                        jmp   .Lx682_3
.Lx682_2:
                        .quad            .Lx682_2_s
.Lx682_2_s:
                        .string          "cleanup_shift"
.Lx682_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n445_op11_α
                                                                                        jmp   n444_var_ref_α
n441_op11_β:
                                                                                        jmp   n445_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n446_op11_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n447_op11_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n448_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n445_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n449_var_ref_α
n445_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n446_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n413_op11_α
                                                                                        jmp   n450_op11_α
n446_op11_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              rsi, qword ptr [rip + .Lx689_2]
                                                                                        jmp   .Lx689_3
.Lx689_2:
                        .quad            .Lx689_2_s
.Lx689_2_s:
                        .string          "true"
.Lx689_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n429_op11_α
                                                                                        jmp   n451_var_ref_α
n447_op11_β:
                                                                                        jmp   n429_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n452_op11_α
.Lx690_0:
                        .quad            .Lx690_0_s
.Lx690_0_s:
                        .string          "lexcept"
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n453_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1520]
                        lea              r8, [rbp + 1520]
.Lx693_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx693_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx693_41
                        cmp              esi, 1
                                                                                        jne   .Lx693_55
                        mov              r8, rax
                                                                                        jmp   .Lx693_40
.Lx693_55:
                        cmp              esi, 2
                                                                                        jne   .Lx693_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx693_41
                        mov              r8, rax
                                                                                        jmp   .Lx693_40
.Lx693_56:
                        cmp              eax, 13
                                                                                        jne   .Lx693_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx693_41
                        cmp              rax, r8
                                                                                        je    .Lx693_41
                        mov              r8, rax
                                                                                        jmp   .Lx693_40
.Lx693_41:
                        lea              r9, [rbp + 1536]
.Lx693_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx693_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx693_43
                        cmp              esi, 1
                                                                                        jne   .Lx693_57
                        mov              r9, rax
                                                                                        jmp   .Lx693_42
.Lx693_57:
                        cmp              esi, 2
                                                                                        jne   .Lx693_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx693_43
                        mov              r9, rax
                                                                                        jmp   .Lx693_42
.Lx693_58:
                        cmp              eax, 13
                                                                                        jne   .Lx693_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx693_43
                        cmp              rax, r9
                                                                                        je    .Lx693_43
                        mov              r9, rax
                                                                                        jmp   .Lx693_42
.Lx693_43:
                        cmp              r8, r9
                                                                                        je    .Lx693_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx693_44
                        cmp              eax, 99
                                                                                        je    .Lx693_44
                        cmp              eax, 13
                                                                                        jne   .Lx693_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx693_44
                                                                                        jmp   .Lx693_45
.Lx693_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx693_53
                        cmp              eax, 99
                                                                                        je    .Lx693_53
                        cmp              eax, 13
                                                                                        jne   .Lx693_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx693_53
                                                                                        jmp   .Lx693_46
.Lx693_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx693_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx693_53
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
                                                                                        jmp   .Lx693_51
.Lx693_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx693_47
                        cmp              eax, 99
                                                                                        je    .Lx693_47
                        cmp              eax, 13
                                                                                        jne   .Lx693_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx693_47
                                                                                        jmp   .Lx693_48
.Lx693_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx693_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx693_53
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
                                                                                        jmp   .Lx693_51
.Lx693_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx693_49
                        cmp              edx, 14
                                                                                        je    .Lx693_53
                                                                                        jmp   .Lx693_52
.Lx693_49:
                        cmp              edx, 14
                                                                                        je    .Lx693_52
                        cmp              ecx, 7
                                                                                        je    .Lx693_53
                        cmp              edx, 7
                                                                                        je    .Lx693_53
                        cmp              ecx, 6
                                                                                        jne   .Lx693_50
                        cmp              edx, 6
                                                                                        jne   .Lx693_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx693_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx693_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx693_51
                                                                                        jmp   .Lx693_52
.Lx693_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx693_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx693_53
.Lx693_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx693_54
.Lx693_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx693_54
.Lx693_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx693_54:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n413_op11_α
                                                                                        jmp   n454_suspend_α
n450_op11_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n455_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n452_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              rsi, qword ptr [rip + .Lx696_2]
                                                                                        jmp   .Lx696_3
.Lx696_2:
                        .quad            .Lx696_2_s
.Lx696_2_s:
                        .string          "lexcept"
.Lx696_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n445_op11_α
                                                                                        jmp   n456_var_ref_α
n452_op11_β:
                                                                                        jmp   n445_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n457_op11_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n454_suspend_α:
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n454_suspend_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n458_lit_string_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "t_except"
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n459_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n457_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              rsi, qword ptr [rip + .Lx703_2]
                                                                                        jmp   .Lx703_3
.Lx703_2:
                        .quad            .Lx703_2_s
.Lx703_2_s:
                        .string          "cleanup_shift"
.Lx703_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n460_var_ref_α
n457_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n462_op11_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "gshift"
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n463_op11_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n464_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n461_op11_α:
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
n461_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n429_op11_α
                                                                                        jmp   n465_op11_α
n462_op11_β:
                                                                                        jmp   n429_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n463_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx710_2]
                                                                                        jmp   .Lx710_3
.Lx710_2:
                        .quad            .Lx710_2_s
.Lx710_2_s:
                        .string          "true"
.Lx710_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n445_op11_α
                                                                                        jmp   n466_var_ref_α
n463_op11_β:
                                                                                        jmp   n445_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n467_op11_α
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "texcept"
#-----------------------------------------------------------------------------------------------------------------------
n465_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx712_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx712_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx712_41
                        cmp              esi, 1
                                                                                        jne   .Lx712_55
                        mov              r8, rax
                                                                                        jmp   .Lx712_40
.Lx712_55:
                        cmp              esi, 2
                                                                                        jne   .Lx712_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx712_41
                        mov              r8, rax
                                                                                        jmp   .Lx712_40
.Lx712_56:
                        cmp              eax, 13
                                                                                        jne   .Lx712_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx712_41
                        cmp              rax, r8
                                                                                        je    .Lx712_41
                        mov              r8, rax
                                                                                        jmp   .Lx712_40
.Lx712_41:
                        lea              r9, [rbp + 1088]
.Lx712_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx712_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx712_43
                        cmp              esi, 1
                                                                                        jne   .Lx712_57
                        mov              r9, rax
                                                                                        jmp   .Lx712_42
.Lx712_57:
                        cmp              esi, 2
                                                                                        jne   .Lx712_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx712_43
                        mov              r9, rax
                                                                                        jmp   .Lx712_42
.Lx712_58:
                        cmp              eax, 13
                                                                                        jne   .Lx712_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx712_43
                        cmp              rax, r9
                                                                                        je    .Lx712_43
                        mov              r9, rax
                                                                                        jmp   .Lx712_42
.Lx712_43:
                        cmp              r8, r9
                                                                                        je    .Lx712_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx712_44
                        cmp              eax, 99
                                                                                        je    .Lx712_44
                        cmp              eax, 13
                                                                                        jne   .Lx712_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx712_44
                                                                                        jmp   .Lx712_45
.Lx712_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx712_53
                        cmp              eax, 99
                                                                                        je    .Lx712_53
                        cmp              eax, 13
                                                                                        jne   .Lx712_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx712_53
                                                                                        jmp   .Lx712_46
.Lx712_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx712_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx712_53
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
                                                                                        jmp   .Lx712_51
.Lx712_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx712_47
                        cmp              eax, 99
                                                                                        je    .Lx712_47
                        cmp              eax, 13
                                                                                        jne   .Lx712_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx712_47
                                                                                        jmp   .Lx712_48
.Lx712_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx712_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx712_53
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
                                                                                        jmp   .Lx712_51
.Lx712_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx712_49
                        cmp              edx, 14
                                                                                        je    .Lx712_53
                                                                                        jmp   .Lx712_52
.Lx712_49:
                        cmp              edx, 14
                                                                                        je    .Lx712_52
                        cmp              ecx, 7
                                                                                        je    .Lx712_53
                        cmp              edx, 7
                                                                                        je    .Lx712_53
                        cmp              ecx, 6
                                                                                        jne   .Lx712_50
                        cmp              edx, 6
                                                                                        jne   .Lx712_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx712_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx712_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx712_51
                                                                                        jmp   .Lx712_52
.Lx712_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx712_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx712_53
.Lx712_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx712_54
.Lx712_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx712_54
.Lx712_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx712_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n429_op11_α
                                                                                        jmp   n468_suspend_α
n465_op11_β:
                                                                                        jmp   n429_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n467_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              rsi, qword ptr [rip + .Lx715_2]
                                                                                        jmp   .Lx715_3
.Lx715_2:
                        .quad            .Lx715_2_s
.Lx715_2_s:
                        .string          "texcept"
.Lx715_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n470_var_ref_α
n467_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n468_suspend_α:
                        lea              rax, [rip + n468_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n468_suspend_β:
                                                                                        jmp   n429_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n471_lit_string_α
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          "t_except"
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n473_op11_α
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "lshift"
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n474_op11_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n473_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n445_op11_α
                                                                                        jmp   n475_op11_α
n473_op11_β:
                                                                                        jmp   n445_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n474_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx724_2]
                                                                                        jmp   .Lx724_3
.Lx724_2:
                        .quad            .Lx724_2_s
.Lx724_2_s:
                        .string          "true"
.Lx724_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n476_var_ref_α
n474_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n475_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx725_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx725_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx725_41
                        cmp              esi, 1
                                                                                        jne   .Lx725_55
                        mov              r8, rax
                                                                                        jmp   .Lx725_40
.Lx725_55:
                        cmp              esi, 2
                                                                                        jne   .Lx725_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx725_41
                        mov              r8, rax
                                                                                        jmp   .Lx725_40
.Lx725_56:
                        cmp              eax, 13
                                                                                        jne   .Lx725_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx725_41
                        cmp              rax, r8
                                                                                        je    .Lx725_41
                        mov              r8, rax
                                                                                        jmp   .Lx725_40
.Lx725_41:
                        lea              r9, [rbp + 640]
.Lx725_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx725_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx725_43
                        cmp              esi, 1
                                                                                        jne   .Lx725_57
                        mov              r9, rax
                                                                                        jmp   .Lx725_42
.Lx725_57:
                        cmp              esi, 2
                                                                                        jne   .Lx725_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx725_43
                        mov              r9, rax
                                                                                        jmp   .Lx725_42
.Lx725_58:
                        cmp              eax, 13
                                                                                        jne   .Lx725_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx725_43
                        cmp              rax, r9
                                                                                        je    .Lx725_43
                        mov              r9, rax
                                                                                        jmp   .Lx725_42
.Lx725_43:
                        cmp              r8, r9
                                                                                        je    .Lx725_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx725_44
                        cmp              eax, 99
                                                                                        je    .Lx725_44
                        cmp              eax, 13
                                                                                        jne   .Lx725_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx725_44
                                                                                        jmp   .Lx725_45
.Lx725_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx725_53
                        cmp              eax, 99
                                                                                        je    .Lx725_53
                        cmp              eax, 13
                                                                                        jne   .Lx725_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx725_53
                                                                                        jmp   .Lx725_46
.Lx725_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx725_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx725_53
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
                                                                                        jmp   .Lx725_51
.Lx725_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx725_47
                        cmp              eax, 99
                                                                                        je    .Lx725_47
                        cmp              eax, 13
                                                                                        jne   .Lx725_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx725_47
                                                                                        jmp   .Lx725_48
.Lx725_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx725_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx725_53
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
                                                                                        jmp   .Lx725_51
.Lx725_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx725_49
                        cmp              edx, 14
                                                                                        je    .Lx725_53
                                                                                        jmp   .Lx725_52
.Lx725_49:
                        cmp              edx, 14
                                                                                        je    .Lx725_52
                        cmp              ecx, 7
                                                                                        je    .Lx725_53
                        cmp              edx, 7
                                                                                        je    .Lx725_53
                        cmp              ecx, 6
                                                                                        jne   .Lx725_50
                        cmp              edx, 6
                                                                                        jne   .Lx725_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx725_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx725_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx725_51
                                                                                        jmp   .Lx725_52
.Lx725_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx725_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx725_53
.Lx725_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx725_54
.Lx725_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx725_54
.Lx725_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx725_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n445_op11_α
                                                                                        jmp   n477_suspend_α
n475_op11_β:
                                                                                        jmp   n445_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n478_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n477_suspend_α:
                        lea              rax, [rip + n477_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n477_suspend_β:
                                                                                        jmp   n445_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n479_lit_string_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "t_except"
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n480_op11_α
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "tshift"
#-----------------------------------------------------------------------------------------------------------------------
n480_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n481_op11_α
n480_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n481_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
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
                        lea              r9, [rbp + 192]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n482_suspend_α
n481_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n482_suspend_α:
                        lea              rax, [rip + n482_suspend_β]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n482_suspend_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 5488]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 5512]
                        mov              rbp, [rbp + 5528]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 5520]
                        lea              rsp, [rbp + 5536]
                        mov              rbp, [rbp + 5528]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tshift$2F0_α
proc_tshift$2F0_α:
                        .global          proc_tshift$2F0_α
                        .global          proc_tshift$2F0_β
                        .global          proc_tshift$2F0_γ
                        .global          proc_tshift$2F0_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_tshift$2F0_α_body:
                        lea              rax, [rip + n739_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n736_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx741_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx741_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx741_101
.Lx741_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx741_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_tshift$2F0_ω
                                                                                        jmp   n737_lit_string_α
n736_op11_β:
                                                                                        jmp   proc_tshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n738_call_proc_staged_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "trail_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n738_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx744_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx744_21
.Lx744_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx744_21:
                        mov              edi, 12
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx744_1
                        lea              rcx, [rip + .Lx744_3]
                        lea              rdx, [rip + .Lx744_4]
                                                                                        jmp   rax
.Lx744_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx744_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx744_2
.Lx744_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx744_2
.Lx744_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx744_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx744_2
.Lx744_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx744_2
.Lx744_1:
                        call             rt_faildescr@PLT
.Lx744_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n740_op11_α
                                                                                        jmp   n739_suspend_α
n738_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "shift_stack/1"
#-----------------------------------------------------------------------------------------------------------------------
n739_suspend_α:
                        lea              rax, [rip + n739_suspend_β]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_tshift$2F0_γ
n739_suspend_β:
                                                                                        jmp   n738_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n740_op11_α:
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
                                                                                        je    proc_tshift$2F0_ω
                                                                                        jmp   proc_tshift$2F0_ω
n740_op11_β:
                                                                                        jmp   proc_tshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tshift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tshift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_tshift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_tshift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 184]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tshift$2F0_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lshift$2F0_α
proc_lshift$2F0_α:
                        .global          proc_lshift$2F0_α
                        .global          proc_lshift$2F0_β
                        .global          proc_lshift$2F0_γ
                        .global          proc_lshift$2F0_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_lshift$2F0_α_body:
                        lea              rax, [rip + n756_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n748_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx757_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx757_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx757_101
.Lx757_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx757_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F0_ω
                                                                                        jmp   n749_lit_string_α
n748_op11_β:
                                                                                        jmp   proc_lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n750_var_ref_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n750_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n751_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx762_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx762_21
.Lx762_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx762_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx762_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx762_23
.Lx762_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx762_23:
                        mov              rdi, qword ptr [rip + .Lx762_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx762_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx762_3]
                        lea              rdx, [rip + .Lx762_4]
                                                                                        jmp   rax
.Lx762_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx762_2
.Lx762_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx762_2
.Lx762_1:
                        call             rt_faildescr@PLT
.Lx762_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n753_op11_α
                                                                                        jmp   n752_var_ref_α
n751_call_proc_staged_β:
                                                                                        jmp   n753_op11_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n752_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n754_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n753_op11_α:
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
                                                                                        je    proc_lshift$2F0_ω
                                                                                        jmp   proc_lshift$2F0_ω
n753_op11_β:
                                                                                        jmp   proc_lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx767_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx767_21
.Lx767_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx767_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx767_1
                        lea              rcx, [rip + .Lx767_3]
                        lea              rdx, [rip + .Lx767_4]
                                                                                        jmp   rax
.Lx767_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx767_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx767_2
.Lx767_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx767_2
.Lx767_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx767_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx767_2
.Lx767_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx767_2
.Lx767_1:
                        call             rt_faildescr@PLT
.Lx767_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n751_call_proc_staged_β
                                                                                        jmp   n755_op19_α
n754_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n755_op19_α:
                                                                                        jmp   n756_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n756_suspend_α:
                        lea              rax, [rip + n756_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F0_γ
n756_suspend_β:
                                                                                        jmp   n754_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_lshift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lshift$2F1_α
proc_lshift$2F1_α:
                        .global          proc_lshift$2F1_α
                        .global          proc_lshift$2F1_β
                        .global          proc_lshift$2F1_γ
                        .global          proc_lshift$2F1_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_lshift$2F1_α_body:
                        lea              rax, [rip + n784_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n771_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx787_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx787_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx787_101
.Lx787_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx787_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   n772_var_ref_α
n771_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n772_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n773_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n773_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n774_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n774_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx792_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx792_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx792_41
                        cmp              esi, 1
                                                                                        jne   .Lx792_55
                        mov              r8, rax
                                                                                        jmp   .Lx792_40
.Lx792_55:
                        cmp              esi, 2
                                                                                        jne   .Lx792_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx792_41
                        mov              r8, rax
                                                                                        jmp   .Lx792_40
.Lx792_56:
                        cmp              eax, 13
                                                                                        jne   .Lx792_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx792_41
                        cmp              rax, r8
                                                                                        je    .Lx792_41
                        mov              r8, rax
                                                                                        jmp   .Lx792_40
.Lx792_41:
                        lea              r9, [rbp + 432]
.Lx792_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx792_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx792_43
                        cmp              esi, 1
                                                                                        jne   .Lx792_57
                        mov              r9, rax
                                                                                        jmp   .Lx792_42
.Lx792_57:
                        cmp              esi, 2
                                                                                        jne   .Lx792_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx792_43
                        mov              r9, rax
                                                                                        jmp   .Lx792_42
.Lx792_58:
                        cmp              eax, 13
                                                                                        jne   .Lx792_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx792_43
                        cmp              rax, r9
                                                                                        je    .Lx792_43
                        mov              r9, rax
                                                                                        jmp   .Lx792_42
.Lx792_43:
                        cmp              r8, r9
                                                                                        je    .Lx792_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx792_44
                        cmp              eax, 99
                                                                                        je    .Lx792_44
                        cmp              eax, 13
                                                                                        jne   .Lx792_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx792_44
                                                                                        jmp   .Lx792_45
.Lx792_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx792_53
                        cmp              eax, 99
                                                                                        je    .Lx792_53
                        cmp              eax, 13
                                                                                        jne   .Lx792_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx792_53
                                                                                        jmp   .Lx792_46
.Lx792_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx792_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx792_53
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
                                                                                        jmp   .Lx792_51
.Lx792_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx792_47
                        cmp              eax, 99
                                                                                        je    .Lx792_47
                        cmp              eax, 13
                                                                                        jne   .Lx792_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx792_47
                                                                                        jmp   .Lx792_48
.Lx792_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx792_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx792_53
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
                                                                                        jmp   .Lx792_51
.Lx792_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx792_49
                        cmp              edx, 14
                                                                                        je    .Lx792_53
                                                                                        jmp   .Lx792_52
.Lx792_49:
                        cmp              edx, 14
                                                                                        je    .Lx792_52
                        cmp              ecx, 7
                                                                                        je    .Lx792_53
                        cmp              edx, 7
                                                                                        je    .Lx792_53
                        cmp              ecx, 6
                                                                                        jne   .Lx792_50
                        cmp              edx, 6
                                                                                        jne   .Lx792_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx792_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx792_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx792_51
                                                                                        jmp   .Lx792_52
.Lx792_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx792_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx792_53
.Lx792_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx792_54
.Lx792_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx792_54
.Lx792_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx792_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n776_op11_α
                                                                                        jmp   n775_lit_string_α
n774_op11_β:
                                                                                        jmp   n776_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n777_var_ref_α
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n776_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   n778_var_ref_α
n776_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n777_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n779_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n780_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n779_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx800_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx800_21
.Lx800_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx800_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx800_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx800_23
.Lx800_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx800_23:
                        mov              rdi, qword ptr [rip + .Lx800_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx800_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx800_3]
                        lea              rdx, [rip + .Lx800_4]
                                                                                        jmp   rax
.Lx800_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx800_2
.Lx800_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx800_2
.Lx800_1:
                        call             rt_faildescr@PLT
.Lx800_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n776_op11_α
                                                                                        jmp   n781_var_ref_α
n779_call_proc_staged_β:
                                                                                        jmp   n776_op11_α
.Lx800_0:
                        .quad            .Lx800_0_s
.Lx800_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n780_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n782_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n781_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n783_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n782_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        lea              r8, [rbp + 128]
.Lx805_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx805_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_41
                        cmp              esi, 1
                                                                                        jne   .Lx805_55
                        mov              r8, rax
                                                                                        jmp   .Lx805_40
.Lx805_55:
                        cmp              esi, 2
                                                                                        jne   .Lx805_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx805_41
                        mov              r8, rax
                                                                                        jmp   .Lx805_40
.Lx805_56:
                        cmp              eax, 13
                                                                                        jne   .Lx805_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_41
                        cmp              rax, r8
                                                                                        je    .Lx805_41
                        mov              r8, rax
                                                                                        jmp   .Lx805_40
.Lx805_41:
                        lea              r9, [rbp + 144]
.Lx805_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx805_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_43
                        cmp              esi, 1
                                                                                        jne   .Lx805_57
                        mov              r9, rax
                                                                                        jmp   .Lx805_42
.Lx805_57:
                        cmp              esi, 2
                                                                                        jne   .Lx805_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx805_43
                        mov              r9, rax
                                                                                        jmp   .Lx805_42
.Lx805_58:
                        cmp              eax, 13
                                                                                        jne   .Lx805_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_43
                        cmp              rax, r9
                                                                                        je    .Lx805_43
                        mov              r9, rax
                                                                                        jmp   .Lx805_42
.Lx805_43:
                        cmp              r8, r9
                                                                                        je    .Lx805_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx805_44
                        cmp              eax, 99
                                                                                        je    .Lx805_44
                        cmp              eax, 13
                                                                                        jne   .Lx805_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx805_44
                                                                                        jmp   .Lx805_45
.Lx805_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx805_53
                        cmp              eax, 99
                                                                                        je    .Lx805_53
                        cmp              eax, 13
                                                                                        jne   .Lx805_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx805_53
                                                                                        jmp   .Lx805_46
.Lx805_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx805_53
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
                                                                                        jmp   .Lx805_51
.Lx805_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx805_47
                        cmp              eax, 99
                                                                                        je    .Lx805_47
                        cmp              eax, 13
                                                                                        jne   .Lx805_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx805_47
                                                                                        jmp   .Lx805_48
.Lx805_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx805_53
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
                                                                                        jmp   .Lx805_51
.Lx805_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx805_49
                        cmp              edx, 14
                                                                                        je    .Lx805_53
                                                                                        jmp   .Lx805_52
.Lx805_49:
                        cmp              edx, 14
                                                                                        je    .Lx805_52
                        cmp              ecx, 7
                                                                                        je    .Lx805_53
                        cmp              edx, 7
                                                                                        je    .Lx805_53
                        cmp              ecx, 6
                                                                                        jne   .Lx805_50
                        cmp              edx, 6
                                                                                        jne   .Lx805_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx805_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx805_51
                                                                                        jmp   .Lx805_52
.Lx805_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx805_53
.Lx805_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx805_54
.Lx805_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx805_54
.Lx805_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx805_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n784_suspend_α
n782_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n783_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx807_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx807_21
.Lx807_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx807_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx807_1
                        lea              rcx, [rip + .Lx807_3]
                        lea              rdx, [rip + .Lx807_4]
                                                                                        jmp   rax
.Lx807_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx807_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx807_2
.Lx807_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx807_2
.Lx807_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx807_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx807_2
.Lx807_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx807_2
.Lx807_1:
                        call             rt_faildescr@PLT
.Lx807_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n779_call_proc_staged_β
                                                                                        jmp   n786_suspend_α
n783_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx807_0:
                        .quad            .Lx807_0_s
.Lx807_0_s:
                        .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n784_suspend_α:
                        lea              rax, [rip + n784_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F1_γ
n784_suspend_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n785_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   proc_lshift$2F1_ω
n785_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n786_suspend_α:
                        lea              rax, [rip + n786_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F1_γ
n786_suspend_β:
                                                                                        jmp   n783_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_lshift$2F1_res]
                        push             rax
                        mov              rax, [rbp + 536]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_cleanup_shift$2F0_α
proc_test_cleanup_shift$2F0_α:
                        .global          proc_test_cleanup_shift$2F0_α
                        .global          proc_test_cleanup_shift$2F0_β
                        .global          proc_test_cleanup_shift$2F0_γ
                        .global          proc_test_cleanup_shift$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_cleanup_shift$2F0_α_body:
                        lea              rax, [rip + n820_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n813_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx821_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx821_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx821_101
.Lx821_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx821_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_cleanup_shift$2F0_ω
                                                                                        jmp   n814_lit_string_α
n813_op11_β:
                                                                                        jmp   proc_test_cleanup_shift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n815_lit_string_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n816_lit_string_α
.Lx823_0:
                        .quad            .Lx823_0_s
.Lx823_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n816_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n817_op11_α
.Lx824_0:
                        .quad            .Lx824_0_s
.Lx824_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n817_op11_α:
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
                                                                                        je    n819_op11_α
                                                                                        jmp   n818_call_proc_staged_α
n817_op11_β:
                                                                                        jmp   n819_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n818_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx827_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx827_21
.Lx827_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx827_21:
                        mov              rdi, qword ptr [rip + .Lx827_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx827_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx827_3]
                        lea              rdx, [rip + .Lx827_4]
                                                                                        jmp   rax
.Lx827_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx827_2
.Lx827_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx827_2
.Lx827_1:
                        call             rt_faildescr@PLT
.Lx827_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n819_op11_α
                                                                                        jmp   n820_suspend_α
n818_call_proc_staged_β:
                                                                                        jmp   n819_op11_α
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n819_op11_α:
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
                                                                                        je    proc_test_cleanup_shift$2F0_ω
                                                                                        jmp   proc_test_cleanup_shift$2F0_ω
n819_op11_β:
                                                                                        jmp   proc_test_cleanup_shift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n820_suspend_α:
                        lea              rax, [rip + n820_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_cleanup_shift$2F0_γ
n820_suspend_β:
                                                                                        jmp   n818_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cleanup_shift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cleanup_shift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cleanup_shift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_cleanup_shift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cleanup_shift$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F1_α
proc_$call$2F1_α:
                        .global          proc_$call$2F1_α
                        .global          proc_$call$2F1_β
                        .global          proc_$call$2F1_γ
                        .global          proc_$call$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call$2F1_α_body:
                        lea              rax, [rip + n833_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n831_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n832_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n832_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx836_60:
                        .section         .rodata
.Lbynamegenfn354:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn354]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n833_suspend_α
n832_call_builtin_gen_β:
                                                                                        jmp   .Lx836_60
#-----------------------------------------------------------------------------------------------------------------------
n833_suspend_α:
                        lea              rax, [rip + n833_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n833_suspend_β:
                                                                                        jmp   n832_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t_except$2F1_α
proc_t_except$2F1_α:
                        .global          proc_t_except$2F1_α
                        .global          proc_t_except$2F1_β
                        .global          proc_t_except$2F1_γ
                        .global          proc_t_except$2F1_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_t_except$2F1_α_body:
                        lea              rax, [rip + n867_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
#-----------------------------------------------------------------------------------------------------------------------
n839_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx873_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx873_101
.Lx873_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx873_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_except$2F1_ω
                                                                                        jmp   n840_var_ref_α
n839_op11_β:
                                                                                        jmp   proc_t_except$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n840_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n841_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n842_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n842_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
.Lx878_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx878_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx878_41
                        cmp              esi, 1
                                                                                        jne   .Lx878_55
                        mov              r8, rax
                                                                                        jmp   .Lx878_40
.Lx878_55:
                        cmp              esi, 2
                                                                                        jne   .Lx878_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx878_41
                        mov              r8, rax
                                                                                        jmp   .Lx878_40
.Lx878_56:
                        cmp              eax, 13
                                                                                        jne   .Lx878_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx878_41
                        cmp              rax, r8
                                                                                        je    .Lx878_41
                        mov              r8, rax
                                                                                        jmp   .Lx878_40
.Lx878_41:
                        lea              r9, [rbp + 1056]
.Lx878_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx878_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx878_43
                        cmp              esi, 1
                                                                                        jne   .Lx878_57
                        mov              r9, rax
                                                                                        jmp   .Lx878_42
.Lx878_57:
                        cmp              esi, 2
                                                                                        jne   .Lx878_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx878_43
                        mov              r9, rax
                                                                                        jmp   .Lx878_42
.Lx878_58:
                        cmp              eax, 13
                                                                                        jne   .Lx878_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx878_43
                        cmp              rax, r9
                                                                                        je    .Lx878_43
                        mov              r9, rax
                                                                                        jmp   .Lx878_42
.Lx878_43:
                        cmp              r8, r9
                                                                                        je    .Lx878_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx878_44
                        cmp              eax, 99
                                                                                        je    .Lx878_44
                        cmp              eax, 13
                                                                                        jne   .Lx878_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx878_44
                                                                                        jmp   .Lx878_45
.Lx878_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx878_53
                        cmp              eax, 99
                                                                                        je    .Lx878_53
                        cmp              eax, 13
                                                                                        jne   .Lx878_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx878_53
                                                                                        jmp   .Lx878_46
.Lx878_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx878_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx878_53
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
                                                                                        jmp   .Lx878_51
.Lx878_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx878_47
                        cmp              eax, 99
                                                                                        je    .Lx878_47
                        cmp              eax, 13
                                                                                        jne   .Lx878_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx878_47
                                                                                        jmp   .Lx878_48
.Lx878_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx878_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx878_53
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
                                                                                        jmp   .Lx878_51
.Lx878_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx878_49
                        cmp              edx, 14
                                                                                        je    .Lx878_53
                                                                                        jmp   .Lx878_52
.Lx878_49:
                        cmp              edx, 14
                                                                                        je    .Lx878_52
                        cmp              ecx, 7
                                                                                        je    .Lx878_53
                        cmp              edx, 7
                                                                                        je    .Lx878_53
                        cmp              ecx, 6
                                                                                        jne   .Lx878_50
                        cmp              edx, 6
                                                                                        jne   .Lx878_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx878_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx878_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx878_51
                                                                                        jmp   .Lx878_52
.Lx878_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx878_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx878_53
.Lx878_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx878_54
.Lx878_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx878_54
.Lx878_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx878_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n844_op11_α
                                                                                        jmp   n843_call_proc_staged_α
n842_op11_β:
                                                                                        jmp   n844_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n843_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx880_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx880_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx880_3]
                        lea              rdx, [rip + .Lx880_4]
                                                                                        jmp   rax
.Lx880_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx880_2
.Lx880_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx880_2
.Lx880_1:
                        call             rt_faildescr@PLT
.Lx880_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n844_op11_α
                                                                                        jmp   n845_call_proc_staged_α
n843_call_proc_staged_β:
                                                                                        jmp   n844_op11_α
.Lx880_0:
                        .quad            .Lx880_0_s
.Lx880_0_s:
                        .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n844_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_except$2F1_ω
                                                                                        jmp   proc_t_except$2F1_ω
n844_op11_β:
                                                                                        jmp   proc_t_except$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n845_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx883_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx883_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx883_3]
                        lea              rdx, [rip + .Lx883_4]
                                                                                        jmp   rax
.Lx883_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx883_2
.Lx883_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx883_2
.Lx883_1:
                        call             rt_faildescr@PLT
.Lx883_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n843_call_proc_staged_β
                                                                                        jmp   n846_var_ref_α
n845_call_proc_staged_β:
                                                                                        jmp   n843_call_proc_staged_β
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "trim_stacks/0"
#-----------------------------------------------------------------------------------------------------------------------
n846_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n847_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n847_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx886_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx886_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx886_101
.Lx886_100:
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx886_101:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n844_op11_α
                                                                                        jmp   n848_var_ref_α
n847_op11_β:
                                                                                        jmp   n844_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n848_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n849_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n849_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n850_op11_α
.Lx889_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n850_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn891:              .string          "$succ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn891]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n852_var_ref_α
                                                                                        jmp   n851_var_ref_α
n850_op11_β:
                                                                                        jmp   n852_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n851_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n853_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n852_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n854_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n853_call_proc_staged_α:
                        mov              qword ptr [rbp + 752], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx897_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx897_21
.Lx897_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx897_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx897_1
                        lea              rcx, [rip + .Lx897_3]
                        lea              rdx, [rip + .Lx897_4]
                                                                                        jmp   rax
.Lx897_3:
                        mov              qword ptr [rbp + 760], rsp
                        mov              rax, qword ptr [rbp + 752]
                        test             rax, rax
                                                                                        jne   .Lx897_5
                        mov              qword ptr [rbp + 752], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx897_2
.Lx897_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx897_2
.Lx897_4:
                        mov              rax, qword ptr [rbp + 752]
                        test             rax, rax
                                                                                        jne   .Lx897_6
                        mov              qword ptr [rbp + 752], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx897_2
.Lx897_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx897_2
.Lx897_1:
                        call             rt_faildescr@PLT
.Lx897_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n856_op11_α
                                                                                        jmp   n855_lit_string_α
n853_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 760]
                                                                                        jmp   qword ptr [rsp]
.Lx897_0:
                        .quad            .Lx897_0_s
.Lx897_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n854_call_proc_staged_α:
                        mov              qword ptr [rbp + 832], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx899_20
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx899_21
.Lx899_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        call             rt_arg_stage@PLT
.Lx899_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx899_1
                        lea              rcx, [rip + .Lx899_3]
                        lea              rdx, [rip + .Lx899_4]
                                                                                        jmp   rax
.Lx899_3:
                        mov              qword ptr [rbp + 840], rsp
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax
                                                                                        jne   .Lx899_5
                        mov              qword ptr [rbp + 832], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx899_2
.Lx899_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx899_2
.Lx899_4:
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax
                                                                                        jne   .Lx899_6
                        mov              qword ptr [rbp + 832], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx899_2
.Lx899_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx899_2
.Lx899_1:
                        call             rt_faildescr@PLT
.Lx899_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n856_op11_α
                                                                                        jmp   n856_op11_α
n854_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 840]
                                                                                        jmp   qword ptr [rsp]
.Lx899_0:
                        .quad            .Lx899_0_s
.Lx899_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n857_lit_string_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n856_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn902:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn902]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n845_call_proc_staged_β
                                                                                        jmp   n855_lit_string_α
n856_op11_β:
                                                                                        jmp   n845_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n858_lit_string_α
.Lx903_0:
                        .quad            .Lx903_0_s
.Lx903_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n858_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n859_lit_integer_α
.Lx904_0:
                        .quad            .Lx904_0_s
.Lx904_0_s:
                        .string          "not_less_than_zero"
#-----------------------------------------------------------------------------------------------------------------------
n859_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n860_op11_α
.Lx905_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n860_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_except$2F1_ω
                                                                                        jmp   n861_var_ref_α
n860_op11_β:
                                                                                        jmp   proc_t_except$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n861_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n862_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n862_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 408]
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
                                                                                        je    n864_lit_string_α
                                                                                        jmp   n863_var_ref_α
n862_op11_β:
                                                                                        jmp   n864_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n863_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n865_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n864_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n866_lit_string_α
.Lx912_0:
                        .quad            .Lx912_0_s
.Lx912_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n865_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn914:              .string          "$subsumes_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn914]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n864_lit_string_α
                                                                                        jmp   n867_suspend_α
n865_op11_β:
                                                                                        jmp   n864_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n866_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n868_lit_string_α
.Lx915_0:
                        .quad            .Lx915_0_s
.Lx915_0_s:
                        .string          "Wrong error: ~p"
#-----------------------------------------------------------------------------------------------------------------------
n867_suspend_α:
                        lea              rax, [rip + n867_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t_except$2F1_γ
n867_suspend_β:
                                                                                        jmp   n845_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n868_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n869_var_ref_α
.Lx918_0:
                        .quad            .Lx918_0_s
.Lx918_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n869_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n870_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n871_op11_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n871_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n845_call_proc_staged_β
                                                                                        jmp   n872_op11_α
n871_op11_β:
                                                                                        jmp   n845_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n872_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn924:              .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn924]
                        lea              rsi, [rbp + 112]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n845_call_proc_staged_β
                                                                                        jmp   n845_call_proc_staged_β
n872_op11_β:
                                                                                        jmp   n845_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_t_except$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t_except$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1104]
#-----------------------------------------------------------------------------------------------------------------------
proc_t_except$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t_except$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t_except$2F1_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t_cut$2F1_α
proc_t_cut$2F1_α:
                        .global          proc_t_cut$2F1_α
                        .global          proc_t_cut$2F1_β
                        .global          proc_t_cut$2F1_γ
                        .global          proc_t_cut$2F1_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_t_cut$2F1_α_body:
                        lea              rax, [rip + n938_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n925_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx939_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx939_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx939_101
.Lx939_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx939_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_cut$2F1_ω
                                                                                        jmp   n926_var_ref_α
n925_op11_β:
                                                                                        jmp   proc_t_cut$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n926_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n927_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n927_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n928_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n928_op11_α:
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
.Lx944_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx944_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx944_41
                        cmp              esi, 1
                                                                                        jne   .Lx944_55
                        mov              r8, rax
                                                                                        jmp   .Lx944_40
.Lx944_55:
                        cmp              esi, 2
                                                                                        jne   .Lx944_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx944_41
                        mov              r8, rax
                                                                                        jmp   .Lx944_40
.Lx944_56:
                        cmp              eax, 13
                                                                                        jne   .Lx944_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx944_41
                        cmp              rax, r8
                                                                                        je    .Lx944_41
                        mov              r8, rax
                                                                                        jmp   .Lx944_40
.Lx944_41:
                        lea              r9, [rbp + 400]
.Lx944_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx944_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx944_43
                        cmp              esi, 1
                                                                                        jne   .Lx944_57
                        mov              r9, rax
                                                                                        jmp   .Lx944_42
.Lx944_57:
                        cmp              esi, 2
                                                                                        jne   .Lx944_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx944_43
                        mov              r9, rax
                                                                                        jmp   .Lx944_42
.Lx944_58:
                        cmp              eax, 13
                                                                                        jne   .Lx944_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx944_43
                        cmp              rax, r9
                                                                                        je    .Lx944_43
                        mov              r9, rax
                                                                                        jmp   .Lx944_42
.Lx944_43:
                        cmp              r8, r9
                                                                                        je    .Lx944_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx944_44
                        cmp              eax, 99
                                                                                        je    .Lx944_44
                        cmp              eax, 13
                                                                                        jne   .Lx944_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx944_44
                                                                                        jmp   .Lx944_45
.Lx944_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx944_53
                        cmp              eax, 99
                                                                                        je    .Lx944_53
                        cmp              eax, 13
                                                                                        jne   .Lx944_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx944_53
                                                                                        jmp   .Lx944_46
.Lx944_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx944_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx944_53
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
                                                                                        jmp   .Lx944_51
.Lx944_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx944_47
                        cmp              eax, 99
                                                                                        je    .Lx944_47
                        cmp              eax, 13
                                                                                        jne   .Lx944_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx944_47
                                                                                        jmp   .Lx944_48
.Lx944_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx944_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx944_53
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
                                                                                        jmp   .Lx944_51
.Lx944_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx944_49
                        cmp              edx, 14
                                                                                        je    .Lx944_53
                                                                                        jmp   .Lx944_52
.Lx944_49:
                        cmp              edx, 14
                                                                                        je    .Lx944_52
                        cmp              ecx, 7
                                                                                        je    .Lx944_53
                        cmp              edx, 7
                                                                                        je    .Lx944_53
                        cmp              ecx, 6
                                                                                        jne   .Lx944_50
                        cmp              edx, 6
                                                                                        jne   .Lx944_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx944_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx944_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx944_51
                                                                                        jmp   .Lx944_52
.Lx944_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx944_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx944_53
.Lx944_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx944_54
.Lx944_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx944_54
.Lx944_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx944_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n930_op11_α
                                                                                        jmp   n929_call_proc_staged_α
n928_op11_β:
                                                                                        jmp   n930_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n929_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx946_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx946_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx946_3]
                        lea              rdx, [rip + .Lx946_4]
                                                                                        jmp   rax
.Lx946_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx946_2
.Lx946_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx946_2
.Lx946_1:
                        call             rt_faildescr@PLT
.Lx946_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n930_op11_α
                                                                                        jmp   n931_call_proc_staged_α
n929_call_proc_staged_β:
                                                                                        jmp   n930_op11_α
.Lx946_0:
                        .quad            .Lx946_0_s
.Lx946_0_s:
                        .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n930_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_cut$2F1_ω
                                                                                        jmp   proc_t_cut$2F1_ω
n930_op11_β:
                                                                                        jmp   proc_t_cut$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n931_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx949_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx949_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx949_3]
                        lea              rdx, [rip + .Lx949_4]
                                                                                        jmp   rax
.Lx949_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx949_2
.Lx949_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx949_2
.Lx949_1:
                        call             rt_faildescr@PLT
.Lx949_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n929_call_proc_staged_β
                                                                                        jmp   n932_call_proc_staged_α
n931_call_proc_staged_β:
                                                                                        jmp   n929_call_proc_staged_β
.Lx949_0:
                        .quad            .Lx949_0_s
.Lx949_0_s:
                        .string          "trim_stacks/0"
#-----------------------------------------------------------------------------------------------------------------------
n932_call_proc_staged_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              edi, 9
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx951_1
                        lea              rcx, [rip + .Lx951_3]
                        lea              rdx, [rip + .Lx951_4]
                                                                                        jmp   rax
.Lx951_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx951_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx951_2
.Lx951_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx951_2
.Lx951_4:
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx951_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx951_2
.Lx951_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx951_2
.Lx951_1:
                        call             rt_faildescr@PLT
.Lx951_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n934_var_ref_α
                                                                                        jmp   n933_var_ref_α
n932_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx951_0:
                        .quad            .Lx951_0_s
.Lx951_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n933_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n935_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n934_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n936_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n935_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx957_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx957_21
.Lx957_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx957_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx957_1
                        lea              rcx, [rip + .Lx957_3]
                        lea              rdx, [rip + .Lx957_4]
                                                                                        jmp   rax
.Lx957_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx957_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx957_2
.Lx957_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx957_2
.Lx957_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx957_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx957_2
.Lx957_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx957_2
.Lx957_1:
                        call             rt_faildescr@PLT
.Lx957_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n930_op11_α
                                                                                        jmp   n937_op19_α
n935_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx957_0:
                        .quad            .Lx957_0_s
.Lx957_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n936_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx959_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx959_21
.Lx959_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx959_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx959_1
                        lea              rcx, [rip + .Lx959_3]
                        lea              rdx, [rip + .Lx959_4]
                                                                                        jmp   rax
.Lx959_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx959_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx959_2
.Lx959_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx959_2
.Lx959_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx959_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx959_2
.Lx959_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx959_2
.Lx959_1:
                        call             rt_faildescr@PLT
.Lx959_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n930_op11_α
                                                                                        jmp   n930_op11_α
n936_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx959_0:
                        .quad            .Lx959_0_s
.Lx959_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n937_op19_α:
                                                                                        jmp   n938_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n938_suspend_α:
                        lea              rax, [rip + n938_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t_cut$2F1_γ
n938_suspend_β:
                                                                                        jmp   n931_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_t_cut$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t_cut$2F1_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_t_cut$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t_cut$2F1_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t_cut$2F1_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
                        .global          proc_$disj0$2F0_α
                        .global          proc_$disj0$2F0_β
                        .global          proc_$disj0$2F0_γ
                        .global          proc_$disj0$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n964_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n963_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx968_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx968_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx968_101
.Lx968_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx968_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n964_suspend_α
n963_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n964_suspend_α:
                        lea              rax, [rip + n964_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n964_suspend_β:
                                                                                        jmp   n965_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n965_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n966_suspend_α
n965_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n966_suspend_α:
                        lea              rax, [rip + n966_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n966_suspend_β:
                                                                                        jmp   n967_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n967_op11_α:
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
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   proc_$disj0$2F0_ω
n967_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gshift$2F0_α
proc_gshift$2F0_α:
                        .global          proc_gshift$2F0_α
                        .global          proc_gshift$2F0_β
                        .global          proc_gshift$2F0_γ
                        .global          proc_gshift$2F0_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_gshift$2F0_α_body:
                        lea              rax, [rip + n978_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n975_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx980_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx980_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx980_101
.Lx980_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx980_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_gshift$2F0_ω
                                                                                        jmp   n976_lit_string_α
n975_op11_β:
                                                                                        jmp   proc_gshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n977_call_proc_staged_α
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "global_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n977_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx983_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx983_21
.Lx983_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx983_21:
                        mov              edi, 12
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx983_1
                        lea              rcx, [rip + .Lx983_3]
                        lea              rdx, [rip + .Lx983_4]
                                                                                        jmp   rax
.Lx983_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx983_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx983_2
.Lx983_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx983_2
.Lx983_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx983_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx983_2
.Lx983_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx983_2
.Lx983_1:
                        call             rt_faildescr@PLT
.Lx983_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n979_op11_α
                                                                                        jmp   n978_suspend_α
n977_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          "shift_stack/1"
#-----------------------------------------------------------------------------------------------------------------------
n978_suspend_α:
                        lea              rax, [rip + n978_suspend_β]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gshift$2F0_γ
n978_suspend_β:
                                                                                        jmp   n977_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n979_op11_α:
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
                                                                                        je    proc_gshift$2F0_ω
                                                                                        jmp   proc_gshift$2F0_ω
n979_op11_β:
                                                                                        jmp   proc_gshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gshift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gshift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_gshift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gshift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 184]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gshift$2F0_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shift_stack$2F3_α
proc_shift_stack$2F3_α:
                        .global          proc_shift_stack$2F3_α
                        .global          proc_shift_stack$2F3_β
                        .global          proc_shift_stack$2F3_γ
                        .global          proc_shift_stack$2F3_ω
                        sub              rsp, 1104
                        mov              [rsp + 1080], rcx
                        mov              [rsp + 1088], rdx
                        mov              [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 976
                        mov              edx, 1072
                        call             rt_jmp_frame_lexprep2@PLT
proc_shift_stack$2F3_α_body:
                        lea              rax, [rip + n1013_suspend_β]
                        mov              qword ptr [rbp + 976], rax
#-----------------------------------------------------------------------------------------------------------------------
n987_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1020_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1020_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1020_101
.Lx1020_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1020_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_shift_stack$2F3_ω
                                                                                        jmp   n988_var_ref_α
n987_op11_β:
                                                                                        jmp   proc_shift_stack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n988_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n989_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n989_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n990_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n990_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx1025_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1025_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1025_41
                        cmp              esi, 1
                                                                                        jne   .Lx1025_55
                        mov              r8, rax
                                                                                        jmp   .Lx1025_40
.Lx1025_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1025_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1025_41
                        mov              r8, rax
                                                                                        jmp   .Lx1025_40
.Lx1025_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1025_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1025_41
                        cmp              rax, r8
                                                                                        je    .Lx1025_41
                        mov              r8, rax
                                                                                        jmp   .Lx1025_40
.Lx1025_41:
                        lea              r9, [rbp + 928]
.Lx1025_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1025_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1025_43
                        cmp              esi, 1
                                                                                        jne   .Lx1025_57
                        mov              r9, rax
                                                                                        jmp   .Lx1025_42
.Lx1025_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1025_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1025_43
                        mov              r9, rax
                                                                                        jmp   .Lx1025_42
.Lx1025_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1025_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1025_43
                        cmp              rax, r9
                                                                                        je    .Lx1025_43
                        mov              r9, rax
                                                                                        jmp   .Lx1025_42
.Lx1025_43:
                        cmp              r8, r9
                                                                                        je    .Lx1025_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1025_44
                        cmp              eax, 99
                                                                                        je    .Lx1025_44
                        cmp              eax, 13
                                                                                        jne   .Lx1025_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1025_44
                                                                                        jmp   .Lx1025_45
.Lx1025_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1025_53
                        cmp              eax, 99
                                                                                        je    .Lx1025_53
                        cmp              eax, 13
                                                                                        jne   .Lx1025_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1025_53
                                                                                        jmp   .Lx1025_46
.Lx1025_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1025_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1025_53
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
                                                                                        jmp   .Lx1025_51
.Lx1025_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1025_47
                        cmp              eax, 99
                                                                                        je    .Lx1025_47
                        cmp              eax, 13
                                                                                        jne   .Lx1025_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1025_47
                                                                                        jmp   .Lx1025_48
.Lx1025_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1025_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1025_53
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
                                                                                        jmp   .Lx1025_51
.Lx1025_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1025_49
                        cmp              edx, 14
                                                                                        je    .Lx1025_53
                                                                                        jmp   .Lx1025_52
.Lx1025_49:
                        cmp              edx, 14
                                                                                        je    .Lx1025_52
                        cmp              ecx, 7
                                                                                        je    .Lx1025_53
                        cmp              edx, 7
                                                                                        je    .Lx1025_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1025_50
                        cmp              edx, 6
                                                                                        jne   .Lx1025_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1025_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1025_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1025_51
                                                                                        jmp   .Lx1025_52
.Lx1025_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1025_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1025_53
.Lx1025_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1025_54
.Lx1025_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1025_54
.Lx1025_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1025_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n992_op11_α
                                                                                        jmp   n991_var_ref_α
n990_op11_β:
                                                                                        jmp   n992_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n991_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n993_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n992_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_shift_stack$2F3_ω
                                                                                        jmp   n994_var_ref_α
n992_op11_β:
                                                                                        jmp   proc_shift_stack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n993_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n995_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n994_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n996_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n995_op11_α:
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
.Lx1033_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1033_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1033_41
                        cmp              esi, 1
                                                                                        jne   .Lx1033_55
                        mov              r8, rax
                                                                                        jmp   .Lx1033_40
.Lx1033_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1033_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1033_41
                        mov              r8, rax
                                                                                        jmp   .Lx1033_40
.Lx1033_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1033_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1033_41
                        cmp              rax, r8
                                                                                        je    .Lx1033_41
                        mov              r8, rax
                                                                                        jmp   .Lx1033_40
.Lx1033_41:
                        lea              r9, [rbp + 848]
.Lx1033_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1033_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1033_43
                        cmp              esi, 1
                                                                                        jne   .Lx1033_57
                        mov              r9, rax
                                                                                        jmp   .Lx1033_42
.Lx1033_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1033_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1033_43
                        mov              r9, rax
                                                                                        jmp   .Lx1033_42
.Lx1033_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1033_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1033_43
                        cmp              rax, r9
                                                                                        je    .Lx1033_43
                        mov              r9, rax
                                                                                        jmp   .Lx1033_42
.Lx1033_43:
                        cmp              r8, r9
                                                                                        je    .Lx1033_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1033_44
                        cmp              eax, 99
                                                                                        je    .Lx1033_44
                        cmp              eax, 13
                                                                                        jne   .Lx1033_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1033_44
                                                                                        jmp   .Lx1033_45
.Lx1033_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1033_53
                        cmp              eax, 99
                                                                                        je    .Lx1033_53
                        cmp              eax, 13
                                                                                        jne   .Lx1033_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1033_53
                                                                                        jmp   .Lx1033_46
.Lx1033_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1033_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1033_53
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
                                                                                        jmp   .Lx1033_51
.Lx1033_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1033_47
                        cmp              eax, 99
                                                                                        je    .Lx1033_47
                        cmp              eax, 13
                                                                                        jne   .Lx1033_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1033_47
                                                                                        jmp   .Lx1033_48
.Lx1033_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1033_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1033_53
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
                                                                                        jmp   .Lx1033_51
.Lx1033_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1033_49
                        cmp              edx, 14
                                                                                        je    .Lx1033_53
                                                                                        jmp   .Lx1033_52
.Lx1033_49:
                        cmp              edx, 14
                                                                                        je    .Lx1033_52
                        cmp              ecx, 7
                                                                                        je    .Lx1033_53
                        cmp              edx, 7
                                                                                        je    .Lx1033_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1033_50
                        cmp              edx, 6
                                                                                        jne   .Lx1033_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1033_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1033_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1033_51
                                                                                        jmp   .Lx1033_52
.Lx1033_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1033_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1033_53
.Lx1033_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1033_54
.Lx1033_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1033_54
.Lx1033_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1033_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n992_op11_α
                                                                                        jmp   n997_var_ref_α
n995_op11_β:
                                                                                        jmp   n992_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n996_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n998_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n997_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n999_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n998_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx1038_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1038_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1038_41
                        cmp              esi, 1
                                                                                        jne   .Lx1038_55
                        mov              r8, rax
                                                                                        jmp   .Lx1038_40
.Lx1038_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1038_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1038_41
                        mov              r8, rax
                                                                                        jmp   .Lx1038_40
.Lx1038_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1038_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1038_41
                        cmp              rax, r8
                                                                                        je    .Lx1038_41
                        mov              r8, rax
                                                                                        jmp   .Lx1038_40
.Lx1038_41:
                        lea              r9, [rbp + 336]
.Lx1038_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1038_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1038_43
                        cmp              esi, 1
                                                                                        jne   .Lx1038_57
                        mov              r9, rax
                                                                                        jmp   .Lx1038_42
.Lx1038_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1038_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1038_43
                        mov              r9, rax
                                                                                        jmp   .Lx1038_42
.Lx1038_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1038_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1038_43
                        cmp              rax, r9
                                                                                        je    .Lx1038_43
                        mov              r9, rax
                                                                                        jmp   .Lx1038_42
.Lx1038_43:
                        cmp              r8, r9
                                                                                        je    .Lx1038_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1038_44
                        cmp              eax, 99
                                                                                        je    .Lx1038_44
                        cmp              eax, 13
                                                                                        jne   .Lx1038_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1038_44
                                                                                        jmp   .Lx1038_45
.Lx1038_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1038_53
                        cmp              eax, 99
                                                                                        je    .Lx1038_53
                        cmp              eax, 13
                                                                                        jne   .Lx1038_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1038_53
                                                                                        jmp   .Lx1038_46
.Lx1038_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1038_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1038_53
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
                                                                                        jmp   .Lx1038_51
.Lx1038_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1038_47
                        cmp              eax, 99
                                                                                        je    .Lx1038_47
                        cmp              eax, 13
                                                                                        jne   .Lx1038_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1038_47
                                                                                        jmp   .Lx1038_48
.Lx1038_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1038_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1038_53
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
                                                                                        jmp   .Lx1038_51
.Lx1038_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1038_49
                        cmp              edx, 14
                                                                                        je    .Lx1038_53
                                                                                        jmp   .Lx1038_52
.Lx1038_49:
                        cmp              edx, 14
                                                                                        je    .Lx1038_52
                        cmp              ecx, 7
                                                                                        je    .Lx1038_53
                        cmp              edx, 7
                                                                                        je    .Lx1038_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1038_50
                        cmp              edx, 6
                                                                                        jne   .Lx1038_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1038_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1038_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1038_51
                                                                                        jmp   .Lx1038_52
.Lx1038_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1038_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1038_53
.Lx1038_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1038_54
.Lx1038_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1038_54
.Lx1038_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1038_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n1001_op11_α
                                                                                        jmp   n1000_var_ref_α
n998_op11_β:
                                                                                        jmp   n1001_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n999_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1002_var_ref_α
.Lx1039_0:
                        .quad            .Lx1039_0_s
.Lx1039_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1003_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_op11_α:
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
                                                                                        je    proc_shift_stack$2F3_ω
                                                                                        jmp   proc_shift_stack$2F3_ω
n1001_op11_β:
                                                                                        jmp   proc_shift_stack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1002_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n1004_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n1005_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n992_op11_α
                                                                                        jmp   n1006_op11_α
n1004_op11_β:
                                                                                        jmp   n992_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lx1048_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1048_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1048_41
                        cmp              esi, 1
                                                                                        jne   .Lx1048_55
                        mov              r8, rax
                                                                                        jmp   .Lx1048_40
.Lx1048_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1048_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1048_41
                        mov              r8, rax
                                                                                        jmp   .Lx1048_40
.Lx1048_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1048_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1048_41
                        cmp              rax, r8
                                                                                        je    .Lx1048_41
                        mov              r8, rax
                                                                                        jmp   .Lx1048_40
.Lx1048_41:
                        lea              r9, [rbp + 256]
.Lx1048_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1048_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1048_43
                        cmp              esi, 1
                                                                                        jne   .Lx1048_57
                        mov              r9, rax
                                                                                        jmp   .Lx1048_42
.Lx1048_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1048_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1048_43
                        mov              r9, rax
                                                                                        jmp   .Lx1048_42
.Lx1048_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1048_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1048_43
                        cmp              rax, r9
                                                                                        je    .Lx1048_43
                        mov              r9, rax
                                                                                        jmp   .Lx1048_42
.Lx1048_43:
                        cmp              r8, r9
                                                                                        je    .Lx1048_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1048_44
                        cmp              eax, 99
                                                                                        je    .Lx1048_44
                        cmp              eax, 13
                                                                                        jne   .Lx1048_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1048_44
                                                                                        jmp   .Lx1048_45
.Lx1048_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1048_53
                        cmp              eax, 99
                                                                                        je    .Lx1048_53
                        cmp              eax, 13
                                                                                        jne   .Lx1048_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1048_53
                                                                                        jmp   .Lx1048_46
.Lx1048_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1048_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1048_53
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
                                                                                        jmp   .Lx1048_51
.Lx1048_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1048_47
                        cmp              eax, 99
                                                                                        je    .Lx1048_47
                        cmp              eax, 13
                                                                                        jne   .Lx1048_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1048_47
                                                                                        jmp   .Lx1048_48
.Lx1048_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1048_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1048_53
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
                                                                                        jmp   .Lx1048_51
.Lx1048_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1048_49
                        cmp              edx, 14
                                                                                        je    .Lx1048_53
                                                                                        jmp   .Lx1048_52
.Lx1048_49:
                        cmp              edx, 14
                                                                                        je    .Lx1048_52
                        cmp              ecx, 7
                                                                                        je    .Lx1048_53
                        cmp              edx, 7
                                                                                        je    .Lx1048_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1048_50
                        cmp              edx, 6
                                                                                        jne   .Lx1048_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1048_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1048_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1048_51
                                                                                        jmp   .Lx1048_52
.Lx1048_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1048_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1048_53
.Lx1048_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1048_54
.Lx1048_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1048_54
.Lx1048_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1048_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n1001_op11_α
                                                                                        jmp   n1007_var_ref_α
n1005_op11_β:
                                                                                        jmp   n1001_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx1049_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1049_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_41
                        cmp              esi, 1
                                                                                        jne   .Lx1049_55
                        mov              r8, rax
                                                                                        jmp   .Lx1049_40
.Lx1049_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1049_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1049_41
                        mov              r8, rax
                                                                                        jmp   .Lx1049_40
.Lx1049_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1049_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_41
                        cmp              rax, r8
                                                                                        je    .Lx1049_41
                        mov              r8, rax
                                                                                        jmp   .Lx1049_40
.Lx1049_41:
                        lea              r9, [rbp + 688]
.Lx1049_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1049_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_43
                        cmp              esi, 1
                                                                                        jne   .Lx1049_57
                        mov              r9, rax
                                                                                        jmp   .Lx1049_42
.Lx1049_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1049_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1049_43
                        mov              r9, rax
                                                                                        jmp   .Lx1049_42
.Lx1049_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1049_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_43
                        cmp              rax, r9
                                                                                        je    .Lx1049_43
                        mov              r9, rax
                                                                                        jmp   .Lx1049_42
.Lx1049_43:
                        cmp              r8, r9
                                                                                        je    .Lx1049_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1049_44
                        cmp              eax, 99
                                                                                        je    .Lx1049_44
                        cmp              eax, 13
                                                                                        jne   .Lx1049_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1049_44
                                                                                        jmp   .Lx1049_45
.Lx1049_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1049_53
                        cmp              eax, 99
                                                                                        je    .Lx1049_53
                        cmp              eax, 13
                                                                                        jne   .Lx1049_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1049_53
                                                                                        jmp   .Lx1049_46
.Lx1049_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1049_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1049_53
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
                                                                                        jmp   .Lx1049_51
.Lx1049_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1049_47
                        cmp              eax, 99
                                                                                        je    .Lx1049_47
                        cmp              eax, 13
                                                                                        jne   .Lx1049_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1049_47
                                                                                        jmp   .Lx1049_48
.Lx1049_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1049_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1049_53
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
                                                                                        jmp   .Lx1049_51
.Lx1049_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1049_49
                        cmp              edx, 14
                                                                                        je    .Lx1049_53
                                                                                        jmp   .Lx1049_52
.Lx1049_49:
                        cmp              edx, 14
                                                                                        je    .Lx1049_52
                        cmp              ecx, 7
                                                                                        je    .Lx1049_53
                        cmp              edx, 7
                                                                                        je    .Lx1049_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1049_50
                        cmp              edx, 6
                                                                                        jne   .Lx1049_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1049_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1049_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1049_51
                                                                                        jmp   .Lx1049_52
.Lx1049_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1049_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1049_53
.Lx1049_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1049_54
.Lx1049_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1049_54
.Lx1049_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1049_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n992_op11_α
                                                                                        jmp   n1008_var_ref_α
n1006_op11_β:
                                                                                        jmp   n992_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1009_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n1010_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1009_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n1011_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n1012_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lx1058_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1058_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1058_41
                        cmp              esi, 1
                                                                                        jne   .Lx1058_55
                        mov              r8, rax
                                                                                        jmp   .Lx1058_40
.Lx1058_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1058_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1058_41
                        mov              r8, rax
                                                                                        jmp   .Lx1058_40
.Lx1058_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1058_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1058_41
                        cmp              rax, r8
                                                                                        je    .Lx1058_41
                        mov              r8, rax
                                                                                        jmp   .Lx1058_40
.Lx1058_41:
                        lea              r9, [rbp + 176]
.Lx1058_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1058_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1058_43
                        cmp              esi, 1
                                                                                        jne   .Lx1058_57
                        mov              r9, rax
                                                                                        jmp   .Lx1058_42
.Lx1058_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1058_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1058_43
                        mov              r9, rax
                                                                                        jmp   .Lx1058_42
.Lx1058_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1058_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1058_43
                        cmp              rax, r9
                                                                                        je    .Lx1058_43
                        mov              r9, rax
                                                                                        jmp   .Lx1058_42
.Lx1058_43:
                        cmp              r8, r9
                                                                                        je    .Lx1058_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1058_44
                        cmp              eax, 99
                                                                                        je    .Lx1058_44
                        cmp              eax, 13
                                                                                        jne   .Lx1058_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1058_44
                                                                                        jmp   .Lx1058_45
.Lx1058_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1058_53
                        cmp              eax, 99
                                                                                        je    .Lx1058_53
                        cmp              eax, 13
                                                                                        jne   .Lx1058_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1058_53
                                                                                        jmp   .Lx1058_46
.Lx1058_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1058_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1058_53
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
                                                                                        jmp   .Lx1058_51
.Lx1058_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1058_47
                        cmp              eax, 99
                                                                                        je    .Lx1058_47
                        cmp              eax, 13
                                                                                        jne   .Lx1058_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1058_47
                                                                                        jmp   .Lx1058_48
.Lx1058_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1058_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1058_53
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
                                                                                        jmp   .Lx1058_51
.Lx1058_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1058_49
                        cmp              edx, 14
                                                                                        je    .Lx1058_53
                                                                                        jmp   .Lx1058_52
.Lx1058_49:
                        cmp              edx, 14
                                                                                        je    .Lx1058_52
                        cmp              ecx, 7
                                                                                        je    .Lx1058_53
                        cmp              edx, 7
                                                                                        je    .Lx1058_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1058_50
                        cmp              edx, 6
                                                                                        jne   .Lx1058_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1058_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1058_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1058_51
                                                                                        jmp   .Lx1058_52
.Lx1058_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1058_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1058_53
.Lx1058_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1058_54
.Lx1058_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1058_54
.Lx1058_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1058_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1001_op11_α
                                                                                        jmp   n1013_suspend_α
n1011_op11_β:
                                                                                        jmp   n1001_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1012_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1060_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1060_21
.Lx1060_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx1060_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1060_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1060_23
.Lx1060_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx1060_23:
                        mov              rdi, qword ptr [rip + .Lx1060_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1060_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1060_3]
                        lea              rdx, [rip + .Lx1060_4]
                                                                                        jmp   rax
.Lx1060_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1060_2
.Lx1060_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1060_2
.Lx1060_1:
                        call             rt_faildescr@PLT
.Lx1060_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n992_op11_α
                                                                                        jmp   n1014_op19_α
n1012_call_proc_staged_β:
                                                                                        jmp   n992_op11_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n1013_suspend_α:
                        lea              rax, [rip + n1013_suspend_β]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_shift_stack$2F3_γ
n1013_suspend_β:
                                                                                        jmp   n1001_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1014_op19_α:
                                                                                        jmp   n1015_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n1016_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n1017_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1018_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_call_proc_staged_α:
                        mov              qword ptr [rbp + 480], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1071_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1071_21
.Lx1071_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx1071_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1071_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1071_23
.Lx1071_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx1071_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1071_24
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx1071_25
.Lx1071_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx1071_25:
                        mov              edi, 11
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1071_1
                        lea              rcx, [rip + .Lx1071_3]
                        lea              rdx, [rip + .Lx1071_4]
                                                                                        jmp   rax
.Lx1071_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx1071_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1071_2
.Lx1071_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1071_2
.Lx1071_4:
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx1071_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1071_2
.Lx1071_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1071_2
.Lx1071_1:
                        call             rt_faildescr@PLT
.Lx1071_2:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n1001_op11_α
                                                                                        jmp   n1019_suspend_α
n1018_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx1071_0:
                        .quad            .Lx1071_0_s
.Lx1071_0_s:
                        .string          "shift_stack/3"
#-----------------------------------------------------------------------------------------------------------------------
n1019_suspend_α:
                        lea              rax, [rip + n1019_suspend_β]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_shift_stack$2F3_γ
n1019_suspend_β:
                                                                                        jmp   n1018_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F3_β:
                                                                                        jmp   qword ptr [rbp + 976]
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_shift_stack$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1080]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F3_ω:
                        mov              rax, [rbp + 1088]
                        lea              rsp, [rbp + 1104]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shift_stack$2F1_α
proc_shift_stack$2F1_α:
                        .global          proc_shift_stack$2F1_α
                        .global          proc_shift_stack$2F1_β
                        .global          proc_shift_stack$2F1_γ
                        .global          proc_shift_stack$2F1_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_shift_stack$2F1_α_body:
                        lea              rax, [rip + n1088_suspend_β]
                        mov              qword ptr [rbp + 464], rax
#-----------------------------------------------------------------------------------------------------------------------
n1074_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1089_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1089_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1089_101
.Lx1089_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1089_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_shift_stack$2F1_ω
                                                                                        jmp   n1075_var_ref_α
n1074_op11_β:
                                                                                        jmp   proc_shift_stack$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1075_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1076_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1076_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1077_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx1094_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1094_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_41
                        cmp              esi, 1
                                                                                        jne   .Lx1094_55
                        mov              r8, rax
                                                                                        jmp   .Lx1094_40
.Lx1094_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1094_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1094_41
                        mov              r8, rax
                                                                                        jmp   .Lx1094_40
.Lx1094_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1094_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_41
                        cmp              rax, r8
                                                                                        je    .Lx1094_41
                        mov              r8, rax
                                                                                        jmp   .Lx1094_40
.Lx1094_41:
                        lea              r9, [rbp + 416]
.Lx1094_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1094_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_43
                        cmp              esi, 1
                                                                                        jne   .Lx1094_57
                        mov              r9, rax
                                                                                        jmp   .Lx1094_42
.Lx1094_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1094_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1094_43
                        mov              r9, rax
                                                                                        jmp   .Lx1094_42
.Lx1094_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1094_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_43
                        cmp              rax, r9
                                                                                        je    .Lx1094_43
                        mov              r9, rax
                                                                                        jmp   .Lx1094_42
.Lx1094_43:
                        cmp              r8, r9
                                                                                        je    .Lx1094_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1094_44
                        cmp              eax, 99
                                                                                        je    .Lx1094_44
                        cmp              eax, 13
                                                                                        jne   .Lx1094_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1094_44
                                                                                        jmp   .Lx1094_45
.Lx1094_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1094_53
                        cmp              eax, 99
                                                                                        je    .Lx1094_53
                        cmp              eax, 13
                                                                                        jne   .Lx1094_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1094_53
                                                                                        jmp   .Lx1094_46
.Lx1094_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1094_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1094_53
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
                                                                                        jmp   .Lx1094_51
.Lx1094_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1094_47
                        cmp              eax, 99
                                                                                        je    .Lx1094_47
                        cmp              eax, 13
                                                                                        jne   .Lx1094_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1094_47
                                                                                        jmp   .Lx1094_48
.Lx1094_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1094_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1094_53
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
                                                                                        jmp   .Lx1094_51
.Lx1094_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1094_49
                        cmp              edx, 14
                                                                                        je    .Lx1094_53
                                                                                        jmp   .Lx1094_52
.Lx1094_49:
                        cmp              edx, 14
                                                                                        je    .Lx1094_52
                        cmp              ecx, 7
                                                                                        je    .Lx1094_53
                        cmp              edx, 7
                                                                                        je    .Lx1094_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1094_50
                        cmp              edx, 6
                                                                                        jne   .Lx1094_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1094_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1094_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1094_51
                                                                                        jmp   .Lx1094_52
.Lx1094_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1094_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1094_53
.Lx1094_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1094_54
.Lx1094_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1094_54
.Lx1094_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1094_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n1079_op11_α
                                                                                        jmp   n1078_var_ref_α
n1077_op11_β:
                                                                                        jmp   n1079_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1078_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1080_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1079_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_shift_stack$2F1_ω
                                                                                        jmp   proc_shift_stack$2F1_ω
n1079_op11_β:
                                                                                        jmp   proc_shift_stack$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1080_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n1081_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1081_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1101_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1101_21
.Lx1101_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx1101_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1101_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1101_23
.Lx1101_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx1101_23:
                        mov              rdi, qword ptr [rip + .Lx1101_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1101_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1101_3]
                        lea              rdx, [rip + .Lx1101_4]
                                                                                        jmp   rax
.Lx1101_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1101_2
.Lx1101_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1101_2
.Lx1101_1:
                        call             rt_faildescr@PLT
.Lx1101_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1079_op11_α
                                                                                        jmp   n1082_var_ref_α
n1081_call_proc_staged_β:
                                                                                        jmp   n1079_op11_α
.Lx1101_0:
                        .quad            .Lx1101_0_s
.Lx1101_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n1082_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n1083_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1083_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1084_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1085_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1085_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1109_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1109_21
.Lx1109_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx1109_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1109_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1109_23
.Lx1109_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx1109_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1109_24
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx1109_25
.Lx1109_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx1109_25:
                        mov              edi, 11
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1109_1
                        lea              rcx, [rip + .Lx1109_3]
                        lea              rdx, [rip + .Lx1109_4]
                                                                                        jmp   rax
.Lx1109_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx1109_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1109_2
.Lx1109_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1109_2
.Lx1109_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx1109_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1109_2
.Lx1109_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1109_2
.Lx1109_1:
                        call             rt_faildescr@PLT
.Lx1109_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1081_call_proc_staged_β
                                                                                        jmp   n1086_var_ref_α
n1085_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx1109_0:
                        .quad            .Lx1109_0_s
.Lx1109_0_s:
                        .string          "shift_stack/3"
#-----------------------------------------------------------------------------------------------------------------------
n1086_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n1087_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1087_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn1113:             .string          "$tt_nonvar"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1113]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1085_call_proc_staged_β
                                                                                        jmp   n1088_suspend_α
n1087_op11_β:
                                                                                        jmp   n1085_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1088_suspend_α:
                        lea              rax, [rip + n1088_suspend_β]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_shift_stack$2F1_γ
n1088_suspend_β:
                                                                                        jmp   n1085_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F1_β:
                                                                                        jmp   qword ptr [rbp + 464]
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_shift_stack$2F1_res]
                        push             rax
                        mov              rax, [rbp + 536]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_stack$2F1_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n1119_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1116_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1121_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1121_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1121_101
.Lx1121_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1121_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1117_lit_string_α
n1116_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1117_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1122_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1118_call_proc_staged_α
.Lx1122_0:
                        .quad            .Lx1122_0_s
.Lx1122_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n1118_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1124_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1124_21
.Lx1124_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1124_21:
                        mov              rdi, qword ptr [rip + .Lx1124_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1124_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1124_3]
                        lea              rdx, [rip + .Lx1124_4]
                                                                                        jmp   rax
.Lx1124_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1124_2
.Lx1124_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1124_2
.Lx1124_1:
                        call             rt_faildescr@PLT
.Lx1124_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1120_op11_α
                                                                                        jmp   n1119_suspend_α
n1118_call_proc_staged_β:
                                                                                        jmp   n1120_op11_α
.Lx1124_0:
                        .quad            .Lx1124_0_s
.Lx1124_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1119_suspend_α:
                        lea              rax, [rip + n1119_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n1119_suspend_β:
                                                                                        jmp   n1118_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1120_op11_α:
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
n1120_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
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
                        lea              rax, [rip + n1139_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1128_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1140_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1140_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1140_101
.Lx1140_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1140_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n1129_lit_string_α
n1128_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1129_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1141_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1130_lit_string_α
.Lx1141_0:
                        .quad            .Lx1141_0_s
.Lx1141_0_s:
                        .string          "test_cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n1130_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1131_lit_string_α
.Lx1142_0:
                        .quad            .Lx1142_0_s
.Lx1142_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1131_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1132_lit_string_α
.Lx1143_0:
                        .quad            .Lx1143_0_s
.Lx1143_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1132_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1133_lit_integer_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          "test_cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n1133_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1134_op11_α
.Lx1145_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1134_op11_α:
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
                                                                                        jmp   n1135_lit_string_α
n1134_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1147_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1136_op11_α
.Lx1147_0:
                        .quad            .Lx1147_0_s
.Lx1147_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1136_op11_α:
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
                                                                                        je    n1138_op11_α
                                                                                        jmp   n1137_call_proc_staged_α
n1136_op11_β:
                                                                                        jmp   n1138_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1150_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1150_21
.Lx1150_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1150_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1150_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1150_23
.Lx1150_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx1150_23:
                        mov              rdi, qword ptr [rip + .Lx1150_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1150_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1150_3]
                        lea              rdx, [rip + .Lx1150_4]
                                                                                        jmp   rax
.Lx1150_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1150_2
.Lx1150_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1150_2
.Lx1150_1:
                        call             rt_faildescr@PLT
.Lx1150_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1138_op11_α
                                                                                        jmp   n1139_suspend_α
n1137_call_proc_staged_β:
                                                                                        jmp   n1138_op11_α
.Lx1150_0:
                        .quad            .Lx1150_0_s
.Lx1150_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1138_op11_α:
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
n1138_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1139_suspend_α:
                        lea              rax, [rip + n1139_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n1139_suspend_β:
                                                                                        jmp   n1137_call_proc_staged_β
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
                        .globl           proc_t_true$2F1_α
proc_t_true$2F1_α:
                        .global          proc_t_true$2F1_α
                        .global          proc_t_true$2F1_β
                        .global          proc_t_true$2F1_γ
                        .global          proc_t_true$2F1_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_t_true$2F1_α_body:
                        lea              rax, [rip + n1163_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1154_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1164_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1164_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1164_101
.Lx1164_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1164_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_true$2F1_ω
                                                                                        jmp   n1155_var_ref_α
n1154_op11_β:
                                                                                        jmp   proc_t_true$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n1156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx1169_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1169_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1169_41
                        cmp              esi, 1
                                                                                        jne   .Lx1169_55
                        mov              r8, rax
                                                                                        jmp   .Lx1169_40
.Lx1169_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1169_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1169_41
                        mov              r8, rax
                                                                                        jmp   .Lx1169_40
.Lx1169_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1169_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1169_41
                        cmp              rax, r8
                                                                                        je    .Lx1169_41
                        mov              r8, rax
                                                                                        jmp   .Lx1169_40
.Lx1169_41:
                        lea              r9, [rbp + 352]
.Lx1169_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1169_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1169_43
                        cmp              esi, 1
                                                                                        jne   .Lx1169_57
                        mov              r9, rax
                                                                                        jmp   .Lx1169_42
.Lx1169_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1169_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1169_43
                        mov              r9, rax
                                                                                        jmp   .Lx1169_42
.Lx1169_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1169_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1169_43
                        cmp              rax, r9
                                                                                        je    .Lx1169_43
                        mov              r9, rax
                                                                                        jmp   .Lx1169_42
.Lx1169_43:
                        cmp              r8, r9
                                                                                        je    .Lx1169_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1169_44
                        cmp              eax, 99
                                                                                        je    .Lx1169_44
                        cmp              eax, 13
                                                                                        jne   .Lx1169_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1169_44
                                                                                        jmp   .Lx1169_45
.Lx1169_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1169_53
                        cmp              eax, 99
                                                                                        je    .Lx1169_53
                        cmp              eax, 13
                                                                                        jne   .Lx1169_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1169_53
                                                                                        jmp   .Lx1169_46
.Lx1169_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1169_53
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
                                                                                        jmp   .Lx1169_51
.Lx1169_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1169_47
                        cmp              eax, 99
                                                                                        je    .Lx1169_47
                        cmp              eax, 13
                                                                                        jne   .Lx1169_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1169_47
                                                                                        jmp   .Lx1169_48
.Lx1169_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1169_53
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
                                                                                        jmp   .Lx1169_51
.Lx1169_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1169_49
                        cmp              edx, 14
                                                                                        je    .Lx1169_53
                                                                                        jmp   .Lx1169_52
.Lx1169_49:
                        cmp              edx, 14
                                                                                        je    .Lx1169_52
                        cmp              ecx, 7
                                                                                        je    .Lx1169_53
                        cmp              edx, 7
                                                                                        je    .Lx1169_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1169_50
                        cmp              edx, 6
                                                                                        jne   .Lx1169_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1169_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1169_51
                                                                                        jmp   .Lx1169_52
.Lx1169_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1169_53
.Lx1169_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1169_54
.Lx1169_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1169_54
.Lx1169_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1169_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n1159_op11_α
                                                                                        jmp   n1158_call_proc_staged_α
n1157_op11_β:
                                                                                        jmp   n1159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx1171_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1171_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1171_3]
                        lea              rdx, [rip + .Lx1171_4]
                                                                                        jmp   rax
.Lx1171_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1171_2
.Lx1171_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1171_2
.Lx1171_1:
                        call             rt_faildescr@PLT
.Lx1171_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1159_op11_α
                                                                                        jmp   n1160_call_proc_staged_α
n1158_call_proc_staged_β:
                                                                                        jmp   n1159_op11_α
.Lx1171_0:
                        .quad            .Lx1171_0_s
.Lx1171_0_s:
                        .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n1159_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_true$2F1_ω
                                                                                        jmp   proc_t_true$2F1_ω
n1159_op11_β:
                                                                                        jmp   proc_t_true$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1160_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx1174_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1174_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1174_3]
                        lea              rdx, [rip + .Lx1174_4]
                                                                                        jmp   rax
.Lx1174_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1174_2
.Lx1174_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1174_2
.Lx1174_1:
                        call             rt_faildescr@PLT
.Lx1174_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n1158_call_proc_staged_β
                                                                                        jmp   n1161_var_ref_α
n1160_call_proc_staged_β:
                                                                                        jmp   n1158_call_proc_staged_β
.Lx1174_0:
                        .quad            .Lx1174_0_s
.Lx1174_0_s:
                        .string          "trim_stacks/0"
#-----------------------------------------------------------------------------------------------------------------------
n1161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n1162_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1162_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1178_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1178_21
.Lx1178_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx1178_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1178_1
                        lea              rcx, [rip + .Lx1178_3]
                        lea              rdx, [rip + .Lx1178_4]
                                                                                        jmp   rax
.Lx1178_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx1178_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1178_2
.Lx1178_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1178_2
.Lx1178_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx1178_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1178_2
.Lx1178_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1178_2
.Lx1178_1:
                        call             rt_faildescr@PLT
.Lx1178_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1159_op11_α
                                                                                        jmp   n1163_suspend_α
n1162_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx1178_0:
                        .quad            .Lx1178_0_s
.Lx1178_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n1163_suspend_α:
                        lea              rax, [rip + n1163_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t_true$2F1_γ
n1163_suspend_β:
                                                                                        jmp   n1160_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_t_true$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t_true$2F1_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_t_true$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t_true$2F1_res]
                        push             rax
                        mov              rax, [rbp + 440]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t_true$2F1_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t_false$2F1_α
proc_t_false$2F1_α:
                        .global          proc_t_false$2F1_α
                        .global          proc_t_false$2F1_β
                        .global          proc_t_false$2F1_γ
                        .global          proc_t_false$2F1_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 352
                        call             rt_jmp_frame_lexprep2@PLT
proc_t_false$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1181_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1190_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1190_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1190_101
.Lx1190_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1190_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_false$2F1_ω
                                                                                        jmp   n1182_var_ref_α
n1181_op11_β:
                                                                                        jmp   proc_t_false$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n1183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n1184_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx1195_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1195_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1195_41
                        cmp              esi, 1
                                                                                        jne   .Lx1195_55
                        mov              r8, rax
                                                                                        jmp   .Lx1195_40
.Lx1195_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1195_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1195_41
                        mov              r8, rax
                                                                                        jmp   .Lx1195_40
.Lx1195_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1195_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1195_41
                        cmp              rax, r8
                                                                                        je    .Lx1195_41
                        mov              r8, rax
                                                                                        jmp   .Lx1195_40
.Lx1195_41:
                        lea              r9, [rbp + 272]
.Lx1195_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1195_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1195_43
                        cmp              esi, 1
                                                                                        jne   .Lx1195_57
                        mov              r9, rax
                                                                                        jmp   .Lx1195_42
.Lx1195_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1195_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1195_43
                        mov              r9, rax
                                                                                        jmp   .Lx1195_42
.Lx1195_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1195_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1195_43
                        cmp              rax, r9
                                                                                        je    .Lx1195_43
                        mov              r9, rax
                                                                                        jmp   .Lx1195_42
.Lx1195_43:
                        cmp              r8, r9
                                                                                        je    .Lx1195_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1195_44
                        cmp              eax, 99
                                                                                        je    .Lx1195_44
                        cmp              eax, 13
                                                                                        jne   .Lx1195_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1195_44
                                                                                        jmp   .Lx1195_45
.Lx1195_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1195_53
                        cmp              eax, 99
                                                                                        je    .Lx1195_53
                        cmp              eax, 13
                                                                                        jne   .Lx1195_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1195_53
                                                                                        jmp   .Lx1195_46
.Lx1195_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1195_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1195_53
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
                                                                                        jmp   .Lx1195_51
.Lx1195_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1195_47
                        cmp              eax, 99
                                                                                        je    .Lx1195_47
                        cmp              eax, 13
                                                                                        jne   .Lx1195_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1195_47
                                                                                        jmp   .Lx1195_48
.Lx1195_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1195_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1195_53
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
                                                                                        jmp   .Lx1195_51
.Lx1195_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1195_49
                        cmp              edx, 14
                                                                                        je    .Lx1195_53
                                                                                        jmp   .Lx1195_52
.Lx1195_49:
                        cmp              edx, 14
                                                                                        je    .Lx1195_52
                        cmp              ecx, 7
                                                                                        je    .Lx1195_53
                        cmp              edx, 7
                                                                                        je    .Lx1195_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1195_50
                        cmp              edx, 6
                                                                                        jne   .Lx1195_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1195_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1195_51
                                                                                        jmp   .Lx1195_52
.Lx1195_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1195_53
.Lx1195_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1195_54
.Lx1195_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1195_54
.Lx1195_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1195_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n1186_op11_α
                                                                                        jmp   n1185_call_proc_staged_α
n1184_op11_β:
                                                                                        jmp   n1186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx1197_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1197_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1197_3]
                        lea              rdx, [rip + .Lx1197_4]
                                                                                        jmp   rax
.Lx1197_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1197_2
.Lx1197_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1197_2
.Lx1197_1:
                        call             rt_faildescr@PLT
.Lx1197_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n1186_op11_α
                                                                                        jmp   n1187_call_proc_staged_α
n1185_call_proc_staged_β:
                                                                                        jmp   n1186_op11_α
.Lx1197_0:
                        .quad            .Lx1197_0_s
.Lx1197_0_s:
                        .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n1186_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_false$2F1_ω
                                                                                        jmp   proc_t_false$2F1_ω
n1186_op11_β:
                                                                                        jmp   proc_t_false$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1187_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx1200_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1200_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1200_3]
                        lea              rdx, [rip + .Lx1200_4]
                                                                                        jmp   rax
.Lx1200_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1200_2
.Lx1200_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1200_2
.Lx1200_1:
                        call             rt_faildescr@PLT
.Lx1200_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n1185_call_proc_staged_β
                                                                                        jmp   n1188_var_ref_α
n1187_call_proc_staged_β:
                                                                                        jmp   n1185_call_proc_staged_β
.Lx1200_0:
                        .quad            .Lx1200_0_s
.Lx1200_0_s:
                        .string          "trim_stacks/0"
#-----------------------------------------------------------------------------------------------------------------------
n1188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n1189_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1204_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1204_21
.Lx1204_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx1204_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1204_1
                        lea              rcx, [rip + .Lx1204_3]
                        lea              rdx, [rip + .Lx1204_4]
                                                                                        jmp   rax
.Lx1204_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx1204_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1204_2
.Lx1204_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1204_2
.Lx1204_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx1204_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1204_2
.Lx1204_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1204_2
.Lx1204_1:
                        call             rt_faildescr@PLT
.Lx1204_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1186_op11_α
                                                                                        jmp   n1186_op11_α
n1189_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx1204_0:
                        .quad            .Lx1204_0_s
.Lx1204_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
proc_t_false$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t_false$2F1_β:
                                                                                        jmp   proc_t_false$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_t_false$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t_false$2F1_res]
                        push             rax
                        mov              rax, [rbp + 360]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t_false$2F1_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1208_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1205_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1210_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1210_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1210_101
.Lx1210_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1210_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n1206_lit_string_α
n1205_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1206_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1211_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1207_call_proc_staged_α
.Lx1211_0:
                        .quad            .Lx1211_0_s
.Lx1211_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n1207_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1213_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1213_21
.Lx1213_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1213_21:
                        mov              rdi, qword ptr [rip + .Lx1213_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1213_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1213_3]
                        lea              rdx, [rip + .Lx1213_4]
                                                                                        jmp   rax
.Lx1213_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1213_2
.Lx1213_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1213_2
.Lx1213_1:
                        call             rt_faildescr@PLT
.Lx1213_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1209_op11_α
                                                                                        jmp   n1208_suspend_α
n1207_call_proc_staged_β:
                                                                                        jmp   n1209_op11_α
.Lx1213_0:
                        .quad            .Lx1213_0_s
.Lx1213_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1208_suspend_α:
                        lea              rax, [rip + n1208_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1208_suspend_β:
                                                                                        jmp   n1207_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1209_op11_α:
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
n1209_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n1223_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1217_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1224_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1224_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1224_101
.Lx1224_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1224_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n1218_lit_string_α
n1217_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1218_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1225_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1219_lit_string_α
.Lx1225_0:
                        .quad            .Lx1225_0_s
.Lx1225_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1219_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1220_op11_α
.Lx1226_0:
                        .quad            .Lx1226_0_s
.Lx1226_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1220_op11_α:
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
                                                                                        je    n1222_op11_α
                                                                                        jmp   n1221_call_proc_staged_α
n1220_op11_β:
                                                                                        jmp   n1222_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1221_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1229_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1229_21
.Lx1229_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1229_21:
                        mov              rdi, qword ptr [rip + .Lx1229_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1229_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1229_3]
                        lea              rdx, [rip + .Lx1229_4]
                                                                                        jmp   rax
.Lx1229_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1229_2
.Lx1229_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1229_2
.Lx1229_1:
                        call             rt_faildescr@PLT
.Lx1229_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1222_op11_α
                                                                                        jmp   n1223_suspend_α
n1221_call_proc_staged_β:
                                                                                        jmp   n1222_op11_α
.Lx1229_0:
                        .quad            .Lx1229_0_s
.Lx1229_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1222_op11_α:
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
n1222_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1223_suspend_α:
                        lea              rax, [rip + n1223_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1223_suspend_β:
                                                                                        jmp   n1221_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
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
                        mov              esi, 3360
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
                        mov              esi, 5504
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tshift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_tshift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "lshift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_lshift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "lshift/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_lshift$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "test_cleanup_shift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_test_cleanup_shift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "t_except/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_t_except$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1184
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "t_cut/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_t_cut$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "gshift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gshift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "shift_stack/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_shift_stack$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1072
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "shift_stack/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_shift_stack$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "t_true/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_t_true$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "t_false/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_t_false$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
n1233_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n1234_call_proc_staged_α
.Lx1235_0:
                        .quad            .Lx1235_0_s
.Lx1235_0_s:
                        .string          "cleanup_shift"
#-----------------------------------------------------------------------------------------------------------------------
n1234_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1237_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1237_21
.Lx1237_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx1237_21:
                        mov              rdi, qword ptr [rip + .Lx1237_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1237_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1237_3]
                        lea              rdx, [rip + .Lx1237_4]
                                                                                        jmp   rax
.Lx1237_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1237_2
.Lx1237_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1237_2
.Lx1237_1:
                        call             rt_faildescr@PLT
.Lx1237_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n1234_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1237_0:
                        .quad            .Lx1237_0_s
.Lx1237_0_s:
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
