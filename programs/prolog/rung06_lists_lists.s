                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse$2F2_α
proc_reverse$2F2_α:
                        .global          proc_reverse$2F2_α
                        .global          proc_reverse$2F2_β
                        .global          proc_reverse$2F2_γ
                        .global          proc_reverse$2F2_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse$2F2_α_body:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx36_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx36_101
.Lx36_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx36_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n3_lit_string_α
.Lx39_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n4_op11_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx41_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx41_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_111
                        cmp              esi, 1
                                                                                        jne   .Lx41_112
                        mov              r8, rax
                                                                                        jmp   .Lx41_110
.Lx41_112:
                        cmp              esi, 2
                                                                                        jne   .Lx41_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_111
                        mov              r8, rax
                                                                                        jmp   .Lx41_110
.Lx41_113:
                        cmp              eax, 13
                                                                                        jne   .Lx41_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_111
                        cmp              rax, r8
                                                                                        je    .Lx41_111
                        mov              r8, rax
                                                                                        jmp   .Lx41_110
.Lx41_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_114
                        cmp              eax, 99
                                                                                        je    .Lx41_114
                        cmp              eax, 13
                                                                                        jne   .Lx41_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx41_114
                                                                                        jmp   .Lx41_118
.Lx41_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx41_115
                        cmp              eax, 6
                                                                                        je    .Lx41_114
                        cmp              eax, 1
                                                                                        jne   .Lx41_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx41_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx41_114
                                                                                        jmp   .Lx41_116
.Lx41_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx41_117
.Lx41_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx41_117
.Lx41_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx41_117:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n9_op11_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n10_lit_integer_α
.Lx47_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lx48_2]
                                                                                        jmp   .Lx48_3
.Lx48_2:
                        .quad            .Lx48_2_s
.Lx48_2_s:
                        .string          "[]"
.Lx48_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_var_ref_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n13_op11_α
.Lx49_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx53_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_111
                        cmp              esi, 1
                                                                                        jne   .Lx53_112
                        mov              r8, rax
                                                                                        jmp   .Lx53_110
.Lx53_112:
                        cmp              esi, 2
                                                                                        jne   .Lx53_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_111
                        mov              r8, rax
                                                                                        jmp   .Lx53_110
.Lx53_113:
                        cmp              eax, 13
                                                                                        jne   .Lx53_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_111
                        cmp              rax, r8
                                                                                        je    .Lx53_111
                        mov              r8, rax
                                                                                        jmp   .Lx53_110
.Lx53_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_114
                        cmp              eax, 99
                                                                                        je    .Lx53_114
                        cmp              eax, 13
                                                                                        jne   .Lx53_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx53_114
                                                                                        jmp   .Lx53_118
.Lx53_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx53_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx53_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx53_115
                                                                                        jmp   .Lx53_114
.Lx53_119:
                        cmp              eax, 6
                                                                                        jne   .Lx53_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx53_114
                                                                                        jmp   .Lx53_115
.Lx53_120:
                        cmp              eax, 1
                                                                                        jne   .Lx53_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx53_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx53_114
                                                                                        jmp   .Lx53_115
.Lx53_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx53_117
.Lx53_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx53_117
.Lx53_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx53_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n17_op11_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
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
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   proc_reverse$2F2_ω
n16_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx58_2]
                                                                                        jmp   .Lx58_3
.Lx58_2:
                        .quad            .Lx58_2_s
.Lx58_2_s:
                        .string          "[]"
.Lx58_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n19_suspend_α
n17_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n19_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx65_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_61
                        cmp              esi, 1
                                                                                        jne   .Lx65_62
                        mov              r8, rax
                                                                                        jmp   .Lx65_60
.Lx65_62:
                        cmp              esi, 2
                                                                                        jne   .Lx65_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_61
                        mov              r8, rax
                                                                                        jmp   .Lx65_60
.Lx65_63:
                        cmp              eax, 13
                                                                                        jne   .Lx65_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_61
                        cmp              rax, r8
                                                                                        je    .Lx65_61
                        mov              r8, rax
                                                                                        jmp   .Lx65_60
.Lx65_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_80
                        cmp              eax, 99
                                                                                        je    .Lx65_80
                        cmp              eax, 13
                                                                                        jne   .Lx65_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx65_80
                                                                                        jmp   .Lx65_74
.Lx65_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx65_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx65_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx65_73
                        lea              r9, [rbp + 608]
.Lx65_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_65
                        cmp              esi, 1
                                                                                        jne   .Lx65_66
                        mov              r9, rax
                                                                                        jmp   .Lx65_64
.Lx65_66:
                        cmp              esi, 2
                                                                                        jne   .Lx65_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_65
                        mov              r9, rax
                                                                                        jmp   .Lx65_64
.Lx65_67:
                        cmp              eax, 13
                                                                                        jne   .Lx65_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_65
                        cmp              rax, r9
                                                                                        je    .Lx65_65
                        mov              r9, rax
                                                                                        jmp   .Lx65_64
.Lx65_65:
                        lea              rcx, [rbp + 624]
.Lx65_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx65_69
                        cmp              esi, 1
                                                                                        jne   .Lx65_70
                        mov              rcx, rax
                                                                                        jmp   .Lx65_68
.Lx65_70:
                        cmp              esi, 2
                                                                                        jne   .Lx65_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_69
                        mov              rcx, rax
                                                                                        jmp   .Lx65_68
.Lx65_71:
                        cmp              eax, 13
                                                                                        jne   .Lx65_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx65_69
                        cmp              rax, rcx
                                                                                        je    .Lx65_69
                        mov              rcx, rax
                                                                                        jmp   .Lx65_68
.Lx65_69:
                        cmp              r9, rcx
                                                                                        je    .Lx65_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_75
                        cmp              eax, 99
                                                                                        je    .Lx65_75
                        cmp              eax, 13
                                                                                        jne   .Lx65_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx65_75
                                                                                        jmp   .Lx65_72
.Lx65_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_76
                        cmp              eax, 99
                                                                                        je    .Lx65_76
                        cmp              eax, 13
                                                                                        jne   .Lx65_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx65_76
                                                                                        jmp   .Lx65_72
.Lx65_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx65_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx65_72
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
                                                                                        jmp   .Lx65_77
.Lx65_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx65_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx65_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx65_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx65_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx65_72
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
                        lea              r9, [rbp + 608]
.Lx65_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_82
                        cmp              esi, 1
                                                                                        jne   .Lx65_83
                        mov              r9, rax
                                                                                        jmp   .Lx65_81
.Lx65_83:
                        cmp              esi, 2
                                                                                        jne   .Lx65_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_82
                        mov              r9, rax
                                                                                        jmp   .Lx65_81
.Lx65_84:
                        cmp              eax, 13
                                                                                        jne   .Lx65_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_82
                        cmp              rax, r9
                                                                                        je    .Lx65_82
                        mov              r9, rax
                                                                                        jmp   .Lx65_81
.Lx65_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_85
                        cmp              eax, 99
                                                                                        je    .Lx65_85
                        cmp              eax, 13
                                                                                        jne   .Lx65_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx65_85
                                                                                        jmp   .Lx65_86
.Lx65_85:
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
                                                                                        jmp   .Lx65_87
.Lx65_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx65_87:
                        lea              rcx, [rbp + 624]
.Lx65_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx65_89
                        cmp              esi, 1
                                                                                        jne   .Lx65_90
                        mov              rcx, rax
                                                                                        jmp   .Lx65_88
.Lx65_90:
                        cmp              esi, 2
                                                                                        jne   .Lx65_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_89
                        mov              rcx, rax
                                                                                        jmp   .Lx65_88
.Lx65_91:
                        cmp              eax, 13
                                                                                        jne   .Lx65_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx65_89
                        cmp              rax, rcx
                                                                                        je    .Lx65_89
                        mov              rcx, rax
                                                                                        jmp   .Lx65_88
.Lx65_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_92
                        cmp              eax, 99
                                                                                        je    .Lx65_92
                        cmp              eax, 13
                                                                                        jne   .Lx65_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx65_92
                                                                                        jmp   .Lx65_93
.Lx65_92:
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
                                                                                        jmp   .Lx65_94
.Lx65_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx65_94:
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
                                                                                        jmp   .Lx65_77
.Lx65_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx65_77
.Lx65_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx65_77:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n22_var_ref_α
n21_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx70_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx70_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx70_41
                        cmp              esi, 1
                                                                                        jne   .Lx70_55
                        mov              r8, rax
                                                                                        jmp   .Lx70_40
.Lx70_55:
                        cmp              esi, 2
                                                                                        jne   .Lx70_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx70_41
                        mov              r8, rax
                                                                                        jmp   .Lx70_40
.Lx70_56:
                        cmp              eax, 13
                                                                                        jne   .Lx70_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx70_41
                        cmp              rax, r8
                                                                                        je    .Lx70_41
                        mov              r8, rax
                                                                                        jmp   .Lx70_40
.Lx70_41:
                        lea              r9, [rbp + 512]
.Lx70_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx70_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx70_43
                        cmp              esi, 1
                                                                                        jne   .Lx70_57
                        mov              r9, rax
                                                                                        jmp   .Lx70_42
.Lx70_57:
                        cmp              esi, 2
                                                                                        jne   .Lx70_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx70_43
                        mov              r9, rax
                                                                                        jmp   .Lx70_42
.Lx70_58:
                        cmp              eax, 13
                                                                                        jne   .Lx70_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx70_43
                        cmp              rax, r9
                                                                                        je    .Lx70_43
                        mov              r9, rax
                                                                                        jmp   .Lx70_42
.Lx70_43:
                        cmp              r8, r9
                                                                                        je    .Lx70_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx70_44
                        cmp              eax, 99
                                                                                        je    .Lx70_44
                        cmp              eax, 13
                                                                                        jne   .Lx70_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx70_44
                                                                                        jmp   .Lx70_45
.Lx70_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx70_53
                        cmp              eax, 99
                                                                                        je    .Lx70_53
                        cmp              eax, 13
                                                                                        jne   .Lx70_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx70_53
                                                                                        jmp   .Lx70_46
.Lx70_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx70_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx70_53
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
                                                                                        jmp   .Lx70_51
.Lx70_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx70_47
                        cmp              eax, 99
                                                                                        je    .Lx70_47
                        cmp              eax, 13
                                                                                        jne   .Lx70_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx70_47
                                                                                        jmp   .Lx70_48
.Lx70_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx70_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx70_53
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
                                                                                        jmp   .Lx70_51
.Lx70_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx70_49
                        cmp              edx, 14
                                                                                        je    .Lx70_53
                                                                                        jmp   .Lx70_52
.Lx70_49:
                        cmp              edx, 14
                                                                                        je    .Lx70_52
                        cmp              ecx, 7
                                                                                        je    .Lx70_53
                        cmp              edx, 7
                                                                                        je    .Lx70_53
                        cmp              ecx, 6
                                                                                        jne   .Lx70_50
                        cmp              edx, 6
                                                                                        jne   .Lx70_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx70_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx70_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx70_51
                                                                                        jmp   .Lx70_52
.Lx70_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx70_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx70_53
.Lx70_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx70_54
.Lx70_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx70_54
.Lx70_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx70_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n25_var_ref_α
n24_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx76_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx76_21
.Lx76_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx76_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx76_22
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx76_23
.Lx76_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx76_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx76_1
                        lea              rcx, [rip + .Lx76_3]
                        lea              rdx, [rip + .Lx76_4]
                                                                                        jmp   rax
.Lx76_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx76_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx76_2
.Lx76_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx76_2
.Lx76_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx76_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx76_2
.Lx76_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx76_2
.Lx76_1:
                        call             rt_faildescr@PLT
.Lx76_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n28_var_ref_α
n27_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "reverse/2"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n30_var_ref_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n32_op11_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n33_var_ref_α
n32_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n34_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx87_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx87_21
.Lx87_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx87_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx87_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx87_23
.Lx87_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx87_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx87_24
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx87_25
.Lx87_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx87_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx87_1
                        lea              rcx, [rip + .Lx87_3]
                        lea              rdx, [rip + .Lx87_4]
                                                                                        jmp   rax
.Lx87_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx87_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx87_2
.Lx87_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx87_2
.Lx87_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx87_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx87_2
.Lx87_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx87_2
.Lx87_1:
                        call             rt_faildescr@PLT
.Lx87_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n27_call_proc_staged_β
                                                                                        jmp   n35_suspend_α
n34_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n35_suspend_α:
                        lea              rax, [rip + n35_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n35_suspend_β:
                                                                                        jmp   n34_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1104]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_length$2F2_α
proc_length$2F2_α:
                        .global          proc_length$2F2_α
                        .global          proc_length$2F2_β
                        .global          proc_length$2F2_γ
                        .global          proc_length$2F2_ω
                        sub              rsp, 1120
                        mov              [rsp + 1096], rcx
                        mov              [rsp + 1104], rdx
                        mov              [rsp + 1112], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1088
                        call             rt_jmp_frame_lexprep2@PLT
proc_length$2F2_α_body:
                        lea              rax, [rip + n109_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx124_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx124_101
.Lx124_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx124_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n91_var_ref_α
n90_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n92_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n93_lit_string_α
.Lx127_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n94_op11_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx129_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx129_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx129_111
                        cmp              esi, 1
                                                                                        jne   .Lx129_112
                        mov              r8, rax
                                                                                        jmp   .Lx129_110
.Lx129_112:
                        cmp              esi, 2
                                                                                        jne   .Lx129_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx129_111
                        mov              r8, rax
                                                                                        jmp   .Lx129_110
.Lx129_113:
                        cmp              eax, 13
                                                                                        jne   .Lx129_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx129_111
                        cmp              rax, r8
                                                                                        je    .Lx129_111
                        mov              r8, rax
                                                                                        jmp   .Lx129_110
.Lx129_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx129_114
                        cmp              eax, 99
                                                                                        je    .Lx129_114
                        cmp              eax, 13
                                                                                        jne   .Lx129_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx129_114
                                                                                        jmp   .Lx129_118
.Lx129_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx129_115
                        cmp              eax, 6
                                                                                        je    .Lx129_114
                        cmp              eax, 1
                                                                                        jne   .Lx129_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx129_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx129_114
                                                                                        jmp   .Lx129_116
.Lx129_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx129_117
.Lx129_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx129_117
.Lx129_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx129_117:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n96_var_ref_α
                                                                                        jmp   n95_var_ref_α
n94_op11_β:
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n98_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n99_op11_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n100_lit_integer_α
.Lx135_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              rsi, qword ptr [rip + .Lx136_2]
                                                                                        jmp   .Lx136_3
.Lx136_2:
                        .quad            .Lx136_2_s
.Lx136_2_s:
                        .string          "[]"
.Lx136_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n102_op11_α
                                                                                        jmp   n101_var_ref_α
n99_op11_β:
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n103_op11_α
.Lx137_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n96_var_ref_α
n102_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx141_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx141_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx141_111
                        cmp              esi, 1
                                                                                        jne   .Lx141_112
                        mov              r8, rax
                                                                                        jmp   .Lx141_110
.Lx141_112:
                        cmp              esi, 2
                                                                                        jne   .Lx141_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx141_111
                        mov              r8, rax
                                                                                        jmp   .Lx141_110
.Lx141_113:
                        cmp              eax, 13
                                                                                        jne   .Lx141_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx141_111
                        cmp              rax, r8
                                                                                        je    .Lx141_111
                        mov              r8, rax
                                                                                        jmp   .Lx141_110
.Lx141_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx141_114
                        cmp              eax, 99
                                                                                        je    .Lx141_114
                        cmp              eax, 13
                                                                                        jne   .Lx141_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx141_114
                                                                                        jmp   .Lx141_118
.Lx141_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx141_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx141_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx141_115
                                                                                        jmp   .Lx141_114
.Lx141_119:
                        cmp              eax, 6
                                                                                        jne   .Lx141_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx141_114
                                                                                        jmp   .Lx141_115
.Lx141_120:
                        cmp              eax, 1
                                                                                        jne   .Lx141_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx141_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx141_114
                                                                                        jmp   .Lx141_115
.Lx141_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx141_117
.Lx141_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx141_117
.Lx141_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx141_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n106_op11_α
                                                                                        jmp   n105_var_ref_α
n103_op11_β:
                                                                                        jmp   n106_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n107_op11_α
.Lx142_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   proc_length$2F2_ω
n106_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n102_op11_α
                                                                                        jmp   n109_suspend_α
n107_op11_β:
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n109_suspend_α:
                        lea              rax, [rip + n109_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n109_suspend_β:
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n111_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx153_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_61
                        cmp              esi, 1
                                                                                        jne   .Lx153_62
                        mov              r8, rax
                                                                                        jmp   .Lx153_60
.Lx153_62:
                        cmp              esi, 2
                                                                                        jne   .Lx153_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_61
                        mov              r8, rax
                                                                                        jmp   .Lx153_60
.Lx153_63:
                        cmp              eax, 13
                                                                                        jne   .Lx153_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_61
                        cmp              rax, r8
                                                                                        je    .Lx153_61
                        mov              r8, rax
                                                                                        jmp   .Lx153_60
.Lx153_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_80
                        cmp              eax, 99
                                                                                        je    .Lx153_80
                        cmp              eax, 13
                                                                                        jne   .Lx153_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx153_80
                                                                                        jmp   .Lx153_74
.Lx153_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx153_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx153_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx153_73
                        lea              r9, [rbp + 512]
.Lx153_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_65
                        cmp              esi, 1
                                                                                        jne   .Lx153_66
                        mov              r9, rax
                                                                                        jmp   .Lx153_64
.Lx153_66:
                        cmp              esi, 2
                                                                                        jne   .Lx153_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_65
                        mov              r9, rax
                                                                                        jmp   .Lx153_64
.Lx153_67:
                        cmp              eax, 13
                                                                                        jne   .Lx153_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_65
                        cmp              rax, r9
                                                                                        je    .Lx153_65
                        mov              r9, rax
                                                                                        jmp   .Lx153_64
.Lx153_65:
                        lea              rcx, [rbp + 528]
.Lx153_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx153_69
                        cmp              esi, 1
                                                                                        jne   .Lx153_70
                        mov              rcx, rax
                                                                                        jmp   .Lx153_68
.Lx153_70:
                        cmp              esi, 2
                                                                                        jne   .Lx153_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_69
                        mov              rcx, rax
                                                                                        jmp   .Lx153_68
.Lx153_71:
                        cmp              eax, 13
                                                                                        jne   .Lx153_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx153_69
                        cmp              rax, rcx
                                                                                        je    .Lx153_69
                        mov              rcx, rax
                                                                                        jmp   .Lx153_68
.Lx153_69:
                        cmp              r9, rcx
                                                                                        je    .Lx153_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_75
                        cmp              eax, 99
                                                                                        je    .Lx153_75
                        cmp              eax, 13
                                                                                        jne   .Lx153_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx153_75
                                                                                        jmp   .Lx153_72
.Lx153_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_76
                        cmp              eax, 99
                                                                                        je    .Lx153_76
                        cmp              eax, 13
                                                                                        jne   .Lx153_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx153_76
                                                                                        jmp   .Lx153_72
.Lx153_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx153_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx153_72
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
                                                                                        jmp   .Lx153_77
.Lx153_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx153_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx153_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx153_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx153_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx153_72
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
                        lea              r9, [rbp + 512]
.Lx153_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_82
                        cmp              esi, 1
                                                                                        jne   .Lx153_83
                        mov              r9, rax
                                                                                        jmp   .Lx153_81
.Lx153_83:
                        cmp              esi, 2
                                                                                        jne   .Lx153_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_82
                        mov              r9, rax
                                                                                        jmp   .Lx153_81
.Lx153_84:
                        cmp              eax, 13
                                                                                        jne   .Lx153_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_82
                        cmp              rax, r9
                                                                                        je    .Lx153_82
                        mov              r9, rax
                                                                                        jmp   .Lx153_81
.Lx153_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_85
                        cmp              eax, 99
                                                                                        je    .Lx153_85
                        cmp              eax, 13
                                                                                        jne   .Lx153_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx153_85
                                                                                        jmp   .Lx153_86
.Lx153_85:
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
                                                                                        jmp   .Lx153_87
.Lx153_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx153_87:
                        lea              rcx, [rbp + 528]
.Lx153_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx153_89
                        cmp              esi, 1
                                                                                        jne   .Lx153_90
                        mov              rcx, rax
                                                                                        jmp   .Lx153_88
.Lx153_90:
                        cmp              esi, 2
                                                                                        jne   .Lx153_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_89
                        mov              rcx, rax
                                                                                        jmp   .Lx153_88
.Lx153_91:
                        cmp              eax, 13
                                                                                        jne   .Lx153_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx153_89
                        cmp              rax, rcx
                                                                                        je    .Lx153_89
                        mov              rcx, rax
                                                                                        jmp   .Lx153_88
.Lx153_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_92
                        cmp              eax, 99
                                                                                        je    .Lx153_92
                        cmp              eax, 13
                                                                                        jne   .Lx153_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx153_92
                                                                                        jmp   .Lx153_93
.Lx153_92:
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
                                                                                        jmp   .Lx153_94
.Lx153_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx153_94:
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
                                                                                        jmp   .Lx153_77
.Lx153_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx153_77
.Lx153_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx153_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n106_op11_α
                                                                                        jmp   n112_var_ref_α
n111_op11_β:
                                                                                        jmp   n106_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n114_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
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
.Lx158_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx158_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        cmp              esi, 1
                                                                                        jne   .Lx158_55
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_55:
                        cmp              esi, 2
                                                                                        jne   .Lx158_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_56:
                        cmp              eax, 13
                                                                                        jne   .Lx158_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        cmp              rax, r8
                                                                                        je    .Lx158_41
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_41:
                        lea              r9, [rbp + 416]
.Lx158_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx158_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        cmp              esi, 1
                                                                                        jne   .Lx158_57
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_57:
                        cmp              esi, 2
                                                                                        jne   .Lx158_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_58:
                        cmp              eax, 13
                                                                                        jne   .Lx158_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        cmp              rax, r9
                                                                                        je    .Lx158_43
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_43:
                        cmp              r8, r9
                                                                                        je    .Lx158_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_44
                        cmp              eax, 99
                                                                                        je    .Lx158_44
                        cmp              eax, 13
                                                                                        jne   .Lx158_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx158_44
                                                                                        jmp   .Lx158_45
.Lx158_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_53
                        cmp              eax, 99
                                                                                        je    .Lx158_53
                        cmp              eax, 13
                                                                                        jne   .Lx158_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx158_53
                                                                                        jmp   .Lx158_46
.Lx158_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx158_53
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
                                                                                        jmp   .Lx158_51
.Lx158_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_47
                        cmp              eax, 99
                                                                                        je    .Lx158_47
                        cmp              eax, 13
                                                                                        jne   .Lx158_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx158_47
                                                                                        jmp   .Lx158_48
.Lx158_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx158_53
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
                                                                                        jmp   .Lx158_51
.Lx158_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx158_49
                        cmp              edx, 14
                                                                                        je    .Lx158_53
                                                                                        jmp   .Lx158_52
.Lx158_49:
                        cmp              edx, 14
                                                                                        je    .Lx158_52
                        cmp              ecx, 7
                                                                                        je    .Lx158_53
                        cmp              edx, 7
                                                                                        je    .Lx158_53
                        cmp              ecx, 6
                                                                                        jne   .Lx158_50
                        cmp              edx, 6
                                                                                        jne   .Lx158_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx158_51
                                                                                        jmp   .Lx158_52
.Lx158_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx158_53
.Lx158_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx158_54
.Lx158_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx158_54
.Lx158_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx158_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n106_op11_α
                                                                                        jmp   n115_var_ref_α
n114_op11_β:
                                                                                        jmp   n106_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx164_21
.Lx164_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx164_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx164_23
.Lx164_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx164_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx164_1
                        lea              rcx, [rip + .Lx164_3]
                        lea              rdx, [rip + .Lx164_4]
                                                                                        jmp   rax
.Lx164_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx164_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx164_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_1:
                        call             rt_faildescr@PLT
.Lx164_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n106_op11_α
                                                                                        jmp   n118_var_ref_α
n117_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n120_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n121_op11_α
.Lx169_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n106_op11_α
                                                                                        jmp   n122_op11_α
n121_op11_β:
                                                                                        jmp   n106_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n117_call_proc_staged_β
                                                                                        jmp   n123_suspend_α
n122_op11_β:
                                                                                        jmp   n117_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n123_suspend_α:
                        lea              rax, [rip + n123_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n123_suspend_β:
                                                                                        jmp   n117_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1008]
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_length$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1096]
                        mov              rbp, [rbp + 1112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_ω:
                        mov              rax, [rbp + 1104]
                        lea              rsp, [rbp + 1120]
                        mov              rbp, [rbp + 1112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_append$2F3_α
proc_append$2F3_α:
                        .global          proc_append$2F3_α
                        .global          proc_append$2F3_β
                        .global          proc_append$2F3_γ
                        .global          proc_append$2F3_ω
                        sub              rsp, 1200
                        mov              [rsp + 1176], rcx
                        mov              [rsp + 1184], rdx
                        mov              [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
proc_append$2F3_α_body:
                        lea              rax, [rip + n199_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx211_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx211_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx211_101
.Lx211_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx211_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n175_var_ref_α
n174_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n177_lit_string_α
.Lx214_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n178_op11_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx216_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_111
                        cmp              esi, 1
                                                                                        jne   .Lx216_112
                        mov              r8, rax
                                                                                        jmp   .Lx216_110
.Lx216_112:
                        cmp              esi, 2
                                                                                        jne   .Lx216_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_111
                        mov              r8, rax
                                                                                        jmp   .Lx216_110
.Lx216_113:
                        cmp              eax, 13
                                                                                        jne   .Lx216_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_111
                        cmp              rax, r8
                                                                                        je    .Lx216_111
                        mov              r8, rax
                                                                                        jmp   .Lx216_110
.Lx216_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_114
                        cmp              eax, 99
                                                                                        je    .Lx216_114
                        cmp              eax, 13
                                                                                        jne   .Lx216_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx216_114
                                                                                        jmp   .Lx216_118
.Lx216_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx216_115
                        cmp              eax, 6
                                                                                        je    .Lx216_114
                        cmp              eax, 1
                                                                                        jne   .Lx216_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx216_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx216_114
                                                                                        jmp   .Lx216_116
.Lx216_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx216_117
.Lx216_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx216_117
.Lx216_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx216_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n180_var_ref_α
                                                                                        jmp   n179_var_ref_α
n178_op11_β:
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n183_op11_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n184_lit_integer_α
.Lx222_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx223_2]
                                                                                        jmp   .Lx223_3
.Lx223_2:
                        .quad            .Lx223_2_s
.Lx223_2_s:
                        .string          "[]"
.Lx223_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n186_op11_α
                                                                                        jmp   n185_var_ref_α
n183_op11_β:
                                                                                        jmp   n186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n187_op11_α
.Lx224_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n180_var_ref_α
n186_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx228_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx228_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_111
                        cmp              esi, 1
                                                                                        jne   .Lx228_112
                        mov              r8, rax
                                                                                        jmp   .Lx228_110
.Lx228_112:
                        cmp              esi, 2
                                                                                        jne   .Lx228_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_111
                        mov              r8, rax
                                                                                        jmp   .Lx228_110
.Lx228_113:
                        cmp              eax, 13
                                                                                        jne   .Lx228_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_111
                        cmp              rax, r8
                                                                                        je    .Lx228_111
                        mov              r8, rax
                                                                                        jmp   .Lx228_110
.Lx228_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_114
                        cmp              eax, 99
                                                                                        je    .Lx228_114
                        cmp              eax, 13
                                                                                        jne   .Lx228_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx228_114
                                                                                        jmp   .Lx228_118
.Lx228_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx228_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx228_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx228_115
                                                                                        jmp   .Lx228_114
.Lx228_119:
                        cmp              eax, 6
                                                                                        jne   .Lx228_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx228_114
                                                                                        jmp   .Lx228_115
.Lx228_120:
                        cmp              eax, 1
                                                                                        jne   .Lx228_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx228_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx228_114
                                                                                        jmp   .Lx228_115
.Lx228_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx228_117
.Lx228_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx228_117
.Lx228_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx228_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n189_var_ref_α
n187_op11_β:
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_op11_α:
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
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   proc_append$2F3_ω
n190_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
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
.Lx234_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx234_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        cmp              esi, 1
                                                                                        jne   .Lx234_55
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_55:
                        cmp              esi, 2
                                                                                        jne   .Lx234_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_56:
                        cmp              eax, 13
                                                                                        jne   .Lx234_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        cmp              rax, r8
                                                                                        je    .Lx234_41
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_41:
                        lea              r9, [rbp + 848]
.Lx234_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx234_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        cmp              esi, 1
                                                                                        jne   .Lx234_57
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_57:
                        cmp              esi, 2
                                                                                        jne   .Lx234_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_58:
                        cmp              eax, 13
                                                                                        jne   .Lx234_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        cmp              rax, r9
                                                                                        je    .Lx234_43
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_43:
                        cmp              r8, r9
                                                                                        je    .Lx234_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_44
                        cmp              eax, 99
                                                                                        je    .Lx234_44
                        cmp              eax, 13
                                                                                        jne   .Lx234_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx234_44
                                                                                        jmp   .Lx234_45
.Lx234_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_53
                        cmp              eax, 99
                                                                                        je    .Lx234_53
                        cmp              eax, 13
                                                                                        jne   .Lx234_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx234_53
                                                                                        jmp   .Lx234_46
.Lx234_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx234_53
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
                                                                                        jmp   .Lx234_51
.Lx234_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_47
                        cmp              eax, 99
                                                                                        je    .Lx234_47
                        cmp              eax, 13
                                                                                        jne   .Lx234_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx234_47
                                                                                        jmp   .Lx234_48
.Lx234_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx234_53
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
                                                                                        jmp   .Lx234_51
.Lx234_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx234_49
                        cmp              edx, 14
                                                                                        je    .Lx234_53
                                                                                        jmp   .Lx234_52
.Lx234_49:
                        cmp              edx, 14
                                                                                        je    .Lx234_52
                        cmp              ecx, 7
                                                                                        je    .Lx234_53
                        cmp              edx, 7
                                                                                        je    .Lx234_53
                        cmp              ecx, 6
                                                                                        jne   .Lx234_50
                        cmp              edx, 6
                                                                                        jne   .Lx234_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx234_51
                                                                                        jmp   .Lx234_52
.Lx234_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx234_53
.Lx234_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx234_54
.Lx234_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx234_54
.Lx234_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx234_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n186_op11_α
                                                                                        jmp   n193_var_ref_α
n191_op11_β:
                                                                                        jmp   n186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n196_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx243_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_61
                        cmp              esi, 1
                                                                                        jne   .Lx243_62
                        mov              r8, rax
                                                                                        jmp   .Lx243_60
.Lx243_62:
                        cmp              esi, 2
                                                                                        jne   .Lx243_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_61
                        mov              r8, rax
                                                                                        jmp   .Lx243_60
.Lx243_63:
                        cmp              eax, 13
                                                                                        jne   .Lx243_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_61
                        cmp              rax, r8
                                                                                        je    .Lx243_61
                        mov              r8, rax
                                                                                        jmp   .Lx243_60
.Lx243_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_80
                        cmp              eax, 99
                                                                                        je    .Lx243_80
                        cmp              eax, 13
                                                                                        jne   .Lx243_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx243_80
                                                                                        jmp   .Lx243_74
.Lx243_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx243_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx243_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx243_73
                        lea              r9, [rbp + 512]
.Lx243_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_65
                        cmp              esi, 1
                                                                                        jne   .Lx243_66
                        mov              r9, rax
                                                                                        jmp   .Lx243_64
.Lx243_66:
                        cmp              esi, 2
                                                                                        jne   .Lx243_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_65
                        mov              r9, rax
                                                                                        jmp   .Lx243_64
.Lx243_67:
                        cmp              eax, 13
                                                                                        jne   .Lx243_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_65
                        cmp              rax, r9
                                                                                        je    .Lx243_65
                        mov              r9, rax
                                                                                        jmp   .Lx243_64
.Lx243_65:
                        lea              rcx, [rbp + 528]
.Lx243_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx243_69
                        cmp              esi, 1
                                                                                        jne   .Lx243_70
                        mov              rcx, rax
                                                                                        jmp   .Lx243_68
.Lx243_70:
                        cmp              esi, 2
                                                                                        jne   .Lx243_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_69
                        mov              rcx, rax
                                                                                        jmp   .Lx243_68
.Lx243_71:
                        cmp              eax, 13
                                                                                        jne   .Lx243_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx243_69
                        cmp              rax, rcx
                                                                                        je    .Lx243_69
                        mov              rcx, rax
                                                                                        jmp   .Lx243_68
.Lx243_69:
                        cmp              r9, rcx
                                                                                        je    .Lx243_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_75
                        cmp              eax, 99
                                                                                        je    .Lx243_75
                        cmp              eax, 13
                                                                                        jne   .Lx243_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx243_75
                                                                                        jmp   .Lx243_72
.Lx243_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_76
                        cmp              eax, 99
                                                                                        je    .Lx243_76
                        cmp              eax, 13
                                                                                        jne   .Lx243_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx243_76
                                                                                        jmp   .Lx243_72
.Lx243_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx243_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx243_72
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
                                                                                        jmp   .Lx243_77
.Lx243_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx243_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx243_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx243_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx243_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx243_72
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
                        lea              r9, [rbp + 512]
.Lx243_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_82
                        cmp              esi, 1
                                                                                        jne   .Lx243_83
                        mov              r9, rax
                                                                                        jmp   .Lx243_81
.Lx243_83:
                        cmp              esi, 2
                                                                                        jne   .Lx243_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_82
                        mov              r9, rax
                                                                                        jmp   .Lx243_81
.Lx243_84:
                        cmp              eax, 13
                                                                                        jne   .Lx243_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_82
                        cmp              rax, r9
                                                                                        je    .Lx243_82
                        mov              r9, rax
                                                                                        jmp   .Lx243_81
.Lx243_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_85
                        cmp              eax, 99
                                                                                        je    .Lx243_85
                        cmp              eax, 13
                                                                                        jne   .Lx243_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx243_85
                                                                                        jmp   .Lx243_86
.Lx243_85:
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
                                                                                        jmp   .Lx243_87
.Lx243_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx243_87:
                        lea              rcx, [rbp + 528]
.Lx243_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx243_89
                        cmp              esi, 1
                                                                                        jne   .Lx243_90
                        mov              rcx, rax
                                                                                        jmp   .Lx243_88
.Lx243_90:
                        cmp              esi, 2
                                                                                        jne   .Lx243_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_89
                        mov              rcx, rax
                                                                                        jmp   .Lx243_88
.Lx243_91:
                        cmp              eax, 13
                                                                                        jne   .Lx243_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx243_89
                        cmp              rax, rcx
                                                                                        je    .Lx243_89
                        mov              rcx, rax
                                                                                        jmp   .Lx243_88
.Lx243_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_92
                        cmp              eax, 99
                                                                                        je    .Lx243_92
                        cmp              eax, 13
                                                                                        jne   .Lx243_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx243_92
                                                                                        jmp   .Lx243_93
.Lx243_92:
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
                                                                                        jmp   .Lx243_94
.Lx243_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx243_94:
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
                                                                                        jmp   .Lx243_77
.Lx243_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx243_77
.Lx243_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx243_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n198_var_ref_α
n196_op11_β:
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx244_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx244_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_41
                        cmp              esi, 1
                                                                                        jne   .Lx244_55
                        mov              r8, rax
                                                                                        jmp   .Lx244_40
.Lx244_55:
                        cmp              esi, 2
                                                                                        jne   .Lx244_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx244_41
                        mov              r8, rax
                                                                                        jmp   .Lx244_40
.Lx244_56:
                        cmp              eax, 13
                                                                                        jne   .Lx244_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_41
                        cmp              rax, r8
                                                                                        je    .Lx244_41
                        mov              r8, rax
                                                                                        jmp   .Lx244_40
.Lx244_41:
                        lea              r9, [rbp + 768]
.Lx244_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx244_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_43
                        cmp              esi, 1
                                                                                        jne   .Lx244_57
                        mov              r9, rax
                                                                                        jmp   .Lx244_42
.Lx244_57:
                        cmp              esi, 2
                                                                                        jne   .Lx244_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx244_43
                        mov              r9, rax
                                                                                        jmp   .Lx244_42
.Lx244_58:
                        cmp              eax, 13
                                                                                        jne   .Lx244_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_43
                        cmp              rax, r9
                                                                                        je    .Lx244_43
                        mov              r9, rax
                                                                                        jmp   .Lx244_42
.Lx244_43:
                        cmp              r8, r9
                                                                                        je    .Lx244_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx244_44
                        cmp              eax, 99
                                                                                        je    .Lx244_44
                        cmp              eax, 13
                                                                                        jne   .Lx244_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx244_44
                                                                                        jmp   .Lx244_45
.Lx244_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx244_53
                        cmp              eax, 99
                                                                                        je    .Lx244_53
                        cmp              eax, 13
                                                                                        jne   .Lx244_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx244_53
                                                                                        jmp   .Lx244_46
.Lx244_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx244_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx244_53
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
                                                                                        jmp   .Lx244_51
.Lx244_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx244_47
                        cmp              eax, 99
                                                                                        je    .Lx244_47
                        cmp              eax, 13
                                                                                        jne   .Lx244_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx244_47
                                                                                        jmp   .Lx244_48
.Lx244_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx244_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx244_53
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
                                                                                        jmp   .Lx244_51
.Lx244_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx244_49
                        cmp              edx, 14
                                                                                        je    .Lx244_53
                                                                                        jmp   .Lx244_52
.Lx244_49:
                        cmp              edx, 14
                                                                                        je    .Lx244_52
                        cmp              ecx, 7
                                                                                        je    .Lx244_53
                        cmp              edx, 7
                                                                                        je    .Lx244_53
                        cmp              ecx, 6
                                                                                        jne   .Lx244_50
                        cmp              edx, 6
                                                                                        jne   .Lx244_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx244_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx244_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx244_51
                                                                                        jmp   .Lx244_52
.Lx244_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx244_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx244_53
.Lx244_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx244_54
.Lx244_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx244_54
.Lx244_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx244_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n186_op11_α
                                                                                        jmp   n199_suspend_α
n197_op11_β:
                                                                                        jmp   n186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n199_suspend_α:
                        lea              rax, [rip + n199_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n199_suspend_β:
                                                                                        jmp   n186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
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
.Lx251_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        cmp              esi, 1
                                                                                        jne   .Lx251_55
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_55:
                        cmp              esi, 2
                                                                                        jne   .Lx251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_56:
                        cmp              eax, 13
                                                                                        jne   .Lx251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        cmp              rax, r8
                                                                                        je    .Lx251_41
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_41:
                        lea              r9, [rbp + 416]
.Lx251_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        cmp              esi, 1
                                                                                        jne   .Lx251_57
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_57:
                        cmp              esi, 2
                                                                                        jne   .Lx251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_58:
                        cmp              eax, 13
                                                                                        jne   .Lx251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        cmp              rax, r9
                                                                                        je    .Lx251_43
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_43:
                        cmp              r8, r9
                                                                                        je    .Lx251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_44
                        cmp              eax, 99
                                                                                        je    .Lx251_44
                        cmp              eax, 13
                                                                                        jne   .Lx251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx251_44
                                                                                        jmp   .Lx251_45
.Lx251_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_53
                        cmp              eax, 99
                                                                                        je    .Lx251_53
                        cmp              eax, 13
                                                                                        jne   .Lx251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx251_53
                                                                                        jmp   .Lx251_46
.Lx251_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx251_53
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
                                                                                        jmp   .Lx251_51
.Lx251_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_47
                        cmp              eax, 99
                                                                                        je    .Lx251_47
                        cmp              eax, 13
                                                                                        jne   .Lx251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx251_47
                                                                                        jmp   .Lx251_48
.Lx251_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx251_53
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
                                                                                        jmp   .Lx251_51
.Lx251_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx251_49
                        cmp              edx, 14
                                                                                        je    .Lx251_53
                                                                                        jmp   .Lx251_52
.Lx251_49:
                        cmp              edx, 14
                                                                                        je    .Lx251_52
                        cmp              ecx, 7
                                                                                        je    .Lx251_53
                        cmp              edx, 7
                                                                                        je    .Lx251_53
                        cmp              ecx, 6
                                                                                        jne   .Lx251_50
                        cmp              edx, 6
                                                                                        jne   .Lx251_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx251_51
                                                                                        jmp   .Lx251_52
.Lx251_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx251_53
.Lx251_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx251_54
.Lx251_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx251_54
.Lx251_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx251_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n202_var_ref_α
n201_op11_β:
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n203_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n204_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx258_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx258_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx258_61
                        cmp              esi, 1
                                                                                        jne   .Lx258_62
                        mov              r8, rax
                                                                                        jmp   .Lx258_60
.Lx258_62:
                        cmp              esi, 2
                                                                                        jne   .Lx258_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx258_61
                        mov              r8, rax
                                                                                        jmp   .Lx258_60
.Lx258_63:
                        cmp              eax, 13
                                                                                        jne   .Lx258_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx258_61
                        cmp              rax, r8
                                                                                        je    .Lx258_61
                        mov              r8, rax
                                                                                        jmp   .Lx258_60
.Lx258_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx258_80
                        cmp              eax, 99
                                                                                        je    .Lx258_80
                        cmp              eax, 13
                                                                                        jne   .Lx258_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx258_80
                                                                                        jmp   .Lx258_74
.Lx258_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx258_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx258_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx258_73
                        lea              r9, [rbp + 320]
.Lx258_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx258_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx258_65
                        cmp              esi, 1
                                                                                        jne   .Lx258_66
                        mov              r9, rax
                                                                                        jmp   .Lx258_64
.Lx258_66:
                        cmp              esi, 2
                                                                                        jne   .Lx258_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx258_65
                        mov              r9, rax
                                                                                        jmp   .Lx258_64
.Lx258_67:
                        cmp              eax, 13
                                                                                        jne   .Lx258_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx258_65
                        cmp              rax, r9
                                                                                        je    .Lx258_65
                        mov              r9, rax
                                                                                        jmp   .Lx258_64
.Lx258_65:
                        lea              rcx, [rbp + 336]
.Lx258_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx258_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx258_69
                        cmp              esi, 1
                                                                                        jne   .Lx258_70
                        mov              rcx, rax
                                                                                        jmp   .Lx258_68
.Lx258_70:
                        cmp              esi, 2
                                                                                        jne   .Lx258_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx258_69
                        mov              rcx, rax
                                                                                        jmp   .Lx258_68
.Lx258_71:
                        cmp              eax, 13
                                                                                        jne   .Lx258_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx258_69
                        cmp              rax, rcx
                                                                                        je    .Lx258_69
                        mov              rcx, rax
                                                                                        jmp   .Lx258_68
.Lx258_69:
                        cmp              r9, rcx
                                                                                        je    .Lx258_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx258_75
                        cmp              eax, 99
                                                                                        je    .Lx258_75
                        cmp              eax, 13
                                                                                        jne   .Lx258_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx258_75
                                                                                        jmp   .Lx258_72
.Lx258_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx258_76
                        cmp              eax, 99
                                                                                        je    .Lx258_76
                        cmp              eax, 13
                                                                                        jne   .Lx258_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx258_76
                                                                                        jmp   .Lx258_72
.Lx258_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx258_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx258_72
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
                                                                                        jmp   .Lx258_77
.Lx258_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx258_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx258_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx258_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx258_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx258_72
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
                        lea              r9, [rbp + 320]
.Lx258_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx258_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx258_82
                        cmp              esi, 1
                                                                                        jne   .Lx258_83
                        mov              r9, rax
                                                                                        jmp   .Lx258_81
.Lx258_83:
                        cmp              esi, 2
                                                                                        jne   .Lx258_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx258_82
                        mov              r9, rax
                                                                                        jmp   .Lx258_81
.Lx258_84:
                        cmp              eax, 13
                                                                                        jne   .Lx258_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx258_82
                        cmp              rax, r9
                                                                                        je    .Lx258_82
                        mov              r9, rax
                                                                                        jmp   .Lx258_81
.Lx258_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx258_85
                        cmp              eax, 99
                                                                                        je    .Lx258_85
                        cmp              eax, 13
                                                                                        jne   .Lx258_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx258_85
                                                                                        jmp   .Lx258_86
.Lx258_85:
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
                                                                                        jmp   .Lx258_87
.Lx258_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx258_87:
                        lea              rcx, [rbp + 336]
.Lx258_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx258_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx258_89
                        cmp              esi, 1
                                                                                        jne   .Lx258_90
                        mov              rcx, rax
                                                                                        jmp   .Lx258_88
.Lx258_90:
                        cmp              esi, 2
                                                                                        jne   .Lx258_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx258_89
                        mov              rcx, rax
                                                                                        jmp   .Lx258_88
.Lx258_91:
                        cmp              eax, 13
                                                                                        jne   .Lx258_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx258_89
                        cmp              rax, rcx
                                                                                        je    .Lx258_89
                        mov              rcx, rax
                                                                                        jmp   .Lx258_88
.Lx258_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx258_92
                        cmp              eax, 99
                                                                                        je    .Lx258_92
                        cmp              eax, 13
                                                                                        jne   .Lx258_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx258_92
                                                                                        jmp   .Lx258_93
.Lx258_92:
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
                                                                                        jmp   .Lx258_94
.Lx258_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx258_94:
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
                                                                                        jmp   .Lx258_77
.Lx258_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx258_77
.Lx258_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx258_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n206_var_ref_α
n205_op11_β:
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n208_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n209_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx266_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx266_21
.Lx266_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx266_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx266_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx266_23
.Lx266_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx266_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx266_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx266_25
.Lx266_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx266_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx266_1
                        lea              rcx, [rip + .Lx266_3]
                        lea              rdx, [rip + .Lx266_4]
                                                                                        jmp   rax
.Lx266_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx266_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx266_2
.Lx266_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx266_2
.Lx266_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx266_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx266_2
.Lx266_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx266_2
.Lx266_1:
                        call             rt_faildescr@PLT
.Lx266_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n210_suspend_α
n209_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n210_suspend_α:
                        lea              rax, [rip + n210_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n210_suspend_β:
                                                                                        jmp   n209_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_append$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1176]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_ω:
                        mov              rax, [rbp + 1184]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "reverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_reverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1184
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "length/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_length$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
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
                        sub              rsp, 2152
                        mov              rdi, rsp
                        mov              ecx, 2152
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2144], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n269_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx331_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx331_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx331_101
.Lx331_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx331_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n270_lit_string_α
n269_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n271_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n272_lit_string_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n273_lit_string_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n274_lit_string_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n275_op11_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n275_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n276_op11_α
n275_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n276_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n278_op11_α
                                                                                        jmp   n277_lit_string_α
n276_op11_β:
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n279_lit_string_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n278_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n278_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n280_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n281_lit_string_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n282_lit_string_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n283_op11_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n283_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n284_op11_α
n283_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n278_op11_α
                                                                                        jmp   n285_var_ref_α
n284_op11_β:
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n286_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        mov              qword ptr [rbp + 1568], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_20
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx350_21
.Lx350_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx350_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_22
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx350_23
.Lx350_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_arg_stage@PLT
.Lx350_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_24
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx350_25
.Lx350_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx350_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx350_1
                        lea              rcx, [rip + .Lx350_3]
                        lea              rdx, [rip + .Lx350_4]
                                                                                        jmp   rax
.Lx350_3:
                        mov              qword ptr [rbp + 1576], rsp
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx350_5
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_4:
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx350_6
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_1:
                        call             rt_faildescr@PLT
.Lx350_2:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n278_op11_α
                                                                                        jmp   n287_var_α
n286_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1576]
                                                                                        jmp   qword ptr [rsp]
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn354:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n286_call_proc_staged_β
                                                                                        jmp   n289_lit_string_α
n288_op11_β:
                                                                                        jmp   n286_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n290_op11_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn357:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n286_call_proc_staged_β
                                                                                        jmp   n291_lit_string_α
n290_op11_β:
                                                                                        jmp   n286_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n292_lit_string_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n293_lit_string_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n294_lit_string_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n295_lit_string_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n296_lit_string_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n297_lit_string_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n298_lit_string_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n299_lit_string_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n300_op11_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n300_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n301_op11_α
n300_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n302_op11_α
n301_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n303_op11_α
n302_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n278_op11_α
                                                                                        jmp   n304_var_ref_α
n303_op11_β:
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n305_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_proc_staged_α:
                        mov              qword ptr [rbp + 896], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_20
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx374_21
.Lx374_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_arg_stage@PLT
.Lx374_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_22
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx374_23
.Lx374_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx374_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx374_1
                        lea              rcx, [rip + .Lx374_3]
                        lea              rdx, [rip + .Lx374_4]
                                                                                        jmp   rax
.Lx374_3:
                        mov              qword ptr [rbp + 904], rsp
                        mov              rax, qword ptr [rbp + 896]
                        test             rax, rax
                                                                                        jne   .Lx374_5
                        mov              qword ptr [rbp + 896], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx374_2
.Lx374_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx374_2
.Lx374_4:
                        mov              rax, qword ptr [rbp + 896]
                        test             rax, rax
                                                                                        jne   .Lx374_6
                        mov              qword ptr [rbp + 896], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx374_2
.Lx374_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx374_2
.Lx374_1:
                        call             rt_faildescr@PLT
.Lx374_2:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n286_call_proc_staged_β
                                                                                        jmp   n306_var_α
n305_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 904]
                                                                                        jmp   qword ptr [rsp]
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n307_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn378:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n305_call_proc_staged_β
                                                                                        jmp   n308_lit_string_α
n307_op11_β:
                                                                                        jmp   n305_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n309_op11_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn381:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn381]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n305_call_proc_staged_β
                                                                                        jmp   n310_lit_string_α
n309_op11_β:
                                                                                        jmp   n305_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n311_lit_string_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n312_lit_string_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n313_lit_string_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n314_lit_string_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n315_lit_string_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n316_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n317_lit_string_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n318_lit_string_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n319_op11_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n319_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n320_op11_α
n319_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n321_op11_α
n320_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n321_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n322_op11_α
n321_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n278_op11_α
                                                                                        jmp   n323_var_ref_α
n322_op11_β:
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n324_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx398_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx398_21
.Lx398_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx398_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx398_22
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx398_23
.Lx398_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx398_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx398_1
                        lea              rcx, [rip + .Lx398_3]
                        lea              rdx, [rip + .Lx398_4]
                                                                                        jmp   rax
.Lx398_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx398_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx398_2
.Lx398_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx398_2
.Lx398_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx398_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx398_2
.Lx398_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx398_2
.Lx398_1:
                        call             rt_faildescr@PLT
.Lx398_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n305_call_proc_staged_β
                                                                                        jmp   n325_var_α
n324_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "reverse/2"
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n326_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n326_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn402:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n324_call_proc_staged_β
                                                                                        jmp   n327_lit_string_α
n326_op11_β:
                                                                                        jmp   n324_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n328_op11_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn405:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n324_call_proc_staged_β
                                                                                        jmp   n329_move_label_α
n328_op11_β:
                                                                                        jmp   n324_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n329_move_label_α:
                        lea              rax, [rip + n324_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n330_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n330_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n330_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2144]
                        add              rsp, 2152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2144]
                        add              rsp, 2152
                        ret
                        .section         .note.GNU-stack,"",@progbits
