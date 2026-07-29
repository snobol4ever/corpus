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
                        sub              rsp, 2440
                        mov              rdi, rsp
                        mov              ecx, 2440
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2432], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx181_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx181_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx181_101
.Lx181_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx181_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n96_var_ref_α
n95_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn185:              .string          "$telling"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n98_var_ref_α
n97_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
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
n99_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn190:              .string          "$seeing"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n101_lit_string_α
n100_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n102_var_ref_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "std"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n103_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n105_op11_α
n104_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn198:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n106_lit_string_α
n105_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n107_op11_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn201:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n108_lit_string_α
n107_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n109_op11_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "/tmp/rung80.txt"
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn204:              .string          "$tell"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n110_lit_string_α
n109_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n111_lit_integer_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n112_op11_α
.Lx206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n113_op11_α
n112_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n114_lit_string_α
n113_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n115_op11_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn212:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n116_lit_string_α
n115_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n117_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn215:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n118_lit_string_α
n117_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n119_lit_string_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n120_op11_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n121_op11_α
n120_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn220:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n122_lit_string_α
n121_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n123_op11_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn223:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n124_lit_string_α
n123_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n125_op11_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn226:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n126_op11_α
n125_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        .section         .rodata
.Lrkfn228:              .string          "$told"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n127_lit_string_α
n126_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n128_op11_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "/tmp/rung80.txt"
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn231:              .string          "$append"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n129_lit_string_α
n128_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n130_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "gamma"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n131_op11_α
.Lx233_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n132_op11_α
n131_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn236:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n133_lit_string_α
n132_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n134_op11_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn239:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n135_lit_string_α
n134_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n136_op11_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn242:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n137_op11_α
n136_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        .section         .rodata
.Lrkfn244:              .string          "$told"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n138_var_ref_α
n137_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n139_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn248:              .string          "$telling"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n140_lit_string_α
n139_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n141_var_ref_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "after_told"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n143_op11_α
n142_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn254:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n144_lit_string_α
n143_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n145_op11_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn257:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n146_lit_string_α
n145_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n147_op11_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "/tmp/rung80.txt"
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn260:              .string          "$see"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n148_var_ref_α
n147_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n149_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn264:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n150_var_ref_α
n149_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n151_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn268:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n152_var_ref_α
n151_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn272:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n154_var_ref_α
n153_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn276:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n156_op11_α
n155_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_op11_α:
                        .section         .rodata
.Lrkfn278:              .string          "$seen"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 736]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n157_lit_string_α
n156_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n158_var_ref_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "read4"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n162_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n163_op11_α
n162_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn290:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n164_lit_string_α
n163_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n165_op11_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn293:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n166_var_ref_α
n165_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n167_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn297:              .string          "$seeing"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n168_lit_string_α
n167_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n169_var_ref_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "after_seen"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n170_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n170_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n171_op11_α
n170_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn303:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n172_lit_string_α
n171_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n173_op11_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn306:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n174_lit_string_α
n173_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n175_op11_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn309:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n176_lit_string_α
n175_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n177_op11_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n177_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn312:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n178_call_proc_staged_α
n177_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx314_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx314_3]
                        lea              rdx, [rip + .Lx314_4]
                                                                                        jmp   rax
.Lx314_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_1:
                        call             rt_faildescr@PLT
.Lx314_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n179_move_label_α
n178_call_proc_staged_β:
                                                                                        jmp   n99_op11_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n179_move_label_α:
                        lea              rax, [rip + n178_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n180_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n180_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n180_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2432]
                        add              rsp, 2440
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2432]
                        add              rsp, 2440
                        ret
                        .section         .note.GNU-stack,"",@progbits
