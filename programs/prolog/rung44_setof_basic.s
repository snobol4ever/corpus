                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_num$2F1_α
proc_num$2F1_α:
                        .global          proc_num$2F1_α
                        .global          proc_num$2F1_β
                        .global          proc_num$2F1_γ
                        .global          proc_num$2F1_ω
                        sub              rsp, 1072
                        mov              [rsp + 1048], rcx
                        mov              [rsp + 1056], rdx
                        mov              [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1024
                        mov              edx, 1040
                        call             rt_jmp_frame_lexprep2@PLT
proc_num$2F1_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 1024], rax
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx37_101:
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n3_lit_integer_α
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n4_op11_α
.Lx41_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
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
                                                                                        jne   .Lx42_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx42_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx42_115
                                                                                        jmp   .Lx42_114
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n9_op11_α
.Lx47_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n10_lit_integer_α
.Lx48_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_suspend_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n13_op11_α
.Lx50_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 1024], rax
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
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_num$2F1_ω
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
                                                                                        je    .Lx54_115
                        cmp              eax, 6
                                                                                        jne   .Lx54_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx54_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx54_115
                                                                                        jmp   .Lx54_114
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n15_var_ref_α
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n18_op11_α
.Lx59_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n19_lit_integer_α
.Lx60_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n20_suspend_α
n18_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n22_op11_α
.Lx62_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n20_suspend_α:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 1024], rax
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
                                                                                        jmp   n15_var_ref_α
n21_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
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
.Lx66_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx66_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx66_111
                        cmp              esi, 1
                                                                                        jne   .Lx66_112
                        mov              r8, rax
                                                                                        jmp   .Lx66_110
.Lx66_112:
                        cmp              esi, 2
                                                                                        jne   .Lx66_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx66_111
                        mov              r8, rax
                                                                                        jmp   .Lx66_110
.Lx66_113:
                        cmp              eax, 13
                                                                                        jne   .Lx66_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx66_111
                        cmp              rax, r8
                                                                                        je    .Lx66_111
                        mov              r8, rax
                                                                                        jmp   .Lx66_110
.Lx66_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx66_114
                        cmp              eax, 99
                                                                                        je    .Lx66_114
                        cmp              eax, 13
                                                                                        jne   .Lx66_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx66_114
                                                                                        jmp   .Lx66_118
.Lx66_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx66_115
                        cmp              eax, 6
                                                                                        jne   .Lx66_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx66_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx66_115
                                                                                        jmp   .Lx66_114
.Lx66_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx66_117
.Lx66_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx66_117
.Lx66_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx66_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n24_var_ref_α
                                                                                        jmp   n23_var_ref_α
n22_op11_β:
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n27_op11_α
.Lx71_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n28_lit_integer_α
.Lx72_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n30_op11_α
                                                                                        jmp   n29_suspend_α
n27_op11_β:
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n31_op11_α
.Lx74_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 1024], rax
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
                                                                                        jmp   n24_var_ref_α
n30_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
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
.Lx78_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        cmp              esi, 1
                                                                                        jne   .Lx78_112
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_112:
                        cmp              esi, 2
                                                                                        jne   .Lx78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_113:
                        cmp              eax, 13
                                                                                        jne   .Lx78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        cmp              rax, r8
                                                                                        je    .Lx78_111
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_114
                        cmp              eax, 99
                                                                                        je    .Lx78_114
                        cmp              eax, 13
                                                                                        jne   .Lx78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx78_114
                                                                                        jmp   .Lx78_118
.Lx78_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx78_115
                        cmp              eax, 6
                                                                                        jne   .Lx78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx78_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx78_115
                                                                                        jmp   .Lx78_114
.Lx78_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx78_117
.Lx78_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx78_117
.Lx78_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx78_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n32_var_ref_α
n31_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
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
n33_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n35_op11_α
.Lx82_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n36_suspend_α
n35_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n36_suspend_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1024]
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_num$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1048]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_ω:
                        mov              rax, [rbp + 1056]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, [rbp + 1064]
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
                        mov              esi, 1040
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
                        sub              rsp, 696
                        mov              rdi, rsp
                        mov              ecx, 696
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 688], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx108_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx108_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx108_101
.Lx108_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx108_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n87_op11_α
n86_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        .section         .rodata
.Lrkfn110:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 368]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n88_var_ref_α
n87_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n90_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
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
n89_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx115_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx115_21
.Lx115_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx115_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx115_1
                        lea              rcx, [rip + .Lx115_3]
                        lea              rdx, [rip + .Lx115_4]
                                                                                        jmp   rax
.Lx115_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx115_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx115_2
.Lx115_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx115_2
.Lx115_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx115_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx115_2
.Lx115_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx115_2
.Lx115_1:
                        call             rt_faildescr@PLT
.Lx115_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n92_op11_α
                                                                                        jmp   n91_var_α
n90_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "num/1"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn119:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n94_var_ref_α
n92_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn121:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n90_call_proc_staged_β
n93_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx124_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx124_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        cmp              esi, 1
                                                                                        jne   .Lx124_55
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_55:
                        cmp              esi, 2
                                                                                        jne   .Lx124_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_56:
                        cmp              eax, 13
                                                                                        jne   .Lx124_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        cmp              rax, r8
                                                                                        je    .Lx124_41
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_41:
                        lea              r9, [rbp + 464]
.Lx124_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx124_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        cmp              esi, 1
                                                                                        jne   .Lx124_57
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_57:
                        cmp              esi, 2
                                                                                        jne   .Lx124_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_58:
                        cmp              eax, 13
                                                                                        jne   .Lx124_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        cmp              rax, r9
                                                                                        je    .Lx124_43
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_43:
                        cmp              r8, r9
                                                                                        je    .Lx124_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_44
                        cmp              eax, 99
                                                                                        je    .Lx124_44
                        cmp              eax, 13
                                                                                        jne   .Lx124_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx124_44
                                                                                        jmp   .Lx124_45
.Lx124_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_53
                        cmp              eax, 99
                                                                                        je    .Lx124_53
                        cmp              eax, 13
                                                                                        jne   .Lx124_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx124_53
                                                                                        jmp   .Lx124_46
.Lx124_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx124_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx124_53
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
                                                                                        jmp   .Lx124_51
.Lx124_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_47
                        cmp              eax, 99
                                                                                        je    .Lx124_47
                        cmp              eax, 13
                                                                                        jne   .Lx124_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx124_47
                                                                                        jmp   .Lx124_48
.Lx124_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx124_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx124_53
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
                                                                                        jmp   .Lx124_51
.Lx124_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx124_49
                        cmp              edx, 14
                                                                                        je    .Lx124_53
                                                                                        jmp   .Lx124_52
.Lx124_49:
                        cmp              edx, 14
                                                                                        je    .Lx124_52
                        cmp              ecx, 7
                                                                                        je    .Lx124_53
                        cmp              edx, 7
                                                                                        je    .Lx124_53
                        cmp              ecx, 6
                                                                                        jne   .Lx124_50
                        cmp              edx, 6
                                                                                        jne   .Lx124_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx124_51
                                                                                        jmp   .Lx124_52
.Lx124_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx124_53
.Lx124_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx124_54
.Lx124_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx124_54
.Lx124_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx124_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n96_var_ref_α
n95_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n98_op11_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn129:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n101_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn135:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n102_var_α
n101_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n103_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn139:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n104_lit_string_α
n103_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n105_op11_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn142:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n106_move_label_α
n105_op11_β:
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_move_label_α:
                        lea              rax, [rip + n89_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n107_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n107_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n107_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 688]
                        add              rsp, 696
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 688]
                        add              rsp, 696
                        ret
                        .section         .note.GNU-stack,"",@progbits
