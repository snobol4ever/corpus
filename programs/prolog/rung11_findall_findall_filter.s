                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_num$2F1_α
proc_num$2F1_α:
                        .global          proc_num$2F1_α
                        .global          proc_num$2F1_β
                        .global          proc_num$2F1_γ
                        .global          proc_num$2F1_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1264
                        mov              edx, 1280
                        call             rt_jmp_frame_lexprep2@PLT
proc_num$2F1_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 1264], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx46_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx46_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx46_101
.Lx46_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx46_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n3_lit_integer_α
.Lx49_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n4_op11_α
.Lx50_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx51_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx51_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_111
                        cmp              esi, 1
                                                                                        jne   .Lx51_112
                        mov              r8, rax
                                                                                        jmp   .Lx51_110
.Lx51_112:
                        cmp              esi, 2
                                                                                        jne   .Lx51_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx51_111
                        mov              r8, rax
                                                                                        jmp   .Lx51_110
.Lx51_113:
                        cmp              eax, 13
                                                                                        jne   .Lx51_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_111
                        cmp              rax, r8
                                                                                        je    .Lx51_111
                        mov              r8, rax
                                                                                        jmp   .Lx51_110
.Lx51_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_114
                        cmp              eax, 99
                                                                                        je    .Lx51_114
                        cmp              eax, 13
                                                                                        jne   .Lx51_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx51_114
                                                                                        jmp   .Lx51_118
.Lx51_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx51_115
                        cmp              eax, 6
                                                                                        jne   .Lx51_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx51_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx51_115
                                                                                        jmp   .Lx51_114
.Lx51_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx51_117
.Lx51_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx51_117
.Lx51_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx51_117:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n9_op11_α
.Lx56_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n10_lit_integer_α
.Lx57_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_suspend_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n13_op11_α
.Lx59_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n11_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx63_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx63_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx63_111
                        cmp              esi, 1
                                                                                        jne   .Lx63_112
                        mov              r8, rax
                                                                                        jmp   .Lx63_110
.Lx63_112:
                        cmp              esi, 2
                                                                                        jne   .Lx63_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx63_111
                        mov              r8, rax
                                                                                        jmp   .Lx63_110
.Lx63_113:
                        cmp              eax, 13
                                                                                        jne   .Lx63_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx63_111
                        cmp              rax, r8
                                                                                        je    .Lx63_111
                        mov              r8, rax
                                                                                        jmp   .Lx63_110
.Lx63_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx63_114
                        cmp              eax, 99
                                                                                        je    .Lx63_114
                        cmp              eax, 13
                                                                                        jne   .Lx63_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx63_114
                                                                                        jmp   .Lx63_118
.Lx63_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx63_115
                        cmp              eax, 6
                                                                                        jne   .Lx63_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx63_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx63_115
                                                                                        jmp   .Lx63_114
.Lx63_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx63_117
.Lx63_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx63_117
.Lx63_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx63_117:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n15_var_ref_α
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n18_op11_α
.Lx68_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n19_lit_integer_α
.Lx69_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n20_suspend_α
n18_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n22_op11_α
.Lx71_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n20_suspend_α:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n20_suspend_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n15_var_ref_α
n21_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
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
.Lx75_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_111
                        cmp              esi, 1
                                                                                        jne   .Lx75_112
                        mov              r8, rax
                                                                                        jmp   .Lx75_110
.Lx75_112:
                        cmp              esi, 2
                                                                                        jne   .Lx75_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_111
                        mov              r8, rax
                                                                                        jmp   .Lx75_110
.Lx75_113:
                        cmp              eax, 13
                                                                                        jne   .Lx75_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_111
                        cmp              rax, r8
                                                                                        je    .Lx75_111
                        mov              r8, rax
                                                                                        jmp   .Lx75_110
.Lx75_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_114
                        cmp              eax, 99
                                                                                        je    .Lx75_114
                        cmp              eax, 13
                                                                                        jne   .Lx75_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx75_114
                                                                                        jmp   .Lx75_118
.Lx75_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx75_115
                        cmp              eax, 6
                                                                                        jne   .Lx75_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx75_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx75_115
                                                                                        jmp   .Lx75_114
.Lx75_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx75_117
.Lx75_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx75_117
.Lx75_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx75_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n24_var_ref_α
                                                                                        jmp   n23_var_ref_α
n22_op11_β:
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n27_op11_α
.Lx80_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n28_lit_integer_α
.Lx81_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n30_op11_α
                                                                                        jmp   n29_suspend_α
n27_op11_β:
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n31_op11_α
.Lx83_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n29_suspend_β:
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n24_var_ref_α
n30_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx87_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_111
                        cmp              esi, 1
                                                                                        jne   .Lx87_112
                        mov              r8, rax
                                                                                        jmp   .Lx87_110
.Lx87_112:
                        cmp              esi, 2
                                                                                        jne   .Lx87_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_111
                        mov              r8, rax
                                                                                        jmp   .Lx87_110
.Lx87_113:
                        cmp              eax, 13
                                                                                        jne   .Lx87_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_111
                        cmp              rax, r8
                                                                                        je    .Lx87_111
                        mov              r8, rax
                                                                                        jmp   .Lx87_110
.Lx87_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_114
                        cmp              eax, 99
                                                                                        je    .Lx87_114
                        cmp              eax, 13
                                                                                        jne   .Lx87_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx87_114
                                                                                        jmp   .Lx87_118
.Lx87_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx87_115
                        cmp              eax, 6
                                                                                        jne   .Lx87_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx87_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx87_115
                                                                                        jmp   .Lx87_114
.Lx87_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx87_117
.Lx87_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx87_117
.Lx87_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx87_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n33_var_ref_α
                                                                                        jmp   n32_var_ref_α
n31_op11_β:
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n36_op11_α
.Lx92_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n37_lit_integer_α
.Lx93_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 4
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n39_op11_α
                                                                                        jmp   n38_suspend_α
n36_op11_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n40_op11_α
.Lx95_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n38_suspend_α:
                        lea              rax, [rip + n38_suspend_β]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n38_suspend_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n33_var_ref_α
n39_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx99_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx99_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_111
                        cmp              esi, 1
                                                                                        jne   .Lx99_112
                        mov              r8, rax
                                                                                        jmp   .Lx99_110
.Lx99_112:
                        cmp              esi, 2
                                                                                        jne   .Lx99_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx99_111
                        mov              r8, rax
                                                                                        jmp   .Lx99_110
.Lx99_113:
                        cmp              eax, 13
                                                                                        jne   .Lx99_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_111
                        cmp              rax, r8
                                                                                        je    .Lx99_111
                        mov              r8, rax
                                                                                        jmp   .Lx99_110
.Lx99_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_114
                        cmp              eax, 99
                                                                                        je    .Lx99_114
                        cmp              eax, 13
                                                                                        jne   .Lx99_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx99_114
                                                                                        jmp   .Lx99_118
.Lx99_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx99_115
                        cmp              eax, 6
                                                                                        jne   .Lx99_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx99_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx99_115
                                                                                        jmp   .Lx99_114
.Lx99_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx99_117
.Lx99_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx99_117
.Lx99_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx99_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n42_op11_α
                                                                                        jmp   n41_var_ref_α
n40_op11_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
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
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   proc_num$2F1_ω
n42_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n44_op11_α
.Lx103_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 5
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n42_op11_α
                                                                                        jmp   n45_suspend_α
n44_op11_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_suspend_α:
                        lea              rax, [rip + n45_suspend_β]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n45_suspend_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1264]
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_num$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1288]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_even$2F1_α
proc_even$2F1_α:
                        .global          proc_even$2F1_α
                        .global          proc_even$2F1_β
                        .global          proc_even$2F1_γ
                        .global          proc_even$2F1_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_even$2F1_α_body:
                        lea              rax, [rip + n119_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx120_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx120_101
.Lx120_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx120_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_even$2F1_ω
                                                                                        jmp   n108_var_ref_α
n107_op11_β:
                                                                                        jmp   proc_even$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n109_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
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
                        lea              r9, [rbp + 368]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n111_var_ref_α
n110_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n113_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
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
                                                                                        je    proc_even$2F1_ω
                                                                                        jmp   proc_even$2F1_ω
n112_op11_β:
                                                                                        jmp   proc_even$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx130_21
.Lx130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx130_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx130_1
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx130_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx130_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_1:
                        call             rt_faildescr@PLT
.Lx130_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n114_lit_integer_α
n113_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 296]
                                                                                        jmp   qword ptr [rsp]
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "num/1"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n115_var_α
.Lx131_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n117_op11_α
.Lx134_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mod@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n118_op11_α
n117_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n113_call_proc_staged_β
                                                                                        jmp   n119_suspend_α
n118_op11_β:
                                                                                        jmp   n113_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n119_suspend_α:
                        lea              rax, [rip + n119_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_even$2F1_γ
n119_suspend_β:
                                                                                        jmp   n113_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_even$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_even$2F1_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_even$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_even$2F1_res]
                        push             rax
                        mov              rax, [rbp + 456]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_even$2F1_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "num/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_num$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "even/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_even$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
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
                        sub              rsp, 520
                        mov              rdi, rsp
                        mov              ecx, 520
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 512], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx155_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx155_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx155_101
.Lx155_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx155_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n140_op11_α
n139_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        .section         .rodata
.Lrkfn157:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 208]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n141_var_ref_α
n140_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n143_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
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
n142_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx162_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx162_21
.Lx162_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx162_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx162_1
                        lea              rcx, [rip + .Lx162_3]
                        lea              rdx, [rip + .Lx162_4]
                                                                                        jmp   rax
.Lx162_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx162_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx162_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_1:
                        call             rt_faildescr@PLT
.Lx162_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n145_op11_α
                                                                                        jmp   n144_var_α
n143_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "even/1"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn166:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n147_var_ref_α
n145_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn168:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n143_call_proc_staged_β
n146_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx171_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx171_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx171_41
                        cmp              esi, 1
                                                                                        jne   .Lx171_55
                        mov              r8, rax
                                                                                        jmp   .Lx171_40
.Lx171_55:
                        cmp              esi, 2
                                                                                        jne   .Lx171_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx171_41
                        mov              r8, rax
                                                                                        jmp   .Lx171_40
.Lx171_56:
                        cmp              eax, 13
                                                                                        jne   .Lx171_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx171_41
                        cmp              rax, r8
                                                                                        je    .Lx171_41
                        mov              r8, rax
                                                                                        jmp   .Lx171_40
.Lx171_41:
                        lea              r9, [rbp + 304]
.Lx171_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx171_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx171_43
                        cmp              esi, 1
                                                                                        jne   .Lx171_57
                        mov              r9, rax
                                                                                        jmp   .Lx171_42
.Lx171_57:
                        cmp              esi, 2
                                                                                        jne   .Lx171_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx171_43
                        mov              r9, rax
                                                                                        jmp   .Lx171_42
.Lx171_58:
                        cmp              eax, 13
                                                                                        jne   .Lx171_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx171_43
                        cmp              rax, r9
                                                                                        je    .Lx171_43
                        mov              r9, rax
                                                                                        jmp   .Lx171_42
.Lx171_43:
                        cmp              r8, r9
                                                                                        je    .Lx171_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx171_44
                        cmp              eax, 99
                                                                                        je    .Lx171_44
                        cmp              eax, 13
                                                                                        jne   .Lx171_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx171_44
                                                                                        jmp   .Lx171_45
.Lx171_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx171_53
                        cmp              eax, 99
                                                                                        je    .Lx171_53
                        cmp              eax, 13
                                                                                        jne   .Lx171_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx171_53
                                                                                        jmp   .Lx171_46
.Lx171_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx171_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx171_53
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
                                                                                        jmp   .Lx171_51
.Lx171_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx171_47
                        cmp              eax, 99
                                                                                        je    .Lx171_47
                        cmp              eax, 13
                                                                                        jne   .Lx171_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx171_47
                                                                                        jmp   .Lx171_48
.Lx171_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx171_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx171_53
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
                                                                                        jmp   .Lx171_51
.Lx171_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx171_49
                        cmp              edx, 14
                                                                                        je    .Lx171_53
                                                                                        jmp   .Lx171_52
.Lx171_49:
                        cmp              edx, 14
                                                                                        je    .Lx171_52
                        cmp              ecx, 7
                                                                                        je    .Lx171_53
                        cmp              edx, 7
                                                                                        je    .Lx171_53
                        cmp              ecx, 6
                                                                                        jne   .Lx171_50
                        cmp              edx, 6
                                                                                        jne   .Lx171_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx171_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx171_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx171_51
                                                                                        jmp   .Lx171_52
.Lx171_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx171_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx171_53
.Lx171_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx171_54
.Lx171_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx171_54
.Lx171_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx171_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n149_var_α
n148_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n150_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn175:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n151_lit_string_α
n150_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n152_op11_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn178:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n153_move_label_α
n152_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_move_label_α:
                        lea              rax, [rip + n142_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n154_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n154_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 512]
                        add              rsp, 520
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 512]
                        add              rsp, 520
                        ret
                        .section         .note.GNU-stack,"",@progbits
