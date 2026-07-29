                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_succ_or_zero$2F2_α
proc_succ_or_zero$2F2_α:
                        .global          proc_succ_or_zero$2F2_α
                        .global          proc_succ_or_zero$2F2_β
                        .global          proc_succ_or_zero$2F2_γ
                        .global          proc_succ_or_zero$2F2_ω
                        sub              rsp, 832
                        mov              [rsp + 808], rcx
                        mov              [rsp + 816], rdx
                        mov              [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 800
                        call             rt_jmp_frame_lexprep2@PLT
proc_succ_or_zero$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx28_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx28_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx28_101
.Lx28_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx28_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_succ_or_zero$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_succ_or_zero$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n3_lit_integer_α
.Lx31_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n4_op11_α
.Lx32_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
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
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx33_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx33_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_111
                        cmp              esi, 1
                                                                                        jne   .Lx33_112
                        mov              r8, rax
                                                                                        jmp   .Lx33_110
.Lx33_112:
                        cmp              esi, 2
                                                                                        jne   .Lx33_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx33_111
                        mov              r8, rax
                                                                                        jmp   .Lx33_110
.Lx33_113:
                        cmp              eax, 13
                                                                                        jne   .Lx33_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_111
                        cmp              rax, r8
                                                                                        je    .Lx33_111
                        mov              r8, rax
                                                                                        jmp   .Lx33_110
.Lx33_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_114
                        cmp              eax, 99
                                                                                        je    .Lx33_114
                        cmp              eax, 13
                                                                                        jne   .Lx33_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx33_114
                                                                                        jmp   .Lx33_118
.Lx33_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx33_115
                        cmp              eax, 6
                                                                                        jne   .Lx33_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx33_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx33_115
                                                                                        jmp   .Lx33_114
.Lx33_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx33_117
.Lx33_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx33_117
.Lx33_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx33_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n9_op11_α
.Lx38_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_var_ref_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
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
.Lx42_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx42_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_41
                        cmp              esi, 1
                                                                                        jne   .Lx42_55
                        mov              r8, rax
                                                                                        jmp   .Lx42_40
.Lx42_55:
                        cmp              esi, 2
                                                                                        jne   .Lx42_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_41
                        mov              r8, rax
                                                                                        jmp   .Lx42_40
.Lx42_56:
                        cmp              eax, 13
                                                                                        jne   .Lx42_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_41
                        cmp              rax, r8
                                                                                        je    .Lx42_41
                        mov              r8, rax
                                                                                        jmp   .Lx42_40
.Lx42_41:
                        lea              r9, [rbp + 416]
.Lx42_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx42_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_43
                        cmp              esi, 1
                                                                                        jne   .Lx42_57
                        mov              r9, rax
                                                                                        jmp   .Lx42_42
.Lx42_57:
                        cmp              esi, 2
                                                                                        jne   .Lx42_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_43
                        mov              r9, rax
                                                                                        jmp   .Lx42_42
.Lx42_58:
                        cmp              eax, 13
                                                                                        jne   .Lx42_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_43
                        cmp              rax, r9
                                                                                        je    .Lx42_43
                        mov              r9, rax
                                                                                        jmp   .Lx42_42
.Lx42_43:
                        cmp              r8, r9
                                                                                        je    .Lx42_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_44
                        cmp              eax, 99
                                                                                        je    .Lx42_44
                        cmp              eax, 13
                                                                                        jne   .Lx42_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx42_44
                                                                                        jmp   .Lx42_45
.Lx42_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_53
                        cmp              eax, 99
                                                                                        je    .Lx42_53
                        cmp              eax, 13
                                                                                        jne   .Lx42_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx42_53
                                                                                        jmp   .Lx42_46
.Lx42_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx42_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx42_53
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
                                                                                        jmp   .Lx42_51
.Lx42_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_47
                        cmp              eax, 99
                                                                                        je    .Lx42_47
                        cmp              eax, 13
                                                                                        jne   .Lx42_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx42_47
                                                                                        jmp   .Lx42_48
.Lx42_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx42_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx42_53
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
                                                                                        jmp   .Lx42_51
.Lx42_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx42_49
                        cmp              edx, 14
                                                                                        je    .Lx42_53
                                                                                        jmp   .Lx42_52
.Lx42_49:
                        cmp              edx, 14
                                                                                        je    .Lx42_52
                        cmp              ecx, 7
                                                                                        je    .Lx42_53
                        cmp              edx, 7
                                                                                        je    .Lx42_53
                        cmp              ecx, 6
                                                                                        jne   .Lx42_50
                        cmp              edx, 6
                                                                                        jne   .Lx42_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx42_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx42_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx42_51
                                                                                        jmp   .Lx42_52
.Lx42_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx42_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx42_53
.Lx42_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx42_54
.Lx42_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx42_54
.Lx42_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx42_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n10_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    proc_succ_or_zero$2F2_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_succ_or_zero$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
                                                                                        je    proc_succ_or_zero$2F2_ω
                                                                                        jmp   proc_succ_or_zero$2F2_ω
n14_op11_β:
                                                                                        jmp   proc_succ_or_zero$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n17_op11_α
.Lx49_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n19_op19_α
n17_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
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
.Lx53_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              esi, 1
                                                                                        jne   .Lx53_55
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_55:
                        cmp              esi, 2
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_56:
                        cmp              eax, 13
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              rax, r8
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_41:
                        lea              r9, [rbp + 336]
.Lx53_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              esi, 1
                                                                                        jne   .Lx53_57
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_57:
                        cmp              esi, 2
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_58:
                        cmp              eax, 13
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              rax, r9
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_43:
                        cmp              r8, r9
                                                                                        je    .Lx53_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_44
                        cmp              eax, 99
                                                                                        je    .Lx53_44
                        cmp              eax, 13
                                                                                        jne   .Lx53_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx53_44
                                                                                        jmp   .Lx53_45
.Lx53_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_53
                        cmp              eax, 99
                                                                                        je    .Lx53_53
                        cmp              eax, 13
                                                                                        jne   .Lx53_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_46
.Lx53_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                                                                                        jmp   .Lx53_51
.Lx53_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_47
                        cmp              eax, 99
                                                                                        je    .Lx53_47
                        cmp              eax, 13
                                                                                        jne   .Lx53_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_47
                                                                                        jmp   .Lx53_48
.Lx53_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                                                                                        jmp   .Lx53_51
.Lx53_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx53_49
                        cmp              edx, 14
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_52
.Lx53_49:
                        cmp              edx, 14
                                                                                        je    .Lx53_52
                        cmp              ecx, 7
                                                                                        je    .Lx53_53
                        cmp              edx, 7
                                                                                        je    .Lx53_53
                        cmp              ecx, 6
                                                                                        jne   .Lx53_50
                        cmp              edx, 6
                                                                                        jne   .Lx53_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx53_51
                                                                                        jmp   .Lx53_52
.Lx53_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
.Lx53_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx53_54
.Lx53_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx53_54
.Lx53_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx53_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n20_var_ref_α
n18_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op19_α:
                                                                                        jmp   n21_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_move_label_α:
                        lea              rax, [rip + n12_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_succ_or_zero$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n23_disjunction_β:
                                                                                        jmp   proc_succ_or_zero$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n25_op11_α
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n26_op11_α
n25_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n27_move_label_α
n26_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_move_label_α:
                        lea              rax, [rip + n14_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_succ_or_zero$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_succ_or_zero$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_succ_or_zero$2F2_β:
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_succ_or_zero$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 808]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_succ_or_zero$2F2_ω:
                        mov              rax, [rbp + 816]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_succ_or_zero$2F2_dcα:
                        pop              r11
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 800], r11
                        lea              rax, [rip + .Lx68_2]
                        mov              qword ptr [rbp + 808], rax
                        lea              rax, [rip + .Lx68_3]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 768
                        mov              edx, 800
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_succ_or_zero$2F2_α_body
.Lx68_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -832
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx68_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -832
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "succ_or_zero/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_succ_or_zero$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_succ_or_zero$2F2_dcα]
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
                        sub              rsp, 728
                        mov              rdi, rsp
                        mov              ecx, 728
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 720], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx94_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n70_lit_integer_α
n69_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n71_var_ref_α
.Lx95_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n72_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 656]
                        call             proc_succ_or_zero$2F2_dcα
                                                                                        jmp   .Lx99_2
.Lx99_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n73_var_α
n72_call_proc_staged_β:
                                                                                        jmp   n74_op11_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "succ_or_zero/2"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
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
n74_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn104:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_proc_staged_β
                                                                                        jmp   n76_lit_string_α
n75_op11_β:
                                                                                        jmp   n72_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n77_op11_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn107:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_proc_staged_β
                                                                                        jmp   n78_lit_integer_α
n77_op11_β:
                                                                                        jmp   n72_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n79_var_ref_α
.Lx108_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n80_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 464]
                        call             proc_succ_or_zero$2F2_dcα
                                                                                        jmp   .Lx112_2
.Lx112_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_proc_staged_β
                                                                                        jmp   n81_var_α
n80_call_proc_staged_β:
                                                                                        jmp   n72_call_proc_staged_β
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "succ_or_zero/2"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn116:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n80_call_proc_staged_β
                                                                                        jmp   n83_lit_string_α
n82_op11_β:
                                                                                        jmp   n80_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n84_op11_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn119:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n80_call_proc_staged_β
                                                                                        jmp   n85_lit_integer_α
n84_op11_β:
                                                                                        jmp   n80_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n86_var_ref_α
.Lx120_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 272]
                        call             proc_succ_or_zero$2F2_dcα
                                                                                        jmp   .Lx124_2
.Lx124_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n80_call_proc_staged_β
                                                                                        jmp   n88_var_α
n87_call_proc_staged_β:
                                                                                        jmp   n80_call_proc_staged_β
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "succ_or_zero/2"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn128:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n87_call_proc_staged_β
                                                                                        jmp   n90_lit_string_α
n89_op11_β:
                                                                                        jmp   n87_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n91_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn131:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n87_call_proc_staged_β
                                                                                        jmp   n92_move_label_α
n91_op11_β:
                                                                                        jmp   n87_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n92_move_label_α:
                        lea              rax, [rip + n87_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n93_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n93_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n93_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
                        .section         .note.GNU-stack,"",@progbits
