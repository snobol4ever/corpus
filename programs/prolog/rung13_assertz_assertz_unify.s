                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact$2F2_α
proc_fact$2F2_α:
                        .global          proc_fact$2F2_α
                        .global          proc_fact$2F2_β
                        .global          proc_fact$2F2_γ
                        .global          proc_fact$2F2_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_fact$2F2_α_body:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
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
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx37_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_fact$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_fact$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n3_lit_integer_α
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n4_op11_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
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
                        movabs           rdx, 1
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
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n9_op11_α
.Lx47_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n10_lit_integer_α
.Lx48_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_var_ref_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n13_op11_α
.Lx50_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    proc_fact$2F2_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_fact$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
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
                        movabs           rdx, 2
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
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n16_var_ref_α
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n17_op11_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx60_2]
                                                                                        jmp   .Lx60_3
.Lx60_2:
                        .quad            .Lx60_2_s
.Lx60_2_s:
                        .string          "one"
.Lx60_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n20_suspend_α
n17_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n21_op11_α
.Lx61_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n22_lit_integer_α
.Lx62_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_suspend_α:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_fact$2F2_γ
n20_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_var_ref_α
n21_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n25_op11_α
.Lx66_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_fact$2F2_ω
                                                                                        jmp   n16_var_ref_α
n24_op11_β:
                                                                                        jmp   proc_fact$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx70_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx70_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx70_111
                        cmp              esi, 1
                                                                                        jne   .Lx70_112
                        mov              r8, rax
                                                                                        jmp   .Lx70_110
.Lx70_112:
                        cmp              esi, 2
                                                                                        jne   .Lx70_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx70_111
                        mov              r8, rax
                                                                                        jmp   .Lx70_110
.Lx70_113:
                        cmp              eax, 13
                                                                                        jne   .Lx70_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx70_111
                        cmp              rax, r8
                                                                                        je    .Lx70_111
                        mov              r8, rax
                                                                                        jmp   .Lx70_110
.Lx70_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx70_114
                        cmp              eax, 99
                                                                                        je    .Lx70_114
                        cmp              eax, 13
                                                                                        jne   .Lx70_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx70_114
                                                                                        jmp   .Lx70_118
.Lx70_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx70_115
                        cmp              eax, 6
                                                                                        jne   .Lx70_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx70_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx70_115
                                                                                        jmp   .Lx70_114
.Lx70_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx70_117
.Lx70_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx70_117
.Lx70_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx70_117:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n27_var_ref_α
n25_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n29_op11_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
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
                                                                                        je    proc_fact$2F2_ω
                                                                                        jmp   proc_fact$2F2_ω
n28_op11_β:
                                                                                        jmp   proc_fact$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx75_2]
                                                                                        jmp   .Lx75_3
.Lx75_2:
                        .quad            .Lx75_2_s
.Lx75_2_s:
                        .string          "two"
.Lx75_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n31_suspend_α
n29_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n32_op11_α
.Lx76_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_fact$2F2_γ
n31_suspend_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n33_var_ref_α
n32_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n35_op11_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "three"
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx83_2]
                                                                                        jmp   .Lx83_3
.Lx83_2:
                        .quad            .Lx83_2_s
.Lx83_2_s:
                        .string          "three"
.Lx83_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n36_suspend_α
n35_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_fact$2F2_γ
n36_suspend_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_fact$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1040]
#-----------------------------------------------------------------------------------------------------------------------
proc_fact$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_fact$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1064]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fact$2F2_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "fact/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_fact$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1056
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
                        sub              rsp, 328
                        mov              rdi, rsp
                        mov              ecx, 328
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 320], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx97_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx97_101
.Lx97_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx97_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n87_lit_integer_α
n86_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n88_var_ref_α
.Lx98_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx102_21
.Lx102_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx102_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx102_23
.Lx102_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx102_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx102_1
                        lea              rcx, [rip + .Lx102_3]
                        lea              rdx, [rip + .Lx102_4]
                                                                                        jmp   rax
.Lx102_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx102_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx102_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_1:
                        call             rt_faildescr@PLT
.Lx102_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n91_op11_α
                                                                                        jmp   n90_var_α
n89_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "fact/2"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n92_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
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
n91_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn107:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n93_lit_string_α
n92_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n94_op11_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn110:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n95_move_label_α
n94_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n95_move_label_α:
                        lea              rax, [rip + n89_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n96_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n96_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 320]
                        add              rsp, 328
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 320]
                        add              rsp, 328
                        ret
                        .section         .note.GNU-stack,"",@progbits
