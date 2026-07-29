                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx5_60:
                        .section         .rodata
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n2_suspend_α
n1_call_builtin_gen_β:
                                                                                        jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n2_suspend_β:
                                                                                        jmp   n1_call_builtin_gen_β
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
                        .globl           proc_val$2F1_α
proc_val$2F1_α:
                        .global          proc_val$2F1_α
                        .global          proc_val$2F1_β
                        .global          proc_val$2F1_γ
                        .global          proc_val$2F1_ω
                        sub              rsp, 832
                        mov              [rsp + 808], rcx
                        mov              [rsp + 816], rdx
                        mov              [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 784
                        mov              edx, 800
                        call             rt_jmp_frame_lexprep2@PLT
proc_val$2F1_α_body:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 784], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx36_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_val$2F1_ω
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   proc_val$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n11_lit_integer_α
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n12_op11_α
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
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
                                                                                        jne   .Lx41_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx41_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx41_115
                                                                                        jmp   .Lx41_114
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n14_var_ref_α
                                                                                        jmp   n13_var_ref_α
n12_op11_β:
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n17_op11_α
.Lx46_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n18_lit_integer_α
.Lx47_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
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
                                                                                        je    n20_op11_α
                                                                                        jmp   n19_suspend_α
n17_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n21_op11_α
.Lx49_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_val$2F1_γ
n19_suspend_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
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
                                                                                        je    proc_val$2F1_ω
                                                                                        jmp   n14_var_ref_α
n20_op11_β:
                                                                                        jmp   proc_val$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
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
                                                                                        je    .Lx53_115
                        cmp              eax, 6
                                                                                        jne   .Lx53_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx53_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx53_115
                                                                                        jmp   .Lx53_114
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n23_var_ref_α
                                                                                        jmp   n22_var_ref_α
n21_op11_β:
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n26_op11_α
.Lx58_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n27_lit_integer_α
.Lx59_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
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
                                                                                        je    n29_op11_α
                                                                                        jmp   n28_suspend_α
n26_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n30_op11_α
.Lx61_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_val$2F1_γ
n28_suspend_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
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
                                                                                        je    proc_val$2F1_ω
                                                                                        jmp   n23_var_ref_α
n29_op11_β:
                                                                                        jmp   proc_val$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
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
.Lx65_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_111
                        cmp              esi, 1
                                                                                        jne   .Lx65_112
                        mov              r8, rax
                                                                                        jmp   .Lx65_110
.Lx65_112:
                        cmp              esi, 2
                                                                                        jne   .Lx65_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_111
                        mov              r8, rax
                                                                                        jmp   .Lx65_110
.Lx65_113:
                        cmp              eax, 13
                                                                                        jne   .Lx65_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_111
                        cmp              rax, r8
                                                                                        je    .Lx65_111
                        mov              r8, rax
                                                                                        jmp   .Lx65_110
.Lx65_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_114
                        cmp              eax, 99
                                                                                        je    .Lx65_114
                        cmp              eax, 13
                                                                                        jne   .Lx65_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx65_114
                                                                                        jmp   .Lx65_118
.Lx65_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx65_115
                        cmp              eax, 6
                                                                                        jne   .Lx65_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx65_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx65_115
                                                                                        jmp   .Lx65_114
.Lx65_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx65_117
.Lx65_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx65_117
.Lx65_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx65_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n31_var_ref_α
n30_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
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
                                                                                        je    proc_val$2F1_ω
                                                                                        jmp   proc_val$2F1_ω
n32_op11_β:
                                                                                        jmp   proc_val$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n34_op11_α
.Lx69_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
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
                                                                                        je    n32_op11_α
                                                                                        jmp   n35_suspend_α
n34_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_suspend_α:
                        lea              rax, [rip + n35_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_val$2F1_γ
n35_suspend_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_val$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_val$2F1_β:
                                                                                        jmp   qword ptr [rbp + 784]
#-----------------------------------------------------------------------------------------------------------------------
proc_val$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_val$2F1_res]
                        push             rax
                        mov              rax, [rbp + 808]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_val$2F1_ω:
                        mov              rax, [rbp + 816]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "val/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_val$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 800
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
                        sub              rsp, 1048
                        mov              rdi, rsp
                        mov              ecx, 1048
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1040], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx103_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx103_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx103_101
.Lx103_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx103_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n76_lit_string_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n77_var_ref_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "val"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n79_lit_string_α
n78_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n80_var_ref_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "is"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n82_var_ref_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n84_op11_α
.Lx117_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n85_op11_α
n84_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n86_op11_α
n85_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n87_op11_α
n86_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx121_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx121_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_41
                        cmp              esi, 1
                                                                                        jne   .Lx121_55
                        mov              r8, rax
                                                                                        jmp   .Lx121_40
.Lx121_55:
                        cmp              esi, 2
                                                                                        jne   .Lx121_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx121_41
                        mov              r8, rax
                                                                                        jmp   .Lx121_40
.Lx121_56:
                        cmp              eax, 13
                                                                                        jne   .Lx121_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_41
                        cmp              rax, r8
                                                                                        je    .Lx121_41
                        mov              r8, rax
                                                                                        jmp   .Lx121_40
.Lx121_41:
                        lea              r9, [rbp + 512]
.Lx121_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx121_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_43
                        cmp              esi, 1
                                                                                        jne   .Lx121_57
                        mov              r9, rax
                                                                                        jmp   .Lx121_42
.Lx121_57:
                        cmp              esi, 2
                                                                                        jne   .Lx121_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx121_43
                        mov              r9, rax
                                                                                        jmp   .Lx121_42
.Lx121_58:
                        cmp              eax, 13
                                                                                        jne   .Lx121_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_43
                        cmp              rax, r9
                                                                                        je    .Lx121_43
                        mov              r9, rax
                                                                                        jmp   .Lx121_42
.Lx121_43:
                        cmp              r8, r9
                                                                                        je    .Lx121_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx121_44
                        cmp              eax, 99
                                                                                        je    .Lx121_44
                        cmp              eax, 13
                                                                                        jne   .Lx121_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx121_44
                                                                                        jmp   .Lx121_45
.Lx121_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx121_53
                        cmp              eax, 99
                                                                                        je    .Lx121_53
                        cmp              eax, 13
                                                                                        jne   .Lx121_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx121_53
                                                                                        jmp   .Lx121_46
.Lx121_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx121_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx121_53
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
                                                                                        jmp   .Lx121_51
.Lx121_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx121_47
                        cmp              eax, 99
                                                                                        je    .Lx121_47
                        cmp              eax, 13
                                                                                        jne   .Lx121_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx121_47
                                                                                        jmp   .Lx121_48
.Lx121_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx121_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx121_53
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
                                                                                        jmp   .Lx121_51
.Lx121_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx121_49
                        cmp              edx, 14
                                                                                        je    .Lx121_53
                                                                                        jmp   .Lx121_52
.Lx121_49:
                        cmp              edx, 14
                                                                                        je    .Lx121_52
                        cmp              ecx, 7
                                                                                        je    .Lx121_53
                        cmp              edx, 7
                                                                                        je    .Lx121_53
                        cmp              ecx, 6
                                                                                        jne   .Lx121_50
                        cmp              edx, 6
                                                                                        jne   .Lx121_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx121_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx121_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx121_51
                                                                                        jmp   .Lx121_52
.Lx121_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx121_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx121_53
.Lx121_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx121_54
.Lx121_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx121_54
.Lx121_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx121_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n89_op11_α
n87_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
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
n88_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        .section         .rodata
.Lrkfn124:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rbp + 208]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n90_var_ref_α
n89_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx128_21
.Lx128_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx128_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx128_1
                        lea              rcx, [rip + .Lx128_3]
                        lea              rdx, [rip + .Lx128_4]
                                                                                        jmp   rax
.Lx128_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx128_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx128_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_1:
                        call             rt_faildescr@PLT
.Lx128_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n92_var_α
n91_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn132:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n95_var_ref_α
n93_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn134:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n91_call_proc_staged_β
n94_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n96_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
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
.Lx137_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              esi, 1
                                                                                        jne   .Lx137_55
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_55:
                        cmp              esi, 2
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_56:
                        cmp              eax, 13
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              rax, r8
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_41:
                        lea              r9, [rbp + 304]
.Lx137_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              esi, 1
                                                                                        jne   .Lx137_57
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_57:
                        cmp              esi, 2
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_58:
                        cmp              eax, 13
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              rax, r9
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_43:
                        cmp              r8, r9
                                                                                        je    .Lx137_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_44
                        cmp              eax, 99
                                                                                        je    .Lx137_44
                        cmp              eax, 13
                                                                                        jne   .Lx137_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx137_44
                                                                                        jmp   .Lx137_45
.Lx137_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_53
                        cmp              eax, 99
                                                                                        je    .Lx137_53
                        cmp              eax, 13
                                                                                        jne   .Lx137_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_46
.Lx137_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
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
                                                                                        jmp   .Lx137_51
.Lx137_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_47
                        cmp              eax, 99
                                                                                        je    .Lx137_47
                        cmp              eax, 13
                                                                                        jne   .Lx137_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_47
                                                                                        jmp   .Lx137_48
.Lx137_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
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
                                                                                        jmp   .Lx137_51
.Lx137_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx137_49
                        cmp              edx, 14
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_52
.Lx137_49:
                        cmp              edx, 14
                                                                                        je    .Lx137_52
                        cmp              ecx, 7
                                                                                        je    .Lx137_53
                        cmp              edx, 7
                                                                                        je    .Lx137_53
                        cmp              ecx, 6
                                                                                        jne   .Lx137_50
                        cmp              edx, 6
                                                                                        jne   .Lx137_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx137_51
                                                                                        jmp   .Lx137_52
.Lx137_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
.Lx137_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx137_54
.Lx137_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx137_54
.Lx137_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx137_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n97_var_α
n96_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n98_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn141:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n99_lit_string_α
n98_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n100_op11_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn144:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n101_move_label_α
n100_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_move_label_α:
                        lea              rax, [rip + n88_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n102_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1040]
                        add              rsp, 1048
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1040]
                        add              rsp, 1048
                        ret
                        .section         .note.GNU-stack,"",@progbits
