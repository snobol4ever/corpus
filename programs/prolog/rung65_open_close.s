                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n25_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx37_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx37_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx37_101
.Lx37_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx37_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n3_lit_string_α
.Lx40_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n4_op11_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
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
.Lx42_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx42_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_111
                        cmp              esi, 1
                                                                                        jne   .Lx42_112
                        mov              r8, rax
                                                                                        jmp   .Lx42_110
.Lx42_112:
                        cmp              esi, 2
                                                                                        jne   .Lx42_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_111
                        mov              r8, rax
                                                                                        jmp   .Lx42_110
.Lx42_113:
                        cmp              eax, 13
                                                                                        jne   .Lx42_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_111
                        cmp              rax, r8
                                                                                        je    .Lx42_111
                        mov              r8, rax
                                                                                        jmp   .Lx42_110
.Lx42_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_114
                        cmp              eax, 99
                                                                                        je    .Lx42_114
                        cmp              eax, 13
                                                                                        jne   .Lx42_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx42_114
                                                                                        jmp   .Lx42_118
.Lx42_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx42_115
                        cmp              eax, 6
                                                                                        je    .Lx42_114
                        cmp              eax, 1
                                                                                        jne   .Lx42_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx42_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx42_114
                                                                                        jmp   .Lx42_116
.Lx42_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx42_117
.Lx42_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx42_117
.Lx42_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx42_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n9_op11_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n10_lit_integer_α
.Lx48_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx49_2]
                                                                                        jmp   .Lx49_3
.Lx49_2:
                        .quad            .Lx49_2_s
.Lx49_2_s:
                        .string          "[]"
.Lx49_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_var_ref_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n13_op11_α
.Lx50_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
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
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
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
.Lx54_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx54_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx54_111
                        cmp              esi, 1
                                                                                        jne   .Lx54_112
                        mov              r8, rax
                                                                                        jmp   .Lx54_110
.Lx54_112:
                        cmp              esi, 2
                                                                                        jne   .Lx54_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx54_111
                        mov              r8, rax
                                                                                        jmp   .Lx54_110
.Lx54_113:
                        cmp              eax, 13
                                                                                        jne   .Lx54_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx54_111
                        cmp              rax, r8
                                                                                        je    .Lx54_111
                        mov              r8, rax
                                                                                        jmp   .Lx54_110
.Lx54_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx54_114
                        cmp              eax, 99
                                                                                        je    .Lx54_114
                        cmp              eax, 13
                                                                                        jne   .Lx54_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx54_114
                                                                                        jmp   .Lx54_118
.Lx54_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx54_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx54_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx54_115
                                                                                        jmp   .Lx54_114
.Lx54_119:
                        cmp              eax, 6
                                                                                        jne   .Lx54_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx54_114
                                                                                        jmp   .Lx54_115
.Lx54_120:
                        cmp              eax, 1
                                                                                        jne   .Lx54_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx54_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx54_114
                                                                                        jmp   .Lx54_115
.Lx54_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx54_117
.Lx54_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx54_117
.Lx54_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx54_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
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
n16_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
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
.Lx60_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              esi, 1
                                                                                        jne   .Lx60_55
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_55:
                        cmp              esi, 2
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_56:
                        cmp              eax, 13
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              rax, r8
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_41:
                        lea              r9, [rbp + 848]
.Lx60_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              esi, 1
                                                                                        jne   .Lx60_57
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_57:
                        cmp              esi, 2
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_58:
                        cmp              eax, 13
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              rax, r9
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_43:
                        cmp              r8, r9
                                                                                        je    .Lx60_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_44
                        cmp              eax, 99
                                                                                        je    .Lx60_44
                        cmp              eax, 13
                                                                                        jne   .Lx60_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx60_44
                                                                                        jmp   .Lx60_45
.Lx60_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_53
                        cmp              eax, 99
                                                                                        je    .Lx60_53
                        cmp              eax, 13
                                                                                        jne   .Lx60_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_46
.Lx60_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_47
                        cmp              eax, 99
                                                                                        je    .Lx60_47
                        cmp              eax, 13
                                                                                        jne   .Lx60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_47
                                                                                        jmp   .Lx60_48
.Lx60_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx60_49
                        cmp              edx, 14
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_52
.Lx60_49:
                        cmp              edx, 14
                                                                                        je    .Lx60_52
                        cmp              ecx, 7
                                                                                        je    .Lx60_53
                        cmp              edx, 7
                                                                                        je    .Lx60_53
                        cmp              ecx, 6
                                                                                        jne   .Lx60_50
                        cmp              edx, 6
                                                                                        jne   .Lx60_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx60_51
                                                                                        jmp   .Lx60_52
.Lx60_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
.Lx60_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx60_54
.Lx60_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx60_54
.Lx60_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx60_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n19_var_ref_α
n17_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
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
.Lx69_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_61
                        cmp              esi, 1
                                                                                        jne   .Lx69_62
                        mov              r8, rax
                                                                                        jmp   .Lx69_60
.Lx69_62:
                        cmp              esi, 2
                                                                                        jne   .Lx69_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_61
                        mov              r8, rax
                                                                                        jmp   .Lx69_60
.Lx69_63:
                        cmp              eax, 13
                                                                                        jne   .Lx69_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_61
                        cmp              rax, r8
                                                                                        je    .Lx69_61
                        mov              r8, rax
                                                                                        jmp   .Lx69_60
.Lx69_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_80
                        cmp              eax, 99
                                                                                        je    .Lx69_80
                        cmp              eax, 13
                                                                                        jne   .Lx69_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx69_80
                                                                                        jmp   .Lx69_74
.Lx69_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx69_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx69_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx69_73
                        lea              r9, [rbp + 512]
.Lx69_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_65
                        cmp              esi, 1
                                                                                        jne   .Lx69_66
                        mov              r9, rax
                                                                                        jmp   .Lx69_64
.Lx69_66:
                        cmp              esi, 2
                                                                                        jne   .Lx69_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_65
                        mov              r9, rax
                                                                                        jmp   .Lx69_64
.Lx69_67:
                        cmp              eax, 13
                                                                                        jne   .Lx69_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_65
                        cmp              rax, r9
                                                                                        je    .Lx69_65
                        mov              r9, rax
                                                                                        jmp   .Lx69_64
.Lx69_65:
                        lea              rcx, [rbp + 528]
.Lx69_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_69
                        cmp              esi, 1
                                                                                        jne   .Lx69_70
                        mov              rcx, rax
                                                                                        jmp   .Lx69_68
.Lx69_70:
                        cmp              esi, 2
                                                                                        jne   .Lx69_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_69
                        mov              rcx, rax
                                                                                        jmp   .Lx69_68
.Lx69_71:
                        cmp              eax, 13
                                                                                        jne   .Lx69_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_69
                        cmp              rax, rcx
                                                                                        je    .Lx69_69
                        mov              rcx, rax
                                                                                        jmp   .Lx69_68
.Lx69_69:
                        cmp              r9, rcx
                                                                                        je    .Lx69_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_75
                        cmp              eax, 99
                                                                                        je    .Lx69_75
                        cmp              eax, 13
                                                                                        jne   .Lx69_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_75
                                                                                        jmp   .Lx69_72
.Lx69_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_76
                        cmp              eax, 99
                                                                                        je    .Lx69_76
                        cmp              eax, 13
                                                                                        jne   .Lx69_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx69_76
                                                                                        jmp   .Lx69_72
.Lx69_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx69_72
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
                                                                                        jmp   .Lx69_77
.Lx69_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx69_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx69_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx69_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx69_72
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
.Lx69_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_82
                        cmp              esi, 1
                                                                                        jne   .Lx69_83
                        mov              r9, rax
                                                                                        jmp   .Lx69_81
.Lx69_83:
                        cmp              esi, 2
                                                                                        jne   .Lx69_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_82
                        mov              r9, rax
                                                                                        jmp   .Lx69_81
.Lx69_84:
                        cmp              eax, 13
                                                                                        jne   .Lx69_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_82
                        cmp              rax, r9
                                                                                        je    .Lx69_82
                        mov              r9, rax
                                                                                        jmp   .Lx69_81
.Lx69_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_85
                        cmp              eax, 99
                                                                                        je    .Lx69_85
                        cmp              eax, 13
                                                                                        jne   .Lx69_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_85
                                                                                        jmp   .Lx69_86
.Lx69_85:
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
                                                                                        jmp   .Lx69_87
.Lx69_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx69_87:
                        lea              rcx, [rbp + 528]
.Lx69_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_89
                        cmp              esi, 1
                                                                                        jne   .Lx69_90
                        mov              rcx, rax
                                                                                        jmp   .Lx69_88
.Lx69_90:
                        cmp              esi, 2
                                                                                        jne   .Lx69_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_89
                        mov              rcx, rax
                                                                                        jmp   .Lx69_88
.Lx69_91:
                        cmp              eax, 13
                                                                                        jne   .Lx69_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_89
                        cmp              rax, rcx
                                                                                        je    .Lx69_89
                        mov              rcx, rax
                                                                                        jmp   .Lx69_88
.Lx69_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_92
                        cmp              eax, 99
                                                                                        je    .Lx69_92
                        cmp              eax, 13
                                                                                        jne   .Lx69_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx69_92
                                                                                        jmp   .Lx69_93
.Lx69_92:
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
                                                                                        jmp   .Lx69_94
.Lx69_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx69_94:
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
                                                                                        jmp   .Lx69_77
.Lx69_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx69_77
.Lx69_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx69_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n24_var_ref_α
n22_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
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
                        lea              r9, [rbp + 768]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n25_suspend_α
n23_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_suspend_α:
                        lea              rax, [rip + n25_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n25_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
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
.Lx77_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx77_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        cmp              esi, 1
                                                                                        jne   .Lx77_55
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_55:
                        cmp              esi, 2
                                                                                        jne   .Lx77_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_56:
                        cmp              eax, 13
                                                                                        jne   .Lx77_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        cmp              rax, r8
                                                                                        je    .Lx77_41
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_41:
                        lea              r9, [rbp + 416]
.Lx77_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx77_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        cmp              esi, 1
                                                                                        jne   .Lx77_57
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_57:
                        cmp              esi, 2
                                                                                        jne   .Lx77_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_58:
                        cmp              eax, 13
                                                                                        jne   .Lx77_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        cmp              rax, r9
                                                                                        je    .Lx77_43
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_43:
                        cmp              r8, r9
                                                                                        je    .Lx77_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_44
                        cmp              eax, 99
                                                                                        je    .Lx77_44
                        cmp              eax, 13
                                                                                        jne   .Lx77_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx77_44
                                                                                        jmp   .Lx77_45
.Lx77_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_53
                        cmp              eax, 99
                                                                                        je    .Lx77_53
                        cmp              eax, 13
                                                                                        jne   .Lx77_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx77_53
                                                                                        jmp   .Lx77_46
.Lx77_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx77_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx77_53
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
                                                                                        jmp   .Lx77_51
.Lx77_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_47
                        cmp              eax, 99
                                                                                        je    .Lx77_47
                        cmp              eax, 13
                                                                                        jne   .Lx77_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx77_47
                                                                                        jmp   .Lx77_48
.Lx77_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx77_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx77_53
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
                                                                                        jmp   .Lx77_51
.Lx77_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx77_49
                        cmp              edx, 14
                                                                                        je    .Lx77_53
                                                                                        jmp   .Lx77_52
.Lx77_49:
                        cmp              edx, 14
                                                                                        je    .Lx77_52
                        cmp              ecx, 7
                                                                                        je    .Lx77_53
                        cmp              edx, 7
                                                                                        je    .Lx77_53
                        cmp              ecx, 6
                                                                                        jne   .Lx77_50
                        cmp              edx, 6
                                                                                        jne   .Lx77_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx77_51
                                                                                        jmp   .Lx77_52
.Lx77_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx77_53
.Lx77_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx77_54
.Lx77_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx77_54
.Lx77_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx77_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
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
.Lx84_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_61
                        cmp              esi, 1
                                                                                        jne   .Lx84_62
                        mov              r8, rax
                                                                                        jmp   .Lx84_60
.Lx84_62:
                        cmp              esi, 2
                                                                                        jne   .Lx84_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_61
                        mov              r8, rax
                                                                                        jmp   .Lx84_60
.Lx84_63:
                        cmp              eax, 13
                                                                                        jne   .Lx84_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_61
                        cmp              rax, r8
                                                                                        je    .Lx84_61
                        mov              r8, rax
                                                                                        jmp   .Lx84_60
.Lx84_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_80
                        cmp              eax, 99
                                                                                        je    .Lx84_80
                        cmp              eax, 13
                                                                                        jne   .Lx84_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx84_80
                                                                                        jmp   .Lx84_74
.Lx84_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx84_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx84_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx84_73
                        lea              r9, [rbp + 320]
.Lx84_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_65
                        cmp              esi, 1
                                                                                        jne   .Lx84_66
                        mov              r9, rax
                                                                                        jmp   .Lx84_64
.Lx84_66:
                        cmp              esi, 2
                                                                                        jne   .Lx84_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_65
                        mov              r9, rax
                                                                                        jmp   .Lx84_64
.Lx84_67:
                        cmp              eax, 13
                                                                                        jne   .Lx84_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_65
                        cmp              rax, r9
                                                                                        je    .Lx84_65
                        mov              r9, rax
                                                                                        jmp   .Lx84_64
.Lx84_65:
                        lea              rcx, [rbp + 336]
.Lx84_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx84_69
                        cmp              esi, 1
                                                                                        jne   .Lx84_70
                        mov              rcx, rax
                                                                                        jmp   .Lx84_68
.Lx84_70:
                        cmp              esi, 2
                                                                                        jne   .Lx84_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_69
                        mov              rcx, rax
                                                                                        jmp   .Lx84_68
.Lx84_71:
                        cmp              eax, 13
                                                                                        jne   .Lx84_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx84_69
                        cmp              rax, rcx
                                                                                        je    .Lx84_69
                        mov              rcx, rax
                                                                                        jmp   .Lx84_68
.Lx84_69:
                        cmp              r9, rcx
                                                                                        je    .Lx84_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_75
                        cmp              eax, 99
                                                                                        je    .Lx84_75
                        cmp              eax, 13
                                                                                        jne   .Lx84_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx84_75
                                                                                        jmp   .Lx84_72
.Lx84_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_76
                        cmp              eax, 99
                                                                                        je    .Lx84_76
                        cmp              eax, 13
                                                                                        jne   .Lx84_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx84_76
                                                                                        jmp   .Lx84_72
.Lx84_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx84_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx84_72
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
                                                                                        jmp   .Lx84_77
.Lx84_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx84_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx84_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx84_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx84_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx84_72
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
.Lx84_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_82
                        cmp              esi, 1
                                                                                        jne   .Lx84_83
                        mov              r9, rax
                                                                                        jmp   .Lx84_81
.Lx84_83:
                        cmp              esi, 2
                                                                                        jne   .Lx84_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_82
                        mov              r9, rax
                                                                                        jmp   .Lx84_81
.Lx84_84:
                        cmp              eax, 13
                                                                                        jne   .Lx84_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_82
                        cmp              rax, r9
                                                                                        je    .Lx84_82
                        mov              r9, rax
                                                                                        jmp   .Lx84_81
.Lx84_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_85
                        cmp              eax, 99
                                                                                        je    .Lx84_85
                        cmp              eax, 13
                                                                                        jne   .Lx84_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx84_85
                                                                                        jmp   .Lx84_86
.Lx84_85:
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
                                                                                        jmp   .Lx84_87
.Lx84_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx84_87:
                        lea              rcx, [rbp + 336]
.Lx84_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx84_89
                        cmp              esi, 1
                                                                                        jne   .Lx84_90
                        mov              rcx, rax
                                                                                        jmp   .Lx84_88
.Lx84_90:
                        cmp              esi, 2
                                                                                        jne   .Lx84_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_89
                        mov              rcx, rax
                                                                                        jmp   .Lx84_88
.Lx84_91:
                        cmp              eax, 13
                                                                                        jne   .Lx84_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx84_89
                        cmp              rax, rcx
                                                                                        je    .Lx84_89
                        mov              rcx, rax
                                                                                        jmp   .Lx84_88
.Lx84_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_92
                        cmp              eax, 99
                                                                                        je    .Lx84_92
                        cmp              eax, 13
                                                                                        jne   .Lx84_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx84_92
                                                                                        jmp   .Lx84_93
.Lx84_92:
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
                                                                                        jmp   .Lx84_94
.Lx84_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx84_94:
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
                                                                                        jmp   .Lx84_77
.Lx84_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx84_77
.Lx84_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx84_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n32_var_ref_α
n31_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx92_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx92_21
.Lx92_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx92_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx92_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx92_23
.Lx92_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx92_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx92_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx92_25
.Lx92_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx92_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx92_1
                        lea              rcx, [rip + .Lx92_3]
                        lea              rdx, [rip + .Lx92_4]
                                                                                        jmp   rax
.Lx92_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx92_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx92_2
.Lx92_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx92_2
.Lx92_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx92_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx92_2
.Lx92_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx92_2
.Lx92_1:
                        call             rt_faildescr@PLT
.Lx92_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n36_suspend_α
n35_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n36_suspend_β:
                                                                                        jmp   n35_call_proc_staged_β
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
.Lstartup_pname0:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
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
                        sub              rsp, 4888
                        mov              rdi, rsp
                        mov              ecx, 4888
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4880], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx253_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx253_101
.Lx253_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx253_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n96_lit_string_α
n95_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 4544], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n97_lit_string_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n98_var_ref_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4536], rax
                        .section         .rodata
.Lrkfn259:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rbp + 4496]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n100_var_α
n99_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
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
n101_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n103_op11_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4440], rax
                        .section         .rodata
.Lrkfn265:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 4416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n104_var_α
n103_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n105_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4376], rax
                        .section         .rodata
.Lrkfn269:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rbp + 4368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n106_var_α
n105_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 4336], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n108_op11_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        .section         .rodata
.Lrkfn274:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rbp + 4288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n109_var_α
n108_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4248], rax
                        .section         .rodata
.Lrkfn278:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 4240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n111_var_ref_α
n110_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4200], rax
                        .section         .rodata
.Lrkfn282:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rbp + 4192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n113_lit_string_α
n112_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n114_lit_string_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n115_var_ref_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                                                                                        jmp   n116_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn288:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 4080]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n117_var_ref_α
n116_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n119_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn294:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 4000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n120_var_ref_α
n119_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n122_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        .section         .rodata
.Lrkfn300:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rbp + 3920]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n123_var_ref_α
n122_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n125_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3864], rax
                        .section         .rodata
.Lrkfn306:              .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rbp + 3840]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n126_var_ref_α
n125_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n127_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3800], rax
                        .section         .rodata
.Lrkfn310:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]
                        lea              rsi, [rbp + 3792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n128_lit_string_α
n127_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n129_var_ref_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "readback"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n132_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3688], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rdi, [rbp + 3680]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n133_op11_α
n132_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn320:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n134_lit_string_α
n133_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n135_op11_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3560], rax
                        .section         .rodata
.Lrkfn323:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]
                        lea              rsi, [rbp + 3552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n136_lit_string_α
n135_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n137_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n138_var_ref_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "append"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n139_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3480], rax
                        .section         .rodata
.Lrkfn329:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rbp + 3440]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n140_var_α
n139_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n142_op11_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "more"
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3384], rax
                        .section         .rodata
.Lrkfn334:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rbp + 3360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n143_var_α
n142_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3320], rax
                        .section         .rodata
.Lrkfn338:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n145_var_ref_α
n144_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n147_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n148_lit_string_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "force"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n149_op11_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n150_lit_string_α
n149_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n151_op11_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n152_op11_α
n151_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn348:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n153_lit_string_α
n152_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n154_lit_string_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n155_var_ref_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n157_lit_string_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n158_lit_string_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n159_op11_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "text"
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n160_lit_string_α
n159_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n161_op11_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n162_op11_α
n161_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn360:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n163_var_ref_α
n162_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn366:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rbp + 2624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n166_var_ref_α
n165_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n167_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn370:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n168_lit_string_α
n167_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n169_var_ref_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "firstchar"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n170_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n170_op11_α:
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
                                                                                        je    n101_op11_α
                                                                                        jmp   n171_op11_α
n170_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rax
                        .section         .rodata
.Lrkfn376:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn376]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n172_lit_string_α
n171_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n173_op11_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn379:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n174_lit_string_α
n173_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n175_lit_string_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n176_lit_string_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "existence_error"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n177_var_ref_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "source_sink"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4704]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n179_var_ref_α
n178_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n180_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n180_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n181_op11_α
n180_op11_β:
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx389_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx389_101
.Lx389_100:
                        lea              rdi, [rbp + 2208]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx389_101:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n183_lit_string_α
n181_op11_β:
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n184_op11_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "existence_bad"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n185_lit_string_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "/tmp/rung65_absent.txt"
#-----------------------------------------------------------------------------------------------------------------------
n184_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn393:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n186_lit_string_α
n184_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n187_var_ref_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n188_op11_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn399:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n190_lit_string_α
n188_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn401:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn401]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n192_op11_α
                                                                                        jmp   n191_lit_string_α
n189_op11_β:
                                                                                        jmp   n192_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n193_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n194_op11_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "existence_ok"
#-----------------------------------------------------------------------------------------------------------------------
n192_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn405:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n191_lit_string_α
n192_op11_β:
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n195_lit_string_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n194_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn408:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n186_lit_string_α
n194_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n196_lit_string_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "io_mode"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n197_op11_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "bogus"
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n198_var_ref_α
n197_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4672]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n200_op11_α
n199_op11_β:
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx415_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx415_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx415_101
.Lx415_100:
                        lea              rdi, [rbp + 1632]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx415_101:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n202_lit_string_α
n200_op11_β:
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n203_op11_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "iomode_bad"
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n204_lit_string_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n203_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn419:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn419]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n205_lit_string_α
n203_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n206_var_ref_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "bogus"
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n207_op11_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4688]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n208_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n207_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn425:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n209_lit_string_α
n207_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n208_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn427:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn427]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n211_op11_α
                                                                                        jmp   n210_lit_string_α
n208_op11_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n212_lit_string_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n213_op11_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "iomode_ok"
#-----------------------------------------------------------------------------------------------------------------------
n211_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn431:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n210_lit_string_α
n211_op11_β:
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n214_var_ref_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n213_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn434:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn434]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n205_lit_string_α
n213_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n215_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n215_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n216_op11_α
n215_op11_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx438_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx438_101
.Lx438_100:
                        lea              rdi, [rbp + 1056]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx438_101:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n218_var_ref_α
n216_op11_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n219_op11_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "inst_bad"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4640]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn443:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn443]
                        lea              rsi, [rbp + 880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n221_lit_string_α
n219_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n222_var_ref_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n223_op11_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4656]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n223_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn449:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n225_lit_string_α
n223_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn451:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n227_op11_α
                                                                                        jmp   n226_lit_string_α
n224_op11_β:
                                                                                        jmp   n227_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n228_lit_string_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n229_op11_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "inst_ok"
#-----------------------------------------------------------------------------------------------------------------------
n227_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn455:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n226_lit_string_α
n227_op11_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n230_lit_string_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n229_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn458:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n221_lit_string_α
n229_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n231_lit_integer_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "source_sink"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n232_op11_α
.Lx460_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n232_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n233_var_ref_α
n232_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n234_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n234_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n236_lit_string_α
                                                                                        jmp   n235_op11_α
n234_op11_β:
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx465_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx465_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx465_101
.Lx465_100:
                        lea              rdi, [rbp + 592]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx465_101:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n236_lit_string_α
                                                                                        jmp   n237_lit_integer_α
n235_op11_β:
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n238_op11_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "sourcesink_bad"
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n239_lit_string_α
.Lx467_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n238_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn469:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn469]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n240_lit_string_α
n238_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n241_var_ref_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n242_op11_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4608]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n243_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n242_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn475:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n244_lit_string_α
n242_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n243_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn477:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn477]
                        lea              rsi, [rbp + 672]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n246_op11_α
                                                                                        jmp   n245_lit_string_α
n243_op11_β:
                                                                                        jmp   n246_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n247_op11_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n248_op11_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "sourcesink_ok"
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn481:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]
                        lea              rsi, [rbp + 624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n236_lit_string_α
                                                                                        jmp   n245_lit_string_α
n246_op11_β:
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn483:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n249_lit_string_α
n247_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn485:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn485]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n240_lit_string_α
n248_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n250_op11_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn488:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n101_op11_α
                                                                                        jmp   n251_move_label_α
n250_op11_β:
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_move_label_α:
                        lea              rax, [rip + n101_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n252_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n252_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n252_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4880]
                        add              rsp, 4888
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4880]
                        add              rsp, 4888
                        ret
                        .section         .note.GNU-stack,"",@progbits
