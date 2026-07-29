                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sex$2F2_α
proc_sex$2F2_α:
                        .global          proc_sex$2F2_α
                        .global          proc_sex$2F2_β
                        .global          proc_sex$2F2_γ
                        .global          proc_sex$2F2_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
proc_sex$2F2_α_body:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx41_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx41_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx41_101
.Lx41_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx41_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n3_op11_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "ames"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx45_2]
                                                                                        jmp   .Lx45_3
.Lx45_2:
                        .quad            .Lx45_2_s
.Lx45_2_s:
                        .string          "ames"
.Lx45_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n8_op11_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx52_2]
                                                                                        jmp   .Lx52_3
.Lx52_2:
                        .quad            .Lx52_2_s
.Lx52_2_s:
                        .string          "f"
.Lx52_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_suspend_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n11_op11_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n10_suspend_α:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n10_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx56_2]
                                                                                        jmp   .Lx56_3
.Lx56_2:
                        .quad            .Lx56_2_s
.Lx56_2_s:
                        .string          "brown"
.Lx56_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n16_op11_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx63_2]
                                                                                        jmp   .Lx63_3
.Lx63_2:
                        .quad            .Lx63_2_s
.Lx63_2_s:
                        .string          "f"
.Lx63_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n18_suspend_α
n16_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n19_op11_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "conroy"
#-----------------------------------------------------------------------------------------------------------------------
n18_suspend_α:
                        lea              rax, [rip + n18_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n18_suspend_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx67_2]
                                                                                        jmp   .Lx67_3
.Lx67_2:
                        .quad            .Lx67_2_s
.Lx67_2_s:
                        .string          "conroy"
.Lx67_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n20_var_ref_α
n19_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n23_var_ref_α
n21_op11_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n24_op11_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx74_2]
                                                                                        jmp   .Lx74_3
.Lx74_2:
                        .quad            .Lx74_2_s
.Lx74_2_s:
                        .string          "m"
.Lx74_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n26_suspend_α
n24_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n27_op11_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "davis"
#-----------------------------------------------------------------------------------------------------------------------
n26_suspend_α:
                        lea              rax, [rip + n26_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n26_suspend_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx78_2]
                                                                                        jmp   .Lx78_3
.Lx78_2:
                        .quad            .Lx78_2_s
.Lx78_2_s:
                        .string          "davis"
.Lx78_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n29_op11_α
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n31_var_ref_α
n29_op11_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n32_op11_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx85_2]
                                                                                        jmp   .Lx85_3
.Lx85_2:
                        .quad            .Lx85_2_s
.Lx85_2_s:
                        .string          "m"
.Lx85_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n29_op11_α
                                                                                        jmp   n34_suspend_α
n32_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n35_op11_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "evans"
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n34_suspend_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx89_2]
                                                                                        jmp   .Lx89_3
.Lx89_2:
                        .quad            .Lx89_2_s
.Lx89_2_s:
                        .string          "evans"
.Lx89_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n36_var_ref_α
n35_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
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
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   proc_sex$2F2_ω
n37_op11_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n39_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx94_2]
                                                                                        jmp   .Lx94_3
.Lx94_2:
                        .quad            .Lx94_2_s
.Lx94_2_s:
                        .string          "m"
.Lx94_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n40_suspend_α
n39_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_suspend_α:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n40_suspend_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_sex$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1144]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_position$2F1_α
proc_position$2F1_α:
                        .global          proc_position$2F1_α
                        .global          proc_position$2F1_β
                        .global          proc_position$2F1_γ
                        .global          proc_position$2F1_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_position$2F1_α_body:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx123_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx123_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx123_101
.Lx123_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx123_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n98_var_ref_α
n97_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n100_op11_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx127_2]
                                                                                        jmp   .Lx127_3
.Lx127_2:
                        .quad            .Lx127_2_s
.Lx127_2_s:
                        .string          "buyer"
.Lx127_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n102_op11_α
                                                                                        jmp   n101_suspend_α
n100_op11_β:
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_suspend_α:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n101_suspend_β:
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n103_var_ref_α
n102_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n105_op11_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              rsi, qword ptr [rip + .Lx134_2]
                                                                                        jmp   .Lx134_3
.Lx134_2:
                        .quad            .Lx134_2_s
.Lx134_2_s:
                        .string          "cashier"
.Lx134_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n107_op11_α
                                                                                        jmp   n106_suspend_α
n105_op11_β:
                                                                                        jmp   n107_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_suspend_α:
                        lea              rax, [rip + n106_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n106_suspend_β:
                                                                                        jmp   n107_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n108_var_ref_α
n107_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n110_op11_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx141_2]
                                                                                        jmp   .Lx141_3
.Lx141_2:
                        .quad            .Lx141_2_s
.Lx141_2_s:
                        .string          "clerk"
.Lx141_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n111_suspend_α
n110_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_suspend_α:
                        lea              rax, [rip + n111_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n111_suspend_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n113_var_ref_α
n112_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n115_op11_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "floorwalker"
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx148_2]
                                                                                        jmp   .Lx148_3
.Lx148_2:
                        .quad            .Lx148_2_s
.Lx148_2_s:
                        .string          "floorwalker"
.Lx148_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n117_op11_α
                                                                                        jmp   n116_suspend_α
n115_op11_β:
                                                                                        jmp   n117_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_suspend_α:
                        lea              rax, [rip + n116_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n116_suspend_β:
                                                                                        jmp   n117_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
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
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n118_var_ref_α
n117_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n120_op11_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx155_2]
                                                                                        jmp   .Lx155_3
.Lx155_2:
                        .quad            .Lx155_2_s
.Lx155_2_s:
                        .string          "manager"
.Lx155_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n122_op11_α
                                                                                        jmp   n121_suspend_α
n120_op11_β:
                                                                                        jmp   n122_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_suspend_α:
                        lea              rax, [rip + n121_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n121_suspend_β:
                                                                                        jmp   n122_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
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
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   proc_position$2F1_ω
n122_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_position$2F1_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_holder_sex$2F7_α
proc_holder_sex$2F7_α:
                        .global          proc_holder_sex$2F7_α
                        .global          proc_holder_sex$2F7_β
                        .global          proc_holder_sex$2F7_γ
                        .global          proc_holder_sex$2F7_ω
                        sub              rsp, 1888
                        mov              [rsp + 1864], rcx
                        mov              [rsp + 1872], rdx
                        mov              [rsp + 1880], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1728
                        mov              edx, 1856
                        call             rt_jmp_frame_lexprep2@PLT
proc_holder_sex$2F7_α_body:
                        lea              rax, [rip + n191_suspend_β]
                        mov              qword ptr [rbp + 1728], rax
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx213_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx213_101
.Lx213_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx213_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_holder_sex$2F7_ω
                                                                                        jmp   n160_var_ref_α
n159_op11_β:
                                                                                        jmp   proc_holder_sex$2F7_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n162_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_op11_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1664]
                        lea              r8, [rbp + 1664]
.Lx218_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx218_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx218_41
                        cmp              esi, 1
                                                                                        jne   .Lx218_55
                        mov              r8, rax
                                                                                        jmp   .Lx218_40
.Lx218_55:
                        cmp              esi, 2
                                                                                        jne   .Lx218_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx218_41
                        mov              r8, rax
                                                                                        jmp   .Lx218_40
.Lx218_56:
                        cmp              eax, 13
                                                                                        jne   .Lx218_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx218_41
                        cmp              rax, r8
                                                                                        je    .Lx218_41
                        mov              r8, rax
                                                                                        jmp   .Lx218_40
.Lx218_41:
                        lea              r9, [rbp + 1680]
.Lx218_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx218_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx218_43
                        cmp              esi, 1
                                                                                        jne   .Lx218_57
                        mov              r9, rax
                                                                                        jmp   .Lx218_42
.Lx218_57:
                        cmp              esi, 2
                                                                                        jne   .Lx218_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx218_43
                        mov              r9, rax
                                                                                        jmp   .Lx218_42
.Lx218_58:
                        cmp              eax, 13
                                                                                        jne   .Lx218_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx218_43
                        cmp              rax, r9
                                                                                        je    .Lx218_43
                        mov              r9, rax
                                                                                        jmp   .Lx218_42
.Lx218_43:
                        cmp              r8, r9
                                                                                        je    .Lx218_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx218_44
                        cmp              eax, 99
                                                                                        je    .Lx218_44
                        cmp              eax, 13
                                                                                        jne   .Lx218_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx218_44
                                                                                        jmp   .Lx218_45
.Lx218_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx218_53
                        cmp              eax, 99
                                                                                        je    .Lx218_53
                        cmp              eax, 13
                                                                                        jne   .Lx218_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx218_53
                                                                                        jmp   .Lx218_46
.Lx218_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx218_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx218_53
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
                                                                                        jmp   .Lx218_51
.Lx218_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx218_47
                        cmp              eax, 99
                                                                                        je    .Lx218_47
                        cmp              eax, 13
                                                                                        jne   .Lx218_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx218_47
                                                                                        jmp   .Lx218_48
.Lx218_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx218_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx218_53
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
                                                                                        jmp   .Lx218_51
.Lx218_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx218_49
                        cmp              edx, 14
                                                                                        je    .Lx218_53
                                                                                        jmp   .Lx218_52
.Lx218_49:
                        cmp              edx, 14
                                                                                        je    .Lx218_52
                        cmp              ecx, 7
                                                                                        je    .Lx218_53
                        cmp              edx, 7
                                                                                        je    .Lx218_53
                        cmp              ecx, 6
                                                                                        jne   .Lx218_50
                        cmp              edx, 6
                                                                                        jne   .Lx218_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx218_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx218_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx218_51
                                                                                        jmp   .Lx218_52
.Lx218_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx218_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx218_53
.Lx218_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx218_54
.Lx218_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx218_54
.Lx218_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx218_54:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n163_var_ref_α
n162_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_holder_sex$2F7_ω
                                                                                        jmp   proc_holder_sex$2F7_ω
n164_op11_β:
                                                                                        jmp   proc_holder_sex$2F7_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n166_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1584]
                        lea              r8, [rbp + 1584]
.Lx224_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx224_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_41
                        cmp              esi, 1
                                                                                        jne   .Lx224_55
                        mov              r8, rax
                                                                                        jmp   .Lx224_40
.Lx224_55:
                        cmp              esi, 2
                                                                                        jne   .Lx224_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx224_41
                        mov              r8, rax
                                                                                        jmp   .Lx224_40
.Lx224_56:
                        cmp              eax, 13
                                                                                        jne   .Lx224_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_41
                        cmp              rax, r8
                                                                                        je    .Lx224_41
                        mov              r8, rax
                                                                                        jmp   .Lx224_40
.Lx224_41:
                        lea              r9, [rbp + 1600]
.Lx224_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx224_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_43
                        cmp              esi, 1
                                                                                        jne   .Lx224_57
                        mov              r9, rax
                                                                                        jmp   .Lx224_42
.Lx224_57:
                        cmp              esi, 2
                                                                                        jne   .Lx224_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx224_43
                        mov              r9, rax
                                                                                        jmp   .Lx224_42
.Lx224_58:
                        cmp              eax, 13
                                                                                        jne   .Lx224_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_43
                        cmp              rax, r9
                                                                                        je    .Lx224_43
                        mov              r9, rax
                                                                                        jmp   .Lx224_42
.Lx224_43:
                        cmp              r8, r9
                                                                                        je    .Lx224_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx224_44
                        cmp              eax, 99
                                                                                        je    .Lx224_44
                        cmp              eax, 13
                                                                                        jne   .Lx224_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx224_44
                                                                                        jmp   .Lx224_45
.Lx224_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx224_53
                        cmp              eax, 99
                                                                                        je    .Lx224_53
                        cmp              eax, 13
                                                                                        jne   .Lx224_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx224_53
                                                                                        jmp   .Lx224_46
.Lx224_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx224_53
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
                                                                                        jmp   .Lx224_51
.Lx224_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx224_47
                        cmp              eax, 99
                                                                                        je    .Lx224_47
                        cmp              eax, 13
                                                                                        jne   .Lx224_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx224_47
                                                                                        jmp   .Lx224_48
.Lx224_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx224_53
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
                                                                                        jmp   .Lx224_51
.Lx224_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx224_49
                        cmp              edx, 14
                                                                                        je    .Lx224_53
                                                                                        jmp   .Lx224_52
.Lx224_49:
                        cmp              edx, 14
                                                                                        je    .Lx224_52
                        cmp              ecx, 7
                                                                                        je    .Lx224_53
                        cmp              edx, 7
                                                                                        je    .Lx224_53
                        cmp              ecx, 6
                                                                                        jne   .Lx224_50
                        cmp              edx, 6
                                                                                        jne   .Lx224_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx224_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx224_51
                                                                                        jmp   .Lx224_52
.Lx224_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx224_53
.Lx224_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx224_54
.Lx224_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx224_54
.Lx224_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx224_54:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n167_var_ref_α
n166_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n169_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1504]
                        lea              r8, [rbp + 1504]
.Lx229_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx229_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        cmp              esi, 1
                                                                                        jne   .Lx229_55
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_55:
                        cmp              esi, 2
                                                                                        jne   .Lx229_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_56:
                        cmp              eax, 13
                                                                                        jne   .Lx229_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        cmp              rax, r8
                                                                                        je    .Lx229_41
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_41:
                        lea              r9, [rbp + 1520]
.Lx229_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx229_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        cmp              esi, 1
                                                                                        jne   .Lx229_57
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_57:
                        cmp              esi, 2
                                                                                        jne   .Lx229_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_58:
                        cmp              eax, 13
                                                                                        jne   .Lx229_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        cmp              rax, r9
                                                                                        je    .Lx229_43
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_43:
                        cmp              r8, r9
                                                                                        je    .Lx229_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_44
                        cmp              eax, 99
                                                                                        je    .Lx229_44
                        cmp              eax, 13
                                                                                        jne   .Lx229_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx229_44
                                                                                        jmp   .Lx229_45
.Lx229_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_53
                        cmp              eax, 99
                                                                                        je    .Lx229_53
                        cmp              eax, 13
                                                                                        jne   .Lx229_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx229_53
                                                                                        jmp   .Lx229_46
.Lx229_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx229_53
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
                                                                                        jmp   .Lx229_51
.Lx229_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_47
                        cmp              eax, 99
                                                                                        je    .Lx229_47
                        cmp              eax, 13
                                                                                        jne   .Lx229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx229_47
                                                                                        jmp   .Lx229_48
.Lx229_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx229_53
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
                                                                                        jmp   .Lx229_51
.Lx229_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx229_49
                        cmp              edx, 14
                                                                                        je    .Lx229_53
                                                                                        jmp   .Lx229_52
.Lx229_49:
                        cmp              edx, 14
                                                                                        je    .Lx229_52
                        cmp              ecx, 7
                                                                                        je    .Lx229_53
                        cmp              edx, 7
                                                                                        je    .Lx229_53
                        cmp              ecx, 6
                                                                                        jne   .Lx229_50
                        cmp              edx, 6
                                                                                        jne   .Lx229_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx229_51
                                                                                        jmp   .Lx229_52
.Lx229_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx229_53
.Lx229_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx229_54
.Lx229_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx229_54
.Lx229_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx229_54:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n170_var_ref_α
n169_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n171_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n172_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1424]
                        lea              r8, [rbp + 1424]
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
                        lea              r9, [rbp + 1440]
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
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n173_var_ref_α
n172_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n175_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1344]
                        lea              r8, [rbp + 1344]
.Lx239_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx239_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_41
                        cmp              esi, 1
                                                                                        jne   .Lx239_55
                        mov              r8, rax
                                                                                        jmp   .Lx239_40
.Lx239_55:
                        cmp              esi, 2
                                                                                        jne   .Lx239_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx239_41
                        mov              r8, rax
                                                                                        jmp   .Lx239_40
.Lx239_56:
                        cmp              eax, 13
                                                                                        jne   .Lx239_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_41
                        cmp              rax, r8
                                                                                        je    .Lx239_41
                        mov              r8, rax
                                                                                        jmp   .Lx239_40
.Lx239_41:
                        lea              r9, [rbp + 1360]
.Lx239_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx239_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_43
                        cmp              esi, 1
                                                                                        jne   .Lx239_57
                        mov              r9, rax
                                                                                        jmp   .Lx239_42
.Lx239_57:
                        cmp              esi, 2
                                                                                        jne   .Lx239_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx239_43
                        mov              r9, rax
                                                                                        jmp   .Lx239_42
.Lx239_58:
                        cmp              eax, 13
                                                                                        jne   .Lx239_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_43
                        cmp              rax, r9
                                                                                        je    .Lx239_43
                        mov              r9, rax
                                                                                        jmp   .Lx239_42
.Lx239_43:
                        cmp              r8, r9
                                                                                        je    .Lx239_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx239_44
                        cmp              eax, 99
                                                                                        je    .Lx239_44
                        cmp              eax, 13
                                                                                        jne   .Lx239_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx239_44
                                                                                        jmp   .Lx239_45
.Lx239_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx239_53
                        cmp              eax, 99
                                                                                        je    .Lx239_53
                        cmp              eax, 13
                                                                                        jne   .Lx239_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx239_53
                                                                                        jmp   .Lx239_46
.Lx239_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx239_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx239_53
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
                                                                                        jmp   .Lx239_51
.Lx239_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx239_47
                        cmp              eax, 99
                                                                                        je    .Lx239_47
                        cmp              eax, 13
                                                                                        jne   .Lx239_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx239_47
                                                                                        jmp   .Lx239_48
.Lx239_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx239_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx239_53
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
                                                                                        jmp   .Lx239_51
.Lx239_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx239_49
                        cmp              edx, 14
                                                                                        je    .Lx239_53
                                                                                        jmp   .Lx239_52
.Lx239_49:
                        cmp              edx, 14
                                                                                        je    .Lx239_52
                        cmp              ecx, 7
                                                                                        je    .Lx239_53
                        cmp              edx, 7
                                                                                        je    .Lx239_53
                        cmp              ecx, 6
                                                                                        jne   .Lx239_50
                        cmp              edx, 6
                                                                                        jne   .Lx239_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx239_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx239_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx239_51
                                                                                        jmp   .Lx239_52
.Lx239_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx239_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx239_53
.Lx239_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx239_54
.Lx239_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx239_54
.Lx239_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx239_54:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n176_var_ref_α
n175_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1264]
                        lea              r8, [rbp + 1264]
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
                        lea              r9, [rbp + 1280]
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
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n179_var_ref_α
n178_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1184]
                        lea              r8, [rbp + 1184]
.Lx249_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        cmp              esi, 1
                                                                                        jne   .Lx249_55
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_55:
                        cmp              esi, 2
                                                                                        jne   .Lx249_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_56:
                        cmp              eax, 13
                                                                                        jne   .Lx249_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        cmp              rax, r8
                                                                                        je    .Lx249_41
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_41:
                        lea              r9, [rbp + 1200]
.Lx249_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        cmp              esi, 1
                                                                                        jne   .Lx249_57
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_57:
                        cmp              esi, 2
                                                                                        jne   .Lx249_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_58:
                        cmp              eax, 13
                                                                                        jne   .Lx249_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        cmp              rax, r9
                                                                                        je    .Lx249_43
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_43:
                        cmp              r8, r9
                                                                                        je    .Lx249_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_44
                        cmp              eax, 99
                                                                                        je    .Lx249_44
                        cmp              eax, 13
                                                                                        jne   .Lx249_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx249_44
                                                                                        jmp   .Lx249_45
.Lx249_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_53
                        cmp              eax, 99
                                                                                        je    .Lx249_53
                        cmp              eax, 13
                                                                                        jne   .Lx249_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_53
                                                                                        jmp   .Lx249_46
.Lx249_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx249_53
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
                                                                                        jmp   .Lx249_51
.Lx249_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_47
                        cmp              eax, 99
                                                                                        je    .Lx249_47
                        cmp              eax, 13
                                                                                        jne   .Lx249_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_47
                                                                                        jmp   .Lx249_48
.Lx249_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx249_53
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
                                                                                        jmp   .Lx249_51
.Lx249_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx249_49
                        cmp              edx, 14
                                                                                        je    .Lx249_53
                                                                                        jmp   .Lx249_52
.Lx249_49:
                        cmp              edx, 14
                                                                                        je    .Lx249_52
                        cmp              ecx, 7
                                                                                        je    .Lx249_53
                        cmp              edx, 7
                                                                                        je    .Lx249_53
                        cmp              ecx, 6
                                                                                        jne   .Lx249_50
                        cmp              edx, 6
                                                                                        jne   .Lx249_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx249_51
                                                                                        jmp   .Lx249_52
.Lx249_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx249_53
.Lx249_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx249_54
.Lx249_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx249_54
.Lx249_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx249_54:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n182_var_ref_α
n181_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n184_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1104]
                        lea              r8, [rbp + 1104]
.Lx254_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              esi, 1
                                                                                        jne   .Lx254_55
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_55:
                        cmp              esi, 2
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_56:
                        cmp              eax, 13
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              rax, r8
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_41:
                        lea              r9, [rbp + 1120]
.Lx254_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              esi, 1
                                                                                        jne   .Lx254_57
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_57:
                        cmp              esi, 2
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_58:
                        cmp              eax, 13
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              rax, r9
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_43:
                        cmp              r8, r9
                                                                                        je    .Lx254_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_44
                        cmp              eax, 99
                                                                                        je    .Lx254_44
                        cmp              eax, 13
                                                                                        jne   .Lx254_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx254_44
                                                                                        jmp   .Lx254_45
.Lx254_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_53
                        cmp              eax, 99
                                                                                        je    .Lx254_53
                        cmp              eax, 13
                                                                                        jne   .Lx254_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_46
.Lx254_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_47
                        cmp              eax, 99
                                                                                        je    .Lx254_47
                        cmp              eax, 13
                                                                                        jne   .Lx254_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_47
                                                                                        jmp   .Lx254_48
.Lx254_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx254_49
                        cmp              edx, 14
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_52
.Lx254_49:
                        cmp              edx, 14
                                                                                        je    .Lx254_52
                        cmp              ecx, 7
                                                                                        je    .Lx254_53
                        cmp              edx, 7
                                                                                        je    .Lx254_53
                        cmp              ecx, 6
                                                                                        jne   .Lx254_50
                        cmp              edx, 6
                                                                                        jne   .Lx254_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx254_51
                                                                                        jmp   .Lx254_52
.Lx254_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
.Lx254_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx254_54
.Lx254_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx254_54
.Lx254_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx254_54:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n186_var_ref_α
                                                                                        jmp   n185_lit_string_α
n184_op11_β:
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n187_var_ref_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "ames"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n189_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx263_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx263_21
.Lx263_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx263_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx263_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx263_23
.Lx263_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx263_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx263_1
                        lea              rcx, [rip + .Lx263_3]
                        lea              rdx, [rip + .Lx263_4]
                                                                                        jmp   rax
.Lx263_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx263_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx263_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_1:
                        call             rt_faildescr@PLT
.Lx263_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n191_suspend_α
n189_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n190_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lx264_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx264_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_41
                        cmp              esi, 1
                                                                                        jne   .Lx264_55
                        mov              r8, rax
                                                                                        jmp   .Lx264_40
.Lx264_55:
                        cmp              esi, 2
                                                                                        jne   .Lx264_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx264_41
                        mov              r8, rax
                                                                                        jmp   .Lx264_40
.Lx264_56:
                        cmp              eax, 13
                                                                                        jne   .Lx264_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_41
                        cmp              rax, r8
                                                                                        je    .Lx264_41
                        mov              r8, rax
                                                                                        jmp   .Lx264_40
.Lx264_41:
                        lea              r9, [rbp + 1040]
.Lx264_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx264_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_43
                        cmp              esi, 1
                                                                                        jne   .Lx264_57
                        mov              r9, rax
                                                                                        jmp   .Lx264_42
.Lx264_57:
                        cmp              esi, 2
                                                                                        jne   .Lx264_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx264_43
                        mov              r9, rax
                                                                                        jmp   .Lx264_42
.Lx264_58:
                        cmp              eax, 13
                                                                                        jne   .Lx264_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_43
                        cmp              rax, r9
                                                                                        je    .Lx264_43
                        mov              r9, rax
                                                                                        jmp   .Lx264_42
.Lx264_43:
                        cmp              r8, r9
                                                                                        je    .Lx264_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx264_44
                        cmp              eax, 99
                                                                                        je    .Lx264_44
                        cmp              eax, 13
                                                                                        jne   .Lx264_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx264_44
                                                                                        jmp   .Lx264_45
.Lx264_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx264_53
                        cmp              eax, 99
                                                                                        je    .Lx264_53
                        cmp              eax, 13
                                                                                        jne   .Lx264_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx264_53
                                                                                        jmp   .Lx264_46
.Lx264_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx264_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx264_53
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
                                                                                        jmp   .Lx264_51
.Lx264_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx264_47
                        cmp              eax, 99
                                                                                        je    .Lx264_47
                        cmp              eax, 13
                                                                                        jne   .Lx264_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx264_47
                                                                                        jmp   .Lx264_48
.Lx264_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx264_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx264_53
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
                                                                                        jmp   .Lx264_51
.Lx264_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx264_49
                        cmp              edx, 14
                                                                                        je    .Lx264_53
                                                                                        jmp   .Lx264_52
.Lx264_49:
                        cmp              edx, 14
                                                                                        je    .Lx264_52
                        cmp              ecx, 7
                                                                                        je    .Lx264_53
                        cmp              edx, 7
                                                                                        je    .Lx264_53
                        cmp              ecx, 6
                                                                                        jne   .Lx264_50
                        cmp              edx, 6
                                                                                        jne   .Lx264_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx264_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx264_51
                                                                                        jmp   .Lx264_52
.Lx264_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx264_53
.Lx264_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx264_54
.Lx264_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx264_54
.Lx264_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx264_54:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n193_var_ref_α
                                                                                        jmp   n192_lit_string_α
n190_op11_β:
                                                                                        jmp   n193_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n191_suspend_α:
                        lea              rax, [rip + n191_suspend_β]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_holder_sex$2F7_γ
n191_suspend_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n194_var_ref_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n196_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx275_21
.Lx275_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx275_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx275_23
.Lx275_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx275_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx275_1
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4]
                                                                                        jmp   rax
.Lx275_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx275_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx275_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_1:
                        call             rt_faildescr@PLT
.Lx275_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n191_suspend_α
n196_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
.Lx276_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx276_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              esi, 1
                                                                                        jne   .Lx276_55
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_55:
                        cmp              esi, 2
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_56:
                        cmp              eax, 13
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              rax, r8
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_41:
                        lea              r9, [rbp + 960]
.Lx276_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx276_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              esi, 1
                                                                                        jne   .Lx276_57
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_57:
                        cmp              esi, 2
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_58:
                        cmp              eax, 13
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              rax, r9
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_43:
                        cmp              r8, r9
                                                                                        je    .Lx276_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_44
                        cmp              eax, 99
                                                                                        je    .Lx276_44
                        cmp              eax, 13
                                                                                        jne   .Lx276_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx276_44
                                                                                        jmp   .Lx276_45
.Lx276_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_53
                        cmp              eax, 99
                                                                                        je    .Lx276_53
                        cmp              eax, 13
                                                                                        jne   .Lx276_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_46
.Lx276_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_47
                        cmp              eax, 99
                                                                                        je    .Lx276_47
                        cmp              eax, 13
                                                                                        jne   .Lx276_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_47
                                                                                        jmp   .Lx276_48
.Lx276_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx276_49
                        cmp              edx, 14
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_52
.Lx276_49:
                        cmp              edx, 14
                                                                                        je    .Lx276_52
                        cmp              ecx, 7
                                                                                        je    .Lx276_53
                        cmp              edx, 7
                                                                                        je    .Lx276_53
                        cmp              ecx, 6
                                                                                        jne   .Lx276_50
                        cmp              edx, 6
                                                                                        jne   .Lx276_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx276_51
                                                                                        jmp   .Lx276_52
.Lx276_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
.Lx276_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx276_54
.Lx276_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx276_54
.Lx276_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx276_54:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n199_var_ref_α
                                                                                        jmp   n198_lit_string_α
n197_op11_β:
                                                                                        jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n200_var_ref_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "conroy"
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n201_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n202_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n203_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        mov              qword ptr [rbp + 480], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx285_21
.Lx285_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx285_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx285_23
.Lx285_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx285_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx285_1
                        lea              rcx, [rip + .Lx285_3]
                        lea              rdx, [rip + .Lx285_4]
                                                                                        jmp   rax
.Lx285_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx285_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx285_2
.Lx285_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx285_2
.Lx285_4:
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx285_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx285_2
.Lx285_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx285_2
.Lx285_1:
                        call             rt_faildescr@PLT
.Lx285_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n191_suspend_α
n202_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n203_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 864]
                        lea              r8, [rbp + 864]
.Lx286_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx286_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx286_41
                        cmp              esi, 1
                                                                                        jne   .Lx286_55
                        mov              r8, rax
                                                                                        jmp   .Lx286_40
.Lx286_55:
                        cmp              esi, 2
                                                                                        jne   .Lx286_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx286_41
                        mov              r8, rax
                                                                                        jmp   .Lx286_40
.Lx286_56:
                        cmp              eax, 13
                                                                                        jne   .Lx286_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx286_41
                        cmp              rax, r8
                                                                                        je    .Lx286_41
                        mov              r8, rax
                                                                                        jmp   .Lx286_40
.Lx286_41:
                        lea              r9, [rbp + 880]
.Lx286_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx286_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx286_43
                        cmp              esi, 1
                                                                                        jne   .Lx286_57
                        mov              r9, rax
                                                                                        jmp   .Lx286_42
.Lx286_57:
                        cmp              esi, 2
                                                                                        jne   .Lx286_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx286_43
                        mov              r9, rax
                                                                                        jmp   .Lx286_42
.Lx286_58:
                        cmp              eax, 13
                                                                                        jne   .Lx286_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx286_43
                        cmp              rax, r9
                                                                                        je    .Lx286_43
                        mov              r9, rax
                                                                                        jmp   .Lx286_42
.Lx286_43:
                        cmp              r8, r9
                                                                                        je    .Lx286_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx286_44
                        cmp              eax, 99
                                                                                        je    .Lx286_44
                        cmp              eax, 13
                                                                                        jne   .Lx286_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx286_44
                                                                                        jmp   .Lx286_45
.Lx286_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx286_53
                        cmp              eax, 99
                                                                                        je    .Lx286_53
                        cmp              eax, 13
                                                                                        jne   .Lx286_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx286_53
                                                                                        jmp   .Lx286_46
.Lx286_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx286_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx286_53
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
                                                                                        jmp   .Lx286_51
.Lx286_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx286_47
                        cmp              eax, 99
                                                                                        je    .Lx286_47
                        cmp              eax, 13
                                                                                        jne   .Lx286_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx286_47
                                                                                        jmp   .Lx286_48
.Lx286_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx286_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx286_53
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
                                                                                        jmp   .Lx286_51
.Lx286_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx286_49
                        cmp              edx, 14
                                                                                        je    .Lx286_53
                                                                                        jmp   .Lx286_52
.Lx286_49:
                        cmp              edx, 14
                                                                                        je    .Lx286_52
                        cmp              ecx, 7
                                                                                        je    .Lx286_53
                        cmp              edx, 7
                                                                                        je    .Lx286_53
                        cmp              ecx, 6
                                                                                        jne   .Lx286_50
                        cmp              edx, 6
                                                                                        jne   .Lx286_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx286_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx286_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx286_51
                                                                                        jmp   .Lx286_52
.Lx286_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx286_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx286_53
.Lx286_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx286_54
.Lx286_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx286_54
.Lx286_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx286_54:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n205_var_ref_α
                                                                                        jmp   n204_lit_string_α
n203_op11_β:
                                                                                        jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n206_var_ref_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "davis"
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n208_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n209_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx295_21
.Lx295_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx295_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx295_23
.Lx295_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx295_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx295_1
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx295_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx295_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_1:
                        call             rt_faildescr@PLT
.Lx295_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n191_suspend_α
n208_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx296_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx296_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx296_41
                        cmp              esi, 1
                                                                                        jne   .Lx296_55
                        mov              r8, rax
                                                                                        jmp   .Lx296_40
.Lx296_55:
                        cmp              esi, 2
                                                                                        jne   .Lx296_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx296_41
                        mov              r8, rax
                                                                                        jmp   .Lx296_40
.Lx296_56:
                        cmp              eax, 13
                                                                                        jne   .Lx296_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx296_41
                        cmp              rax, r8
                                                                                        je    .Lx296_41
                        mov              r8, rax
                                                                                        jmp   .Lx296_40
.Lx296_41:
                        lea              r9, [rbp + 800]
.Lx296_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx296_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx296_43
                        cmp              esi, 1
                                                                                        jne   .Lx296_57
                        mov              r9, rax
                                                                                        jmp   .Lx296_42
.Lx296_57:
                        cmp              esi, 2
                                                                                        jne   .Lx296_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx296_43
                        mov              r9, rax
                                                                                        jmp   .Lx296_42
.Lx296_58:
                        cmp              eax, 13
                                                                                        jne   .Lx296_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx296_43
                        cmp              rax, r9
                                                                                        je    .Lx296_43
                        mov              r9, rax
                                                                                        jmp   .Lx296_42
.Lx296_43:
                        cmp              r8, r9
                                                                                        je    .Lx296_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx296_44
                        cmp              eax, 99
                                                                                        je    .Lx296_44
                        cmp              eax, 13
                                                                                        jne   .Lx296_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx296_44
                                                                                        jmp   .Lx296_45
.Lx296_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx296_53
                        cmp              eax, 99
                                                                                        je    .Lx296_53
                        cmp              eax, 13
                                                                                        jne   .Lx296_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx296_53
                                                                                        jmp   .Lx296_46
.Lx296_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx296_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx296_53
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
                                                                                        jmp   .Lx296_51
.Lx296_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx296_47
                        cmp              eax, 99
                                                                                        je    .Lx296_47
                        cmp              eax, 13
                                                                                        jne   .Lx296_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx296_47
                                                                                        jmp   .Lx296_48
.Lx296_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx296_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx296_53
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
                                                                                        jmp   .Lx296_51
.Lx296_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx296_49
                        cmp              edx, 14
                                                                                        je    .Lx296_53
                                                                                        jmp   .Lx296_52
.Lx296_49:
                        cmp              edx, 14
                                                                                        je    .Lx296_52
                        cmp              ecx, 7
                                                                                        je    .Lx296_53
                        cmp              edx, 7
                                                                                        je    .Lx296_53
                        cmp              ecx, 6
                                                                                        jne   .Lx296_50
                        cmp              edx, 6
                                                                                        jne   .Lx296_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx296_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx296_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx296_51
                                                                                        jmp   .Lx296_52
.Lx296_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx296_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx296_53
.Lx296_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx296_54
.Lx296_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx296_54
.Lx296_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx296_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n210_lit_string_α
n209_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n211_var_ref_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "evans"
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n212_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              qword ptr [rbp + 704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx301_21
.Lx301_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx301_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_22
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx301_23
.Lx301_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx301_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx301_1
                        lea              rcx, [rip + .Lx301_3]
                        lea              rdx, [rip + .Lx301_4]
                                                                                        jmp   rax
.Lx301_3:
                        mov              qword ptr [rbp + 712], rsp
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx301_5
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_4:
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx301_6
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_1:
                        call             rt_faildescr@PLT
.Lx301_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n191_suspend_α
n212_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 712]
                                                                                        jmp   qword ptr [rsp]
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_β:
                                                                                        jmp   qword ptr [rbp + 1728]
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_holder_sex$2F7_res]
                        push             rax
                        mov              rax, [rbp + 1864]
                        mov              rbp, [rbp + 1880]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_ω:
                        mov              rax, [rbp + 1872]
                        lea              rsp, [rbp + 1888]
                        mov              rbp, [rbp + 1880]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 2704
                        mov              [rsp + 2680], rcx
                        mov              [rsp + 2688], rdx
                        mov              [rsp + 2696], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2576
                        mov              edx, 2672
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n302_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx390_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx390_101
.Lx390_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx390_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n303_var_ref_α
n302_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        mov              qword ptr [rbp + 2528], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_20
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx394_21
.Lx394_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        call             rt_arg_stage@PLT
.Lx394_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx394_1
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4]
                                                                                        jmp   rax
.Lx394_3:
                        mov              qword ptr [rbp + 2536], rsp
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx394_5
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_4:
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx394_6
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_1:
                        call             rt_faildescr@PLT
.Lx394_2:
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n306_op11_α
                                                                                        jmp   n305_var_ref_α
n304_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2536]
                                                                                        jmp   qword ptr [rsp]
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n307_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n306_op11_α:
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
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   proc_puzzle$2F0_ω
n306_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        mov              qword ptr [rbp + 2448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx399_20
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx399_21
.Lx399_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        call             rt_arg_stage@PLT
.Lx399_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx399_1
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_3:
                        mov              qword ptr [rbp + 2456], rsp
                        mov              rax, qword ptr [rbp + 2448]
                        test             rax, rax
                                                                                        jne   .Lx399_5
                        mov              qword ptr [rbp + 2448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_4:
                        mov              rax, qword ptr [rbp + 2448]
                        test             rax, rax
                                                                                        jne   .Lx399_6
                        mov              qword ptr [rbp + 2448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_1:
                        call             rt_faildescr@PLT
.Lx399_2:
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n304_call_proc_staged_β
                                                                                        jmp   n308_var_ref_α
n307_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2456]
                                                                                        jmp   qword ptr [rsp]
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n309_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_proc_staged_α:
                        mov              qword ptr [rbp + 2368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx403_20
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx403_21
.Lx403_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_arg_stage@PLT
.Lx403_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx403_1
                        lea              rcx, [rip + .Lx403_3]
                        lea              rdx, [rip + .Lx403_4]
                                                                                        jmp   rax
.Lx403_3:
                        mov              qword ptr [rbp + 2376], rsp
                        mov              rax, qword ptr [rbp + 2368]
                        test             rax, rax
                                                                                        jne   .Lx403_5
                        mov              qword ptr [rbp + 2368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_4:
                        mov              rax, qword ptr [rbp + 2368]
                        test             rax, rax
                                                                                        jne   .Lx403_6
                        mov              qword ptr [rbp + 2368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_1:
                        call             rt_faildescr@PLT
.Lx403_2:
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n307_call_proc_staged_β
                                                                                        jmp   n310_var_ref_α
n309_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2376]
                                                                                        jmp   qword ptr [rsp]
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n311_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_proc_staged_α:
                        mov              qword ptr [rbp + 2288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_20
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx407_21
.Lx407_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        call             rt_arg_stage@PLT
.Lx407_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx407_1
                        lea              rcx, [rip + .Lx407_3]
                        lea              rdx, [rip + .Lx407_4]
                                                                                        jmp   rax
.Lx407_3:
                        mov              qword ptr [rbp + 2296], rsp
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx407_5
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_4:
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx407_6
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_1:
                        call             rt_faildescr@PLT
.Lx407_2:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n309_call_proc_staged_β
                                                                                        jmp   n312_var_ref_α
n311_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2296]
                                                                                        jmp   qword ptr [rsp]
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n313_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        mov              qword ptr [rbp + 2208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx411_20
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx411_21
.Lx411_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        call             rt_arg_stage@PLT
.Lx411_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx411_1
                        lea              rcx, [rip + .Lx411_3]
                        lea              rdx, [rip + .Lx411_4]
                                                                                        jmp   rax
.Lx411_3:
                        mov              qword ptr [rbp + 2216], rsp
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx411_5
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx411_2
.Lx411_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx411_2
.Lx411_4:
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx411_6
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx411_2
.Lx411_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx411_2
.Lx411_1:
                        call             rt_faildescr@PLT
.Lx411_2:
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n311_call_proc_staged_β
                                                                                        jmp   n314_var_ref_α
n313_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2216]
                                                                                        jmp   qword ptr [rsp]
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n319_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_20
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx423_21
.Lx423_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        call             rt_arg_stage@PLT
.Lx423_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_22
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx423_23
.Lx423_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        call             rt_arg_stage@PLT
.Lx423_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_24
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx423_25
.Lx423_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        call             rt_arg_stage@PLT
.Lx423_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_26
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx423_27
.Lx423_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        call             rt_arg_stage@PLT
.Lx423_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_28
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx423_29
.Lx423_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        call             rt_arg_stage@PLT
.Lx423_29:
                        mov              edi, 6
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx423_1
                        lea              rcx, [rip + .Lx423_3]
                        lea              rdx, [rip + .Lx423_4]
                                                                                        jmp   rax
.Lx423_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx423_2
.Lx423_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx423_2
.Lx423_1:
                        call             rt_faildescr@PLT
.Lx423_2:
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n313_call_proc_staged_β
                                                                                        jmp   n320_var_ref_α
n319_call_proc_staged_β:
                                                                                        jmp   n313_call_proc_staged_β
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "all_diff5/5"
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n322_op11_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              rsi, qword ptr [rip + .Lx427_2]
                                                                                        jmp   .Lx427_3
.Lx427_2:
                        .quad            .Lx427_2_s
.Lx427_2_s:
                        .string          "buyer"
.Lx427_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n323_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n322_op11_β:
                                                                                        jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n325_op11_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              rsi, qword ptr [rip + .Lx431_2]
                                                                                        jmp   .Lx431_3
.Lx431_2:
                        .quad            .Lx431_2_s
.Lx431_2_s:
                        .string          "buyer"
.Lx431_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n326_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n325_op11_β:
                                                                                        jmp   n326_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n327_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n328_op11_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              rsi, qword ptr [rip + .Lx435_2]
                                                                                        jmp   .Lx435_3
.Lx435_2:
                        .quad            .Lx435_2_s
.Lx435_2_s:
                        .string          "buyer"
.Lx435_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n329_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n328_op11_β:
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n331_op11_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx439_2]
                                                                                        jmp   .Lx439_3
.Lx439_2:
                        .quad            .Lx439_2_s
.Lx439_2_s:
                        .string          "cashier"
.Lx439_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n332_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n331_op11_β:
                                                                                        jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n334_op11_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n334_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx443_2]
                                                                                        jmp   .Lx443_3
.Lx443_2:
                        .quad            .Lx443_2_s
.Lx443_2_s:
                        .string          "clerk"
.Lx443_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n335_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n334_op11_β:
                                                                                        jmp   n335_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n337_op11_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n337_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              rsi, qword ptr [rip + .Lx447_2]
                                                                                        jmp   .Lx447_3
.Lx447_2:
                        .quad            .Lx447_2_s
.Lx447_2_s:
                        .string          "manager"
.Lx447_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n338_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n337_op11_β:
                                                                                        jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n340_op11_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              rsi, qword ptr [rip + .Lx451_2]
                                                                                        jmp   .Lx451_3
.Lx451_2:
                        .quad            .Lx451_2_s
.Lx451_2_s:
                        .string          "clerk"
.Lx451_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n341_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n340_op11_β:
                                                                                        jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n343_op11_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lx455_2]
                                                                                        jmp   .Lx455_3
.Lx455_2:
                        .quad            .Lx455_2_s
.Lx455_2_s:
                        .string          "cashier"
.Lx455_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n344_var_ref_α
                                                                                        jmp   n319_call_proc_staged_β
n343_op11_β:
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n349_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx467_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx467_21
.Lx467_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx467_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx467_22
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx467_23
.Lx467_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        call             rt_arg_stage@PLT
.Lx467_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx467_24
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx467_25
.Lx467_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_arg_stage@PLT
.Lx467_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx467_26
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx467_27
.Lx467_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        call             rt_arg_stage@PLT
.Lx467_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx467_28
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx467_29
.Lx467_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        call             rt_arg_stage@PLT
.Lx467_29:
                        mov              edi, 5
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx467_1
                        lea              rcx, [rip + .Lx467_3]
                        lea              rdx, [rip + .Lx467_4]
                                                                                        jmp   rax
.Lx467_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx467_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx467_2
.Lx467_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx467_2
.Lx467_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx467_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx467_2
.Lx467_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx467_2
.Lx467_1:
                        call             rt_faildescr@PLT
.Lx467_2:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n319_call_proc_staged_β
                                                                                        jmp   n350_var_ref_α
n349_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "cashier_manager_same_sex/5"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n352_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n354_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n355_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n355_call_proc_staged_α:
                        mov              qword ptr [rbp + 1024], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx479_21
.Lx479_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx479_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx479_23
.Lx479_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx479_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_24
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx479_25
.Lx479_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        call             rt_arg_stage@PLT
.Lx479_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_26
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx479_27
.Lx479_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        call             rt_arg_stage@PLT
.Lx479_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_28
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx479_29
.Lx479_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        call             rt_arg_stage@PLT
.Lx479_29:
                        mov              edi, 7
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx479_1
                        lea              rcx, [rip + .Lx479_3]
                        lea              rdx, [rip + .Lx479_4]
                                                                                        jmp   rax
.Lx479_3:
                        mov              qword ptr [rbp + 1032], rsp
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx479_5
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx479_2
.Lx479_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx479_2
.Lx479_4:
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx479_6
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx479_2
.Lx479_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx479_2
.Lx479_1:
                        call             rt_faildescr@PLT
.Lx479_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n349_call_proc_staged_β
                                                                                        jmp   n356_var_ref_α
n355_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1032]
                                                                                        jmp   qword ptr [rsp]
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "clerk_cashier_opp/5"
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n357_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n358_op11_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              rsi, qword ptr [rip + .Lx483_2]
                                                                                        jmp   .Lx483_3
.Lx483_2:
                        .quad            .Lx483_2_s
.Lx483_2_s:
                        .string          "clerk"
.Lx483_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n360_var_ref_α
                                                                                        jmp   n359_var_ref_α
n358_op11_β:
                                                                                        jmp   n360_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n361_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n363_op11_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n364_op11_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx490_2]
                                                                                        jmp   .Lx490_3
.Lx490_2:
                        .quad            .Lx490_2_s
.Lx490_2_s:
                        .string          "cashier"
.Lx490_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n360_var_ref_α
                                                                                        jmp   n355_call_proc_staged_β
n363_op11_β:
                                                                                        jmp   n360_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n364_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx491_2]
                                                                                        jmp   .Lx491_3
.Lx491_2:
                        .quad            .Lx491_2_s
.Lx491_2_s:
                        .string          "clerk"
.Lx491_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                                                                                        jmp   n365_var_ref_α
n364_op11_β:
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n368_op11_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "Ames="
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n369_op11_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn497:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn497]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n370_var_α
n368_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n369_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx498_2]
                                                                                        jmp   .Lx498_3
.Lx498_2:
                        .quad            .Lx498_2_s
.Lx498_2_s:
                        .string          "cashier"
.Lx498_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                                                                                        jmp   n355_call_proc_staged_β
n369_op11_β:
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n371_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn502:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n372_lit_string_α
n371_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n373_op11_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          " Brown="
#-----------------------------------------------------------------------------------------------------------------------
n373_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn505:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n374_var_α
n373_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n375_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn509:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n376_lit_string_α
n375_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n377_op11_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          " Conroy="
#-----------------------------------------------------------------------------------------------------------------------
n377_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn512:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n378_var_α
n377_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n379_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n379_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn516:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n380_lit_string_α
n379_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n381_op11_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          " Davis="
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn519:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn519]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n382_var_α
n381_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n383_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn523:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n384_lit_string_α
n383_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n385_op11_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          " Evans="
#-----------------------------------------------------------------------------------------------------------------------
n385_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn526:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n386_var_α
n385_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn530:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn530]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n388_lit_string_α
n387_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n389_op11_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n389_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn533:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn533]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n355_call_proc_staged_β
                                                                                        jmp   n355_call_proc_staged_β
n389_op11_β:
                                                                                        jmp   n355_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_puzzle$2F0_res]
                        push             rax
                        mov              rax, [rbp + 2680]
                        mov              rbp, [rbp + 2696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 2688]
                        lea              rsp, [rbp + 2704]
                        mov              rbp, [rbp + 2696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
                        .global          proc_$disj0$2F0_α
                        .global          proc_$disj0$2F0_β
                        .global          proc_$disj0$2F0_γ
                        .global          proc_$disj0$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n536_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n534_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx540_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx540_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx540_101
.Lx540_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx540_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n535_call_proc_staged_α
n534_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx542_1
                        lea              rcx, [rip + .Lx542_3]
                        lea              rdx, [rip + .Lx542_4]
                                                                                        jmp   rax
.Lx542_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx542_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx542_2
.Lx542_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx542_2
.Lx542_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx542_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx542_2
.Lx542_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx542_2
.Lx542_1:
                        call             rt_faildescr@PLT
.Lx542_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n537_op11_α
                                                                                        jmp   n536_suspend_α
n535_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n536_suspend_α:
                        lea              rax, [rip + n536_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n536_suspend_β:
                                                                                        jmp   n535_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n537_op11_α:
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
                                                                                        jmp   n538_suspend_α
n537_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n538_suspend_α:
                        lea              rax, [rip + n538_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n538_suspend_β:
                                                                                        jmp   n539_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_op11_α:
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
n539_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cashier_manager_same_sex$2F5_α
proc_cashier_manager_same_sex$2F5_α:
                        .global          proc_cashier_manager_same_sex$2F5_α
                        .global          proc_cashier_manager_same_sex$2F5_β
                        .global          proc_cashier_manager_same_sex$2F5_γ
                        .global          proc_cashier_manager_same_sex$2F5_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1184
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_cashier_manager_same_sex$2F5_α_body:
                        lea              rax, [rip + n585_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
#-----------------------------------------------------------------------------------------------------------------------
n549_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx586_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx586_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx586_101
.Lx586_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx586_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_cashier_manager_same_sex$2F5_ω
                                                                                        jmp   n550_var_ref_α
n549_op11_β:
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n551_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx591_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx591_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_41
                        cmp              esi, 1
                                                                                        jne   .Lx591_55
                        mov              r8, rax
                                                                                        jmp   .Lx591_40
.Lx591_55:
                        cmp              esi, 2
                                                                                        jne   .Lx591_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_41
                        mov              r8, rax
                                                                                        jmp   .Lx591_40
.Lx591_56:
                        cmp              eax, 13
                                                                                        jne   .Lx591_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_41
                        cmp              rax, r8
                                                                                        je    .Lx591_41
                        mov              r8, rax
                                                                                        jmp   .Lx591_40
.Lx591_41:
                        lea              r9, [rbp + 1136]
.Lx591_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx591_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_43
                        cmp              esi, 1
                                                                                        jne   .Lx591_57
                        mov              r9, rax
                                                                                        jmp   .Lx591_42
.Lx591_57:
                        cmp              esi, 2
                                                                                        jne   .Lx591_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_43
                        mov              r9, rax
                                                                                        jmp   .Lx591_42
.Lx591_58:
                        cmp              eax, 13
                                                                                        jne   .Lx591_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_43
                        cmp              rax, r9
                                                                                        je    .Lx591_43
                        mov              r9, rax
                                                                                        jmp   .Lx591_42
.Lx591_43:
                        cmp              r8, r9
                                                                                        je    .Lx591_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_44
                        cmp              eax, 99
                                                                                        je    .Lx591_44
                        cmp              eax, 13
                                                                                        jne   .Lx591_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx591_44
                                                                                        jmp   .Lx591_45
.Lx591_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_53
                        cmp              eax, 99
                                                                                        je    .Lx591_53
                        cmp              eax, 13
                                                                                        jne   .Lx591_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx591_53
                                                                                        jmp   .Lx591_46
.Lx591_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx591_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx591_53
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
                                                                                        jmp   .Lx591_51
.Lx591_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_47
                        cmp              eax, 99
                                                                                        je    .Lx591_47
                        cmp              eax, 13
                                                                                        jne   .Lx591_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx591_47
                                                                                        jmp   .Lx591_48
.Lx591_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx591_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx591_53
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
                                                                                        jmp   .Lx591_51
.Lx591_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx591_49
                        cmp              edx, 14
                                                                                        je    .Lx591_53
                                                                                        jmp   .Lx591_52
.Lx591_49:
                        cmp              edx, 14
                                                                                        je    .Lx591_52
                        cmp              ecx, 7
                                                                                        je    .Lx591_53
                        cmp              edx, 7
                                                                                        je    .Lx591_53
                        cmp              ecx, 6
                                                                                        jne   .Lx591_50
                        cmp              edx, 6
                                                                                        jne   .Lx591_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx591_51
                                                                                        jmp   .Lx591_52
.Lx591_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx591_53
.Lx591_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx591_54
.Lx591_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx591_54
.Lx591_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx591_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n554_op11_α
                                                                                        jmp   n553_var_ref_α
n552_op11_β:
                                                                                        jmp   n554_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n555_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n554_op11_α:
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
                                                                                        je    proc_cashier_manager_same_sex$2F5_ω
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_ω
n554_op11_β:
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n556_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
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
.Lx597_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx597_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_41
                        cmp              esi, 1
                                                                                        jne   .Lx597_55
                        mov              r8, rax
                                                                                        jmp   .Lx597_40
.Lx597_55:
                        cmp              esi, 2
                                                                                        jne   .Lx597_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx597_41
                        mov              r8, rax
                                                                                        jmp   .Lx597_40
.Lx597_56:
                        cmp              eax, 13
                                                                                        jne   .Lx597_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_41
                        cmp              rax, r8
                                                                                        je    .Lx597_41
                        mov              r8, rax
                                                                                        jmp   .Lx597_40
.Lx597_41:
                        lea              r9, [rbp + 1056]
.Lx597_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx597_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_43
                        cmp              esi, 1
                                                                                        jne   .Lx597_57
                        mov              r9, rax
                                                                                        jmp   .Lx597_42
.Lx597_57:
                        cmp              esi, 2
                                                                                        jne   .Lx597_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx597_43
                        mov              r9, rax
                                                                                        jmp   .Lx597_42
.Lx597_58:
                        cmp              eax, 13
                                                                                        jne   .Lx597_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_43
                        cmp              rax, r9
                                                                                        je    .Lx597_43
                        mov              r9, rax
                                                                                        jmp   .Lx597_42
.Lx597_43:
                        cmp              r8, r9
                                                                                        je    .Lx597_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx597_44
                        cmp              eax, 99
                                                                                        je    .Lx597_44
                        cmp              eax, 13
                                                                                        jne   .Lx597_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx597_44
                                                                                        jmp   .Lx597_45
.Lx597_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx597_53
                        cmp              eax, 99
                                                                                        je    .Lx597_53
                        cmp              eax, 13
                                                                                        jne   .Lx597_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx597_53
                                                                                        jmp   .Lx597_46
.Lx597_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx597_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx597_53
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
                                                                                        jmp   .Lx597_51
.Lx597_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx597_47
                        cmp              eax, 99
                                                                                        je    .Lx597_47
                        cmp              eax, 13
                                                                                        jne   .Lx597_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx597_47
                                                                                        jmp   .Lx597_48
.Lx597_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx597_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx597_53
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
                                                                                        jmp   .Lx597_51
.Lx597_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx597_49
                        cmp              edx, 14
                                                                                        je    .Lx597_53
                                                                                        jmp   .Lx597_52
.Lx597_49:
                        cmp              edx, 14
                                                                                        je    .Lx597_52
                        cmp              ecx, 7
                                                                                        je    .Lx597_53
                        cmp              edx, 7
                                                                                        je    .Lx597_53
                        cmp              ecx, 6
                                                                                        jne   .Lx597_50
                        cmp              edx, 6
                                                                                        jne   .Lx597_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx597_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx597_51
                                                                                        jmp   .Lx597_52
.Lx597_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx597_53
.Lx597_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx597_54
.Lx597_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx597_54
.Lx597_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx597_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n554_op11_α
                                                                                        jmp   n557_var_ref_α
n556_op11_β:
                                                                                        jmp   n554_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n558_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n559_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n559_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
.Lx602_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx602_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_41
                        cmp              esi, 1
                                                                                        jne   .Lx602_55
                        mov              r8, rax
                                                                                        jmp   .Lx602_40
.Lx602_55:
                        cmp              esi, 2
                                                                                        jne   .Lx602_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx602_41
                        mov              r8, rax
                                                                                        jmp   .Lx602_40
.Lx602_56:
                        cmp              eax, 13
                                                                                        jne   .Lx602_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_41
                        cmp              rax, r8
                                                                                        je    .Lx602_41
                        mov              r8, rax
                                                                                        jmp   .Lx602_40
.Lx602_41:
                        lea              r9, [rbp + 976]
.Lx602_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx602_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_43
                        cmp              esi, 1
                                                                                        jne   .Lx602_57
                        mov              r9, rax
                                                                                        jmp   .Lx602_42
.Lx602_57:
                        cmp              esi, 2
                                                                                        jne   .Lx602_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx602_43
                        mov              r9, rax
                                                                                        jmp   .Lx602_42
.Lx602_58:
                        cmp              eax, 13
                                                                                        jne   .Lx602_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_43
                        cmp              rax, r9
                                                                                        je    .Lx602_43
                        mov              r9, rax
                                                                                        jmp   .Lx602_42
.Lx602_43:
                        cmp              r8, r9
                                                                                        je    .Lx602_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx602_44
                        cmp              eax, 99
                                                                                        je    .Lx602_44
                        cmp              eax, 13
                                                                                        jne   .Lx602_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx602_44
                                                                                        jmp   .Lx602_45
.Lx602_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx602_53
                        cmp              eax, 99
                                                                                        je    .Lx602_53
                        cmp              eax, 13
                                                                                        jne   .Lx602_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx602_53
                                                                                        jmp   .Lx602_46
.Lx602_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx602_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx602_53
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
                                                                                        jmp   .Lx602_51
.Lx602_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx602_47
                        cmp              eax, 99
                                                                                        je    .Lx602_47
                        cmp              eax, 13
                                                                                        jne   .Lx602_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx602_47
                                                                                        jmp   .Lx602_48
.Lx602_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx602_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx602_53
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
                                                                                        jmp   .Lx602_51
.Lx602_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx602_49
                        cmp              edx, 14
                                                                                        je    .Lx602_53
                                                                                        jmp   .Lx602_52
.Lx602_49:
                        cmp              edx, 14
                                                                                        je    .Lx602_52
                        cmp              ecx, 7
                                                                                        je    .Lx602_53
                        cmp              edx, 7
                                                                                        je    .Lx602_53
                        cmp              ecx, 6
                                                                                        jne   .Lx602_50
                        cmp              edx, 6
                                                                                        jne   .Lx602_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx602_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx602_51
                                                                                        jmp   .Lx602_52
.Lx602_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx602_53
.Lx602_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx602_54
.Lx602_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx602_54
.Lx602_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx602_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n554_op11_α
                                                                                        jmp   n560_var_ref_α
n559_op11_β:
                                                                                        jmp   n554_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n561_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n562_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n562_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        lea              r8, [rbp + 880]
.Lx607_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx607_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx607_41
                        cmp              esi, 1
                                                                                        jne   .Lx607_55
                        mov              r8, rax
                                                                                        jmp   .Lx607_40
.Lx607_55:
                        cmp              esi, 2
                                                                                        jne   .Lx607_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx607_41
                        mov              r8, rax
                                                                                        jmp   .Lx607_40
.Lx607_56:
                        cmp              eax, 13
                                                                                        jne   .Lx607_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx607_41
                        cmp              rax, r8
                                                                                        je    .Lx607_41
                        mov              r8, rax
                                                                                        jmp   .Lx607_40
.Lx607_41:
                        lea              r9, [rbp + 896]
.Lx607_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx607_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx607_43
                        cmp              esi, 1
                                                                                        jne   .Lx607_57
                        mov              r9, rax
                                                                                        jmp   .Lx607_42
.Lx607_57:
                        cmp              esi, 2
                                                                                        jne   .Lx607_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx607_43
                        mov              r9, rax
                                                                                        jmp   .Lx607_42
.Lx607_58:
                        cmp              eax, 13
                                                                                        jne   .Lx607_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx607_43
                        cmp              rax, r9
                                                                                        je    .Lx607_43
                        mov              r9, rax
                                                                                        jmp   .Lx607_42
.Lx607_43:
                        cmp              r8, r9
                                                                                        je    .Lx607_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx607_44
                        cmp              eax, 99
                                                                                        je    .Lx607_44
                        cmp              eax, 13
                                                                                        jne   .Lx607_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx607_44
                                                                                        jmp   .Lx607_45
.Lx607_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx607_53
                        cmp              eax, 99
                                                                                        je    .Lx607_53
                        cmp              eax, 13
                                                                                        jne   .Lx607_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx607_53
                                                                                        jmp   .Lx607_46
.Lx607_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx607_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx607_53
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
                                                                                        jmp   .Lx607_51
.Lx607_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx607_47
                        cmp              eax, 99
                                                                                        je    .Lx607_47
                        cmp              eax, 13
                                                                                        jne   .Lx607_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx607_47
                                                                                        jmp   .Lx607_48
.Lx607_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx607_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx607_53
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
                                                                                        jmp   .Lx607_51
.Lx607_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx607_49
                        cmp              edx, 14
                                                                                        je    .Lx607_53
                                                                                        jmp   .Lx607_52
.Lx607_49:
                        cmp              edx, 14
                                                                                        je    .Lx607_52
                        cmp              ecx, 7
                                                                                        je    .Lx607_53
                        cmp              edx, 7
                                                                                        je    .Lx607_53
                        cmp              ecx, 6
                                                                                        jne   .Lx607_50
                        cmp              edx, 6
                                                                                        jne   .Lx607_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx607_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx607_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx607_51
                                                                                        jmp   .Lx607_52
.Lx607_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx607_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx607_53
.Lx607_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx607_54
.Lx607_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx607_54
.Lx607_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx607_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n554_op11_α
                                                                                        jmp   n563_var_ref_α
n562_op11_β:
                                                                                        jmp   n554_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n564_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n565_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n565_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
.Lx612_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx612_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx612_41
                        cmp              esi, 1
                                                                                        jne   .Lx612_55
                        mov              r8, rax
                                                                                        jmp   .Lx612_40
.Lx612_55:
                        cmp              esi, 2
                                                                                        jne   .Lx612_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx612_41
                        mov              r8, rax
                                                                                        jmp   .Lx612_40
.Lx612_56:
                        cmp              eax, 13
                                                                                        jne   .Lx612_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx612_41
                        cmp              rax, r8
                                                                                        je    .Lx612_41
                        mov              r8, rax
                                                                                        jmp   .Lx612_40
.Lx612_41:
                        lea              r9, [rbp + 816]
.Lx612_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx612_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx612_43
                        cmp              esi, 1
                                                                                        jne   .Lx612_57
                        mov              r9, rax
                                                                                        jmp   .Lx612_42
.Lx612_57:
                        cmp              esi, 2
                                                                                        jne   .Lx612_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx612_43
                        mov              r9, rax
                                                                                        jmp   .Lx612_42
.Lx612_58:
                        cmp              eax, 13
                                                                                        jne   .Lx612_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx612_43
                        cmp              rax, r9
                                                                                        je    .Lx612_43
                        mov              r9, rax
                                                                                        jmp   .Lx612_42
.Lx612_43:
                        cmp              r8, r9
                                                                                        je    .Lx612_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx612_44
                        cmp              eax, 99
                                                                                        je    .Lx612_44
                        cmp              eax, 13
                                                                                        jne   .Lx612_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx612_44
                                                                                        jmp   .Lx612_45
.Lx612_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx612_53
                        cmp              eax, 99
                                                                                        je    .Lx612_53
                        cmp              eax, 13
                                                                                        jne   .Lx612_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx612_53
                                                                                        jmp   .Lx612_46
.Lx612_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx612_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx612_53
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
                                                                                        jmp   .Lx612_51
.Lx612_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx612_47
                        cmp              eax, 99
                                                                                        je    .Lx612_47
                        cmp              eax, 13
                                                                                        jne   .Lx612_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx612_47
                                                                                        jmp   .Lx612_48
.Lx612_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx612_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx612_53
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
                                                                                        jmp   .Lx612_51
.Lx612_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx612_49
                        cmp              edx, 14
                                                                                        je    .Lx612_53
                                                                                        jmp   .Lx612_52
.Lx612_49:
                        cmp              edx, 14
                                                                                        je    .Lx612_52
                        cmp              ecx, 7
                                                                                        je    .Lx612_53
                        cmp              edx, 7
                                                                                        je    .Lx612_53
                        cmp              ecx, 6
                                                                                        jne   .Lx612_50
                        cmp              edx, 6
                                                                                        jne   .Lx612_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx612_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx612_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx612_51
                                                                                        jmp   .Lx612_52
.Lx612_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx612_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx612_53
.Lx612_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx612_54
.Lx612_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx612_54
.Lx612_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx612_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n554_op11_α
                                                                                        jmp   n566_lit_string_α
n565_op11_β:
                                                                                        jmp   n554_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n567_var_ref_α
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n569_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n570_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n572_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n573_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx627_21
.Lx627_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx627_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx627_23
.Lx627_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx627_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_24
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx627_25
.Lx627_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        call             rt_arg_stage@PLT
.Lx627_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_26
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx627_27
.Lx627_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx627_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_28
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx627_29
.Lx627_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx627_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_30
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx627_31
.Lx627_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx627_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_32
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx627_33
.Lx627_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx627_33:
                        mov              edi, 2
                        mov              esi, 7
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx627_1
                        lea              rcx, [rip + .Lx627_3]
                        lea              rdx, [rip + .Lx627_4]
                                                                                        jmp   rax
.Lx627_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx627_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx627_2
.Lx627_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx627_2
.Lx627_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx627_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx627_2
.Lx627_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx627_2
.Lx627_1:
                        call             rt_faildescr@PLT
.Lx627_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n554_op11_α
                                                                                        jmp   n574_lit_string_α
n573_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n575_var_ref_α
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n576_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n577_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n579_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n580_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n581_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n581_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx642_21
.Lx642_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx642_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx642_23
.Lx642_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx642_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_24
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx642_25
.Lx642_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx642_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_26
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx642_27
.Lx642_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx642_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_28
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx642_29
.Lx642_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx642_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_30
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx642_31
.Lx642_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx642_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_32
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx642_33
.Lx642_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx642_33:
                        mov              edi, 2
                        mov              esi, 7
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx642_1
                        lea              rcx, [rip + .Lx642_3]
                        lea              rdx, [rip + .Lx642_4]
                                                                                        jmp   rax
.Lx642_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx642_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx642_2
.Lx642_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx642_2
.Lx642_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx642_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx642_2
.Lx642_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx642_2
.Lx642_1:
                        call             rt_faildescr@PLT
.Lx642_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n573_call_proc_staged_β
                                                                                        jmp   n582_var_ref_α
n581_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n583_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n584_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n584_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx647_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        cmp              esi, 1
                                                                                        jne   .Lx647_55
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_55:
                        cmp              esi, 2
                                                                                        jne   .Lx647_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_56:
                        cmp              eax, 13
                                                                                        jne   .Lx647_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        cmp              rax, r8
                                                                                        je    .Lx647_41
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_41:
                        lea              r9, [rbp + 192]
.Lx647_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        cmp              esi, 1
                                                                                        jne   .Lx647_57
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_57:
                        cmp              esi, 2
                                                                                        jne   .Lx647_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_58:
                        cmp              eax, 13
                                                                                        jne   .Lx647_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        cmp              rax, r9
                                                                                        je    .Lx647_43
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_43:
                        cmp              r8, r9
                                                                                        je    .Lx647_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_44
                        cmp              eax, 99
                                                                                        je    .Lx647_44
                        cmp              eax, 13
                                                                                        jne   .Lx647_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx647_44
                                                                                        jmp   .Lx647_45
.Lx647_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_53
                        cmp              eax, 99
                                                                                        je    .Lx647_53
                        cmp              eax, 13
                                                                                        jne   .Lx647_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx647_53
                                                                                        jmp   .Lx647_46
.Lx647_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx647_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx647_53
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
                                                                                        jmp   .Lx647_51
.Lx647_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_47
                        cmp              eax, 99
                                                                                        je    .Lx647_47
                        cmp              eax, 13
                                                                                        jne   .Lx647_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx647_47
                                                                                        jmp   .Lx647_48
.Lx647_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx647_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx647_53
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
                                                                                        jmp   .Lx647_51
.Lx647_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx647_49
                        cmp              edx, 14
                                                                                        je    .Lx647_53
                                                                                        jmp   .Lx647_52
.Lx647_49:
                        cmp              edx, 14
                                                                                        je    .Lx647_52
                        cmp              ecx, 7
                                                                                        je    .Lx647_53
                        cmp              edx, 7
                                                                                        je    .Lx647_53
                        cmp              ecx, 6
                                                                                        jne   .Lx647_50
                        cmp              edx, 6
                                                                                        jne   .Lx647_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx647_51
                                                                                        jmp   .Lx647_52
.Lx647_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx647_53
.Lx647_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx647_54
.Lx647_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx647_54
.Lx647_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx647_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n581_call_proc_staged_β
                                                                                        jmp   n585_suspend_α
n584_op11_β:
                                                                                        jmp   n581_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n585_suspend_α:
                        lea              rax, [rip + n585_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_γ
n585_suspend_β:
                                                                                        jmp   n581_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1184]
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_cashier_manager_same_sex$2F5_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_all_diff5$2F5_α
proc_all_diff5$2F5_α:
                        .global          proc_all_diff5$2F5_α
                        .global          proc_all_diff5$2F5_β
                        .global          proc_all_diff5$2F5_γ
                        .global          proc_all_diff5$2F5_ω
                        sub              rsp, 1504
                        mov              [rsp + 1480], rcx
                        mov              [rsp + 1488], rdx
                        mov              [rsp + 1496], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1392
                        mov              edx, 1472
                        call             rt_jmp_frame_lexprep2@PLT
proc_all_diff5$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n650_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx699_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx699_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx699_101
.Lx699_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx699_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_all_diff5$2F5_ω
                                                                                        jmp   n651_var_ref_α
n650_op11_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n651_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n652_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n652_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n653_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n653_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1328]
                        lea              r8, [rbp + 1328]
.Lx704_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx704_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_41
                        cmp              esi, 1
                                                                                        jne   .Lx704_55
                        mov              r8, rax
                                                                                        jmp   .Lx704_40
.Lx704_55:
                        cmp              esi, 2
                                                                                        jne   .Lx704_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx704_41
                        mov              r8, rax
                                                                                        jmp   .Lx704_40
.Lx704_56:
                        cmp              eax, 13
                                                                                        jne   .Lx704_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_41
                        cmp              rax, r8
                                                                                        je    .Lx704_41
                        mov              r8, rax
                                                                                        jmp   .Lx704_40
.Lx704_41:
                        lea              r9, [rbp + 1344]
.Lx704_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx704_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_43
                        cmp              esi, 1
                                                                                        jne   .Lx704_57
                        mov              r9, rax
                                                                                        jmp   .Lx704_42
.Lx704_57:
                        cmp              esi, 2
                                                                                        jne   .Lx704_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx704_43
                        mov              r9, rax
                                                                                        jmp   .Lx704_42
.Lx704_58:
                        cmp              eax, 13
                                                                                        jne   .Lx704_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_43
                        cmp              rax, r9
                                                                                        je    .Lx704_43
                        mov              r9, rax
                                                                                        jmp   .Lx704_42
.Lx704_43:
                        cmp              r8, r9
                                                                                        je    .Lx704_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_44
                        cmp              eax, 99
                                                                                        je    .Lx704_44
                        cmp              eax, 13
                                                                                        jne   .Lx704_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx704_44
                                                                                        jmp   .Lx704_45
.Lx704_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_53
                        cmp              eax, 99
                                                                                        je    .Lx704_53
                        cmp              eax, 13
                                                                                        jne   .Lx704_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx704_53
                                                                                        jmp   .Lx704_46
.Lx704_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx704_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx704_53
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
                                                                                        jmp   .Lx704_51
.Lx704_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_47
                        cmp              eax, 99
                                                                                        je    .Lx704_47
                        cmp              eax, 13
                                                                                        jne   .Lx704_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx704_47
                                                                                        jmp   .Lx704_48
.Lx704_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx704_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx704_53
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
                                                                                        jmp   .Lx704_51
.Lx704_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx704_49
                        cmp              edx, 14
                                                                                        je    .Lx704_53
                                                                                        jmp   .Lx704_52
.Lx704_49:
                        cmp              edx, 14
                                                                                        je    .Lx704_52
                        cmp              ecx, 7
                                                                                        je    .Lx704_53
                        cmp              edx, 7
                                                                                        je    .Lx704_53
                        cmp              ecx, 6
                                                                                        jne   .Lx704_50
                        cmp              edx, 6
                                                                                        jne   .Lx704_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx704_51
                                                                                        jmp   .Lx704_52
.Lx704_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx704_53
.Lx704_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx704_54
.Lx704_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx704_54
.Lx704_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx704_54:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n655_op11_α
                                                                                        jmp   n654_var_ref_α
n653_op11_β:
                                                                                        jmp   n655_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n656_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n655_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_all_diff5$2F5_ω
                                                                                        jmp   proc_all_diff5$2F5_ω
n655_op11_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n656_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n657_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n657_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1248]
                        lea              r8, [rbp + 1248]
.Lx710_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx710_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx710_41
                        cmp              esi, 1
                                                                                        jne   .Lx710_55
                        mov              r8, rax
                                                                                        jmp   .Lx710_40
.Lx710_55:
                        cmp              esi, 2
                                                                                        jne   .Lx710_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx710_41
                        mov              r8, rax
                                                                                        jmp   .Lx710_40
.Lx710_56:
                        cmp              eax, 13
                                                                                        jne   .Lx710_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx710_41
                        cmp              rax, r8
                                                                                        je    .Lx710_41
                        mov              r8, rax
                                                                                        jmp   .Lx710_40
.Lx710_41:
                        lea              r9, [rbp + 1264]
.Lx710_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx710_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx710_43
                        cmp              esi, 1
                                                                                        jne   .Lx710_57
                        mov              r9, rax
                                                                                        jmp   .Lx710_42
.Lx710_57:
                        cmp              esi, 2
                                                                                        jne   .Lx710_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx710_43
                        mov              r9, rax
                                                                                        jmp   .Lx710_42
.Lx710_58:
                        cmp              eax, 13
                                                                                        jne   .Lx710_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx710_43
                        cmp              rax, r9
                                                                                        je    .Lx710_43
                        mov              r9, rax
                                                                                        jmp   .Lx710_42
.Lx710_43:
                        cmp              r8, r9
                                                                                        je    .Lx710_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx710_44
                        cmp              eax, 99
                                                                                        je    .Lx710_44
                        cmp              eax, 13
                                                                                        jne   .Lx710_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx710_44
                                                                                        jmp   .Lx710_45
.Lx710_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx710_53
                        cmp              eax, 99
                                                                                        je    .Lx710_53
                        cmp              eax, 13
                                                                                        jne   .Lx710_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx710_53
                                                                                        jmp   .Lx710_46
.Lx710_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx710_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx710_53
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
                                                                                        jmp   .Lx710_51
.Lx710_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx710_47
                        cmp              eax, 99
                                                                                        je    .Lx710_47
                        cmp              eax, 13
                                                                                        jne   .Lx710_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx710_47
                                                                                        jmp   .Lx710_48
.Lx710_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx710_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx710_53
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
                                                                                        jmp   .Lx710_51
.Lx710_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx710_49
                        cmp              edx, 14
                                                                                        je    .Lx710_53
                                                                                        jmp   .Lx710_52
.Lx710_49:
                        cmp              edx, 14
                                                                                        je    .Lx710_52
                        cmp              ecx, 7
                                                                                        je    .Lx710_53
                        cmp              edx, 7
                                                                                        je    .Lx710_53
                        cmp              ecx, 6
                                                                                        jne   .Lx710_50
                        cmp              edx, 6
                                                                                        jne   .Lx710_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx710_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx710_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx710_51
                                                                                        jmp   .Lx710_52
.Lx710_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx710_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx710_53
.Lx710_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx710_54
.Lx710_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx710_54
.Lx710_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx710_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n655_op11_α
                                                                                        jmp   n658_var_ref_α
n657_op11_β:
                                                                                        jmp   n655_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n658_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n659_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n659_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n660_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n660_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx715_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx715_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_41
                        cmp              esi, 1
                                                                                        jne   .Lx715_55
                        mov              r8, rax
                                                                                        jmp   .Lx715_40
.Lx715_55:
                        cmp              esi, 2
                                                                                        jne   .Lx715_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx715_41
                        mov              r8, rax
                                                                                        jmp   .Lx715_40
.Lx715_56:
                        cmp              eax, 13
                                                                                        jne   .Lx715_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_41
                        cmp              rax, r8
                                                                                        je    .Lx715_41
                        mov              r8, rax
                                                                                        jmp   .Lx715_40
.Lx715_41:
                        lea              r9, [rbp + 1184]
.Lx715_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx715_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_43
                        cmp              esi, 1
                                                                                        jne   .Lx715_57
                        mov              r9, rax
                                                                                        jmp   .Lx715_42
.Lx715_57:
                        cmp              esi, 2
                                                                                        jne   .Lx715_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx715_43
                        mov              r9, rax
                                                                                        jmp   .Lx715_42
.Lx715_58:
                        cmp              eax, 13
                                                                                        jne   .Lx715_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_43
                        cmp              rax, r9
                                                                                        je    .Lx715_43
                        mov              r9, rax
                                                                                        jmp   .Lx715_42
.Lx715_43:
                        cmp              r8, r9
                                                                                        je    .Lx715_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx715_44
                        cmp              eax, 99
                                                                                        je    .Lx715_44
                        cmp              eax, 13
                                                                                        jne   .Lx715_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx715_44
                                                                                        jmp   .Lx715_45
.Lx715_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx715_53
                        cmp              eax, 99
                                                                                        je    .Lx715_53
                        cmp              eax, 13
                                                                                        jne   .Lx715_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx715_53
                                                                                        jmp   .Lx715_46
.Lx715_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx715_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx715_53
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
                                                                                        jmp   .Lx715_51
.Lx715_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx715_47
                        cmp              eax, 99
                                                                                        je    .Lx715_47
                        cmp              eax, 13
                                                                                        jne   .Lx715_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx715_47
                                                                                        jmp   .Lx715_48
.Lx715_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx715_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx715_53
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
                                                                                        jmp   .Lx715_51
.Lx715_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx715_49
                        cmp              edx, 14
                                                                                        je    .Lx715_53
                                                                                        jmp   .Lx715_52
.Lx715_49:
                        cmp              edx, 14
                                                                                        je    .Lx715_52
                        cmp              ecx, 7
                                                                                        je    .Lx715_53
                        cmp              edx, 7
                                                                                        je    .Lx715_53
                        cmp              ecx, 6
                                                                                        jne   .Lx715_50
                        cmp              edx, 6
                                                                                        jne   .Lx715_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx715_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx715_51
                                                                                        jmp   .Lx715_52
.Lx715_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx715_53
.Lx715_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx715_54
.Lx715_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx715_54
.Lx715_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx715_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n655_op11_α
                                                                                        jmp   n661_var_ref_α
n660_op11_β:
                                                                                        jmp   n655_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n661_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n662_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n662_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n663_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n663_op11_α:
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
.Lx720_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx720_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_41
                        cmp              esi, 1
                                                                                        jne   .Lx720_55
                        mov              r8, rax
                                                                                        jmp   .Lx720_40
.Lx720_55:
                        cmp              esi, 2
                                                                                        jne   .Lx720_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx720_41
                        mov              r8, rax
                                                                                        jmp   .Lx720_40
.Lx720_56:
                        cmp              eax, 13
                                                                                        jne   .Lx720_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_41
                        cmp              rax, r8
                                                                                        je    .Lx720_41
                        mov              r8, rax
                                                                                        jmp   .Lx720_40
.Lx720_41:
                        lea              r9, [rbp + 1104]
.Lx720_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx720_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_43
                        cmp              esi, 1
                                                                                        jne   .Lx720_57
                        mov              r9, rax
                                                                                        jmp   .Lx720_42
.Lx720_57:
                        cmp              esi, 2
                                                                                        jne   .Lx720_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx720_43
                        mov              r9, rax
                                                                                        jmp   .Lx720_42
.Lx720_58:
                        cmp              eax, 13
                                                                                        jne   .Lx720_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_43
                        cmp              rax, r9
                                                                                        je    .Lx720_43
                        mov              r9, rax
                                                                                        jmp   .Lx720_42
.Lx720_43:
                        cmp              r8, r9
                                                                                        je    .Lx720_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx720_44
                        cmp              eax, 99
                                                                                        je    .Lx720_44
                        cmp              eax, 13
                                                                                        jne   .Lx720_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx720_44
                                                                                        jmp   .Lx720_45
.Lx720_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx720_53
                        cmp              eax, 99
                                                                                        je    .Lx720_53
                        cmp              eax, 13
                                                                                        jne   .Lx720_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx720_53
                                                                                        jmp   .Lx720_46
.Lx720_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx720_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx720_53
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
                                                                                        jmp   .Lx720_51
.Lx720_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx720_47
                        cmp              eax, 99
                                                                                        je    .Lx720_47
                        cmp              eax, 13
                                                                                        jne   .Lx720_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx720_47
                                                                                        jmp   .Lx720_48
.Lx720_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx720_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx720_53
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
                                                                                        jmp   .Lx720_51
.Lx720_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx720_49
                        cmp              edx, 14
                                                                                        je    .Lx720_53
                                                                                        jmp   .Lx720_52
.Lx720_49:
                        cmp              edx, 14
                                                                                        je    .Lx720_52
                        cmp              ecx, 7
                                                                                        je    .Lx720_53
                        cmp              edx, 7
                                                                                        je    .Lx720_53
                        cmp              ecx, 6
                                                                                        jne   .Lx720_50
                        cmp              edx, 6
                                                                                        jne   .Lx720_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx720_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx720_51
                                                                                        jmp   .Lx720_52
.Lx720_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx720_53
.Lx720_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx720_54
.Lx720_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx720_54
.Lx720_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx720_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n655_op11_α
                                                                                        jmp   n664_var_ref_α
n663_op11_β:
                                                                                        jmp   n655_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n664_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n665_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n665_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n666_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n666_op11_α:
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
                        lea              r9, [rbp + 1024]
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
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n655_op11_α
                                                                                        jmp   n667_var_ref_α
n666_op11_β:
                                                                                        jmp   n655_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n667_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n668_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n668_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n669_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n669_op11_α:
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
.Lx730_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx730_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx730_41
                        cmp              esi, 1
                                                                                        jne   .Lx730_55
                        mov              r8, rax
                                                                                        jmp   .Lx730_40
.Lx730_55:
                        cmp              esi, 2
                                                                                        jne   .Lx730_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx730_41
                        mov              r8, rax
                                                                                        jmp   .Lx730_40
.Lx730_56:
                        cmp              eax, 13
                                                                                        jne   .Lx730_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx730_41
                        cmp              rax, r8
                                                                                        je    .Lx730_41
                        mov              r8, rax
                                                                                        jmp   .Lx730_40
.Lx730_41:
                        lea              r9, [rbp + 944]
.Lx730_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx730_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx730_43
                        cmp              esi, 1
                                                                                        jne   .Lx730_57
                        mov              r9, rax
                                                                                        jmp   .Lx730_42
.Lx730_57:
                        cmp              esi, 2
                                                                                        jne   .Lx730_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx730_43
                        mov              r9, rax
                                                                                        jmp   .Lx730_42
.Lx730_58:
                        cmp              eax, 13
                                                                                        jne   .Lx730_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx730_43
                        cmp              rax, r9
                                                                                        je    .Lx730_43
                        mov              r9, rax
                                                                                        jmp   .Lx730_42
.Lx730_43:
                        cmp              r8, r9
                                                                                        je    .Lx730_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx730_44
                        cmp              eax, 99
                                                                                        je    .Lx730_44
                        cmp              eax, 13
                                                                                        jne   .Lx730_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx730_44
                                                                                        jmp   .Lx730_45
.Lx730_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx730_53
                        cmp              eax, 99
                                                                                        je    .Lx730_53
                        cmp              eax, 13
                                                                                        jne   .Lx730_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx730_53
                                                                                        jmp   .Lx730_46
.Lx730_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx730_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx730_53
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
                                                                                        jmp   .Lx730_51
.Lx730_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx730_47
                        cmp              eax, 99
                                                                                        je    .Lx730_47
                        cmp              eax, 13
                                                                                        jne   .Lx730_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx730_47
                                                                                        jmp   .Lx730_48
.Lx730_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx730_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx730_53
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
                                                                                        jmp   .Lx730_51
.Lx730_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx730_49
                        cmp              edx, 14
                                                                                        je    .Lx730_53
                                                                                        jmp   .Lx730_52
.Lx730_49:
                        cmp              edx, 14
                                                                                        je    .Lx730_52
                        cmp              ecx, 7
                                                                                        je    .Lx730_53
                        cmp              edx, 7
                                                                                        je    .Lx730_53
                        cmp              ecx, 6
                                                                                        jne   .Lx730_50
                        cmp              edx, 6
                                                                                        jne   .Lx730_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx730_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx730_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx730_51
                                                                                        jmp   .Lx730_52
.Lx730_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx730_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx730_53
.Lx730_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx730_54
.Lx730_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx730_54
.Lx730_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx730_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n670_var_ref_α
                                                                                        jmp   n655_op11_α
n669_op11_β:
                                                                                        jmp   n670_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n670_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n671_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n671_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n672_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n672_op11_α:
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
.Lx735_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx735_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx735_41
                        cmp              esi, 1
                                                                                        jne   .Lx735_55
                        mov              r8, rax
                                                                                        jmp   .Lx735_40
.Lx735_55:
                        cmp              esi, 2
                                                                                        jne   .Lx735_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx735_41
                        mov              r8, rax
                                                                                        jmp   .Lx735_40
.Lx735_56:
                        cmp              eax, 13
                                                                                        jne   .Lx735_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx735_41
                        cmp              rax, r8
                                                                                        je    .Lx735_41
                        mov              r8, rax
                                                                                        jmp   .Lx735_40
.Lx735_41:
                        lea              r9, [rbp + 864]
.Lx735_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx735_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx735_43
                        cmp              esi, 1
                                                                                        jne   .Lx735_57
                        mov              r9, rax
                                                                                        jmp   .Lx735_42
.Lx735_57:
                        cmp              esi, 2
                                                                                        jne   .Lx735_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx735_43
                        mov              r9, rax
                                                                                        jmp   .Lx735_42
.Lx735_58:
                        cmp              eax, 13
                                                                                        jne   .Lx735_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx735_43
                        cmp              rax, r9
                                                                                        je    .Lx735_43
                        mov              r9, rax
                                                                                        jmp   .Lx735_42
.Lx735_43:
                        cmp              r8, r9
                                                                                        je    .Lx735_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx735_44
                        cmp              eax, 99
                                                                                        je    .Lx735_44
                        cmp              eax, 13
                                                                                        jne   .Lx735_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx735_44
                                                                                        jmp   .Lx735_45
.Lx735_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx735_53
                        cmp              eax, 99
                                                                                        je    .Lx735_53
                        cmp              eax, 13
                                                                                        jne   .Lx735_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx735_53
                                                                                        jmp   .Lx735_46
.Lx735_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx735_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx735_53
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
                                                                                        jmp   .Lx735_51
.Lx735_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx735_47
                        cmp              eax, 99
                                                                                        je    .Lx735_47
                        cmp              eax, 13
                                                                                        jne   .Lx735_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx735_47
                                                                                        jmp   .Lx735_48
.Lx735_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx735_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx735_53
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
                                                                                        jmp   .Lx735_51
.Lx735_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx735_49
                        cmp              edx, 14
                                                                                        je    .Lx735_53
                                                                                        jmp   .Lx735_52
.Lx735_49:
                        cmp              edx, 14
                                                                                        je    .Lx735_52
                        cmp              ecx, 7
                                                                                        je    .Lx735_53
                        cmp              edx, 7
                                                                                        je    .Lx735_53
                        cmp              ecx, 6
                                                                                        jne   .Lx735_50
                        cmp              edx, 6
                                                                                        jne   .Lx735_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx735_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx735_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx735_51
                                                                                        jmp   .Lx735_52
.Lx735_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx735_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx735_53
.Lx735_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx735_54
.Lx735_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx735_54
.Lx735_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx735_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n673_var_ref_α
                                                                                        jmp   n655_op11_α
n672_op11_β:
                                                                                        jmp   n673_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n673_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n674_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n674_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n675_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n675_op11_α:
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
.Lx740_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx740_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx740_41
                        cmp              esi, 1
                                                                                        jne   .Lx740_55
                        mov              r8, rax
                                                                                        jmp   .Lx740_40
.Lx740_55:
                        cmp              esi, 2
                                                                                        jne   .Lx740_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx740_41
                        mov              r8, rax
                                                                                        jmp   .Lx740_40
.Lx740_56:
                        cmp              eax, 13
                                                                                        jne   .Lx740_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx740_41
                        cmp              rax, r8
                                                                                        je    .Lx740_41
                        mov              r8, rax
                                                                                        jmp   .Lx740_40
.Lx740_41:
                        lea              r9, [rbp + 784]
.Lx740_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx740_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx740_43
                        cmp              esi, 1
                                                                                        jne   .Lx740_57
                        mov              r9, rax
                                                                                        jmp   .Lx740_42
.Lx740_57:
                        cmp              esi, 2
                                                                                        jne   .Lx740_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx740_43
                        mov              r9, rax
                                                                                        jmp   .Lx740_42
.Lx740_58:
                        cmp              eax, 13
                                                                                        jne   .Lx740_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx740_43
                        cmp              rax, r9
                                                                                        je    .Lx740_43
                        mov              r9, rax
                                                                                        jmp   .Lx740_42
.Lx740_43:
                        cmp              r8, r9
                                                                                        je    .Lx740_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx740_44
                        cmp              eax, 99
                                                                                        je    .Lx740_44
                        cmp              eax, 13
                                                                                        jne   .Lx740_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx740_44
                                                                                        jmp   .Lx740_45
.Lx740_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx740_53
                        cmp              eax, 99
                                                                                        je    .Lx740_53
                        cmp              eax, 13
                                                                                        jne   .Lx740_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx740_53
                                                                                        jmp   .Lx740_46
.Lx740_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx740_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx740_53
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
                                                                                        jmp   .Lx740_51
.Lx740_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx740_47
                        cmp              eax, 99
                                                                                        je    .Lx740_47
                        cmp              eax, 13
                                                                                        jne   .Lx740_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx740_47
                                                                                        jmp   .Lx740_48
.Lx740_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx740_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx740_53
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
                                                                                        jmp   .Lx740_51
.Lx740_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx740_49
                        cmp              edx, 14
                                                                                        je    .Lx740_53
                                                                                        jmp   .Lx740_52
.Lx740_49:
                        cmp              edx, 14
                                                                                        je    .Lx740_52
                        cmp              ecx, 7
                                                                                        je    .Lx740_53
                        cmp              edx, 7
                                                                                        je    .Lx740_53
                        cmp              ecx, 6
                                                                                        jne   .Lx740_50
                        cmp              edx, 6
                                                                                        jne   .Lx740_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx740_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx740_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx740_51
                                                                                        jmp   .Lx740_52
.Lx740_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx740_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx740_53
.Lx740_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx740_54
.Lx740_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx740_54
.Lx740_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx740_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n676_var_ref_α
                                                                                        jmp   n655_op11_α
n675_op11_β:
                                                                                        jmp   n676_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n676_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n677_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n678_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n678_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx745_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx745_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx745_41
                        cmp              esi, 1
                                                                                        jne   .Lx745_55
                        mov              r8, rax
                                                                                        jmp   .Lx745_40
.Lx745_55:
                        cmp              esi, 2
                                                                                        jne   .Lx745_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx745_41
                        mov              r8, rax
                                                                                        jmp   .Lx745_40
.Lx745_56:
                        cmp              eax, 13
                                                                                        jne   .Lx745_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx745_41
                        cmp              rax, r8
                                                                                        je    .Lx745_41
                        mov              r8, rax
                                                                                        jmp   .Lx745_40
.Lx745_41:
                        lea              r9, [rbp + 704]
.Lx745_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx745_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx745_43
                        cmp              esi, 1
                                                                                        jne   .Lx745_57
                        mov              r9, rax
                                                                                        jmp   .Lx745_42
.Lx745_57:
                        cmp              esi, 2
                                                                                        jne   .Lx745_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx745_43
                        mov              r9, rax
                                                                                        jmp   .Lx745_42
.Lx745_58:
                        cmp              eax, 13
                                                                                        jne   .Lx745_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx745_43
                        cmp              rax, r9
                                                                                        je    .Lx745_43
                        mov              r9, rax
                                                                                        jmp   .Lx745_42
.Lx745_43:
                        cmp              r8, r9
                                                                                        je    .Lx745_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx745_44
                        cmp              eax, 99
                                                                                        je    .Lx745_44
                        cmp              eax, 13
                                                                                        jne   .Lx745_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx745_44
                                                                                        jmp   .Lx745_45
.Lx745_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx745_53
                        cmp              eax, 99
                                                                                        je    .Lx745_53
                        cmp              eax, 13
                                                                                        jne   .Lx745_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx745_53
                                                                                        jmp   .Lx745_46
.Lx745_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx745_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx745_53
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
                                                                                        jmp   .Lx745_51
.Lx745_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx745_47
                        cmp              eax, 99
                                                                                        je    .Lx745_47
                        cmp              eax, 13
                                                                                        jne   .Lx745_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx745_47
                                                                                        jmp   .Lx745_48
.Lx745_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx745_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx745_53
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
                                                                                        jmp   .Lx745_51
.Lx745_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx745_49
                        cmp              edx, 14
                                                                                        je    .Lx745_53
                                                                                        jmp   .Lx745_52
.Lx745_49:
                        cmp              edx, 14
                                                                                        je    .Lx745_52
                        cmp              ecx, 7
                                                                                        je    .Lx745_53
                        cmp              edx, 7
                                                                                        je    .Lx745_53
                        cmp              ecx, 6
                                                                                        jne   .Lx745_50
                        cmp              edx, 6
                                                                                        jne   .Lx745_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx745_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx745_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx745_51
                                                                                        jmp   .Lx745_52
.Lx745_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx745_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx745_53
.Lx745_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx745_54
.Lx745_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx745_54
.Lx745_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx745_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n679_var_ref_α
                                                                                        jmp   n655_op11_α
n678_op11_β:
                                                                                        jmp   n679_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n679_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n680_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n681_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n681_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx750_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx750_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_41
                        cmp              esi, 1
                                                                                        jne   .Lx750_55
                        mov              r8, rax
                                                                                        jmp   .Lx750_40
.Lx750_55:
                        cmp              esi, 2
                                                                                        jne   .Lx750_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx750_41
                        mov              r8, rax
                                                                                        jmp   .Lx750_40
.Lx750_56:
                        cmp              eax, 13
                                                                                        jne   .Lx750_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_41
                        cmp              rax, r8
                                                                                        je    .Lx750_41
                        mov              r8, rax
                                                                                        jmp   .Lx750_40
.Lx750_41:
                        lea              r9, [rbp + 624]
.Lx750_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx750_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_43
                        cmp              esi, 1
                                                                                        jne   .Lx750_57
                        mov              r9, rax
                                                                                        jmp   .Lx750_42
.Lx750_57:
                        cmp              esi, 2
                                                                                        jne   .Lx750_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx750_43
                        mov              r9, rax
                                                                                        jmp   .Lx750_42
.Lx750_58:
                        cmp              eax, 13
                                                                                        jne   .Lx750_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_43
                        cmp              rax, r9
                                                                                        je    .Lx750_43
                        mov              r9, rax
                                                                                        jmp   .Lx750_42
.Lx750_43:
                        cmp              r8, r9
                                                                                        je    .Lx750_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx750_44
                        cmp              eax, 99
                                                                                        je    .Lx750_44
                        cmp              eax, 13
                                                                                        jne   .Lx750_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx750_44
                                                                                        jmp   .Lx750_45
.Lx750_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx750_53
                        cmp              eax, 99
                                                                                        je    .Lx750_53
                        cmp              eax, 13
                                                                                        jne   .Lx750_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx750_53
                                                                                        jmp   .Lx750_46
.Lx750_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx750_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx750_53
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
                                                                                        jmp   .Lx750_51
.Lx750_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx750_47
                        cmp              eax, 99
                                                                                        je    .Lx750_47
                        cmp              eax, 13
                                                                                        jne   .Lx750_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx750_47
                                                                                        jmp   .Lx750_48
.Lx750_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx750_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx750_53
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
                                                                                        jmp   .Lx750_51
.Lx750_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx750_49
                        cmp              edx, 14
                                                                                        je    .Lx750_53
                                                                                        jmp   .Lx750_52
.Lx750_49:
                        cmp              edx, 14
                                                                                        je    .Lx750_52
                        cmp              ecx, 7
                                                                                        je    .Lx750_53
                        cmp              edx, 7
                                                                                        je    .Lx750_53
                        cmp              ecx, 6
                                                                                        jne   .Lx750_50
                        cmp              edx, 6
                                                                                        jne   .Lx750_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx750_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx750_51
                                                                                        jmp   .Lx750_52
.Lx750_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx750_53
.Lx750_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx750_54
.Lx750_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx750_54
.Lx750_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx750_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n682_var_ref_α
                                                                                        jmp   n655_op11_α
n681_op11_β:
                                                                                        jmp   n682_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n683_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n683_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n684_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n684_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx755_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx755_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        cmp              esi, 1
                                                                                        jne   .Lx755_55
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_55:
                        cmp              esi, 2
                                                                                        jne   .Lx755_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_56:
                        cmp              eax, 13
                                                                                        jne   .Lx755_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        cmp              rax, r8
                                                                                        je    .Lx755_41
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_41:
                        lea              r9, [rbp + 544]
.Lx755_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx755_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        cmp              esi, 1
                                                                                        jne   .Lx755_57
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_57:
                        cmp              esi, 2
                                                                                        jne   .Lx755_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_58:
                        cmp              eax, 13
                                                                                        jne   .Lx755_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        cmp              rax, r9
                                                                                        je    .Lx755_43
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_43:
                        cmp              r8, r9
                                                                                        je    .Lx755_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_44
                        cmp              eax, 99
                                                                                        je    .Lx755_44
                        cmp              eax, 13
                                                                                        jne   .Lx755_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx755_44
                                                                                        jmp   .Lx755_45
.Lx755_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_53
                        cmp              eax, 99
                                                                                        je    .Lx755_53
                        cmp              eax, 13
                                                                                        jne   .Lx755_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx755_53
                                                                                        jmp   .Lx755_46
.Lx755_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx755_53
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
                                                                                        jmp   .Lx755_51
.Lx755_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_47
                        cmp              eax, 99
                                                                                        je    .Lx755_47
                        cmp              eax, 13
                                                                                        jne   .Lx755_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx755_47
                                                                                        jmp   .Lx755_48
.Lx755_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx755_53
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
                                                                                        jmp   .Lx755_51
.Lx755_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx755_49
                        cmp              edx, 14
                                                                                        je    .Lx755_53
                                                                                        jmp   .Lx755_52
.Lx755_49:
                        cmp              edx, 14
                                                                                        je    .Lx755_52
                        cmp              ecx, 7
                                                                                        je    .Lx755_53
                        cmp              edx, 7
                                                                                        je    .Lx755_53
                        cmp              ecx, 6
                                                                                        jne   .Lx755_50
                        cmp              edx, 6
                                                                                        jne   .Lx755_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx755_51
                                                                                        jmp   .Lx755_52
.Lx755_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx755_53
.Lx755_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx755_54
.Lx755_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx755_54
.Lx755_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx755_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n685_var_ref_α
                                                                                        jmp   n655_op11_α
n684_op11_β:
                                                                                        jmp   n685_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n686_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n686_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n687_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n687_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx760_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx760_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx760_41
                        cmp              esi, 1
                                                                                        jne   .Lx760_55
                        mov              r8, rax
                                                                                        jmp   .Lx760_40
.Lx760_55:
                        cmp              esi, 2
                                                                                        jne   .Lx760_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx760_41
                        mov              r8, rax
                                                                                        jmp   .Lx760_40
.Lx760_56:
                        cmp              eax, 13
                                                                                        jne   .Lx760_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx760_41
                        cmp              rax, r8
                                                                                        je    .Lx760_41
                        mov              r8, rax
                                                                                        jmp   .Lx760_40
.Lx760_41:
                        lea              r9, [rbp + 464]
.Lx760_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx760_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx760_43
                        cmp              esi, 1
                                                                                        jne   .Lx760_57
                        mov              r9, rax
                                                                                        jmp   .Lx760_42
.Lx760_57:
                        cmp              esi, 2
                                                                                        jne   .Lx760_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx760_43
                        mov              r9, rax
                                                                                        jmp   .Lx760_42
.Lx760_58:
                        cmp              eax, 13
                                                                                        jne   .Lx760_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx760_43
                        cmp              rax, r9
                                                                                        je    .Lx760_43
                        mov              r9, rax
                                                                                        jmp   .Lx760_42
.Lx760_43:
                        cmp              r8, r9
                                                                                        je    .Lx760_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx760_44
                        cmp              eax, 99
                                                                                        je    .Lx760_44
                        cmp              eax, 13
                                                                                        jne   .Lx760_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx760_44
                                                                                        jmp   .Lx760_45
.Lx760_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx760_53
                        cmp              eax, 99
                                                                                        je    .Lx760_53
                        cmp              eax, 13
                                                                                        jne   .Lx760_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx760_53
                                                                                        jmp   .Lx760_46
.Lx760_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx760_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx760_53
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
                                                                                        jmp   .Lx760_51
.Lx760_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx760_47
                        cmp              eax, 99
                                                                                        je    .Lx760_47
                        cmp              eax, 13
                                                                                        jne   .Lx760_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx760_47
                                                                                        jmp   .Lx760_48
.Lx760_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx760_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx760_53
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
                                                                                        jmp   .Lx760_51
.Lx760_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx760_49
                        cmp              edx, 14
                                                                                        je    .Lx760_53
                                                                                        jmp   .Lx760_52
.Lx760_49:
                        cmp              edx, 14
                                                                                        je    .Lx760_52
                        cmp              ecx, 7
                                                                                        je    .Lx760_53
                        cmp              edx, 7
                                                                                        je    .Lx760_53
                        cmp              ecx, 6
                                                                                        jne   .Lx760_50
                        cmp              edx, 6
                                                                                        jne   .Lx760_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx760_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx760_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx760_51
                                                                                        jmp   .Lx760_52
.Lx760_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx760_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx760_53
.Lx760_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx760_54
.Lx760_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx760_54
.Lx760_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx760_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n688_var_ref_α
                                                                                        jmp   n655_op11_α
n687_op11_β:
                                                                                        jmp   n688_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n689_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n690_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n690_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
.Lx765_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx765_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_41
                        cmp              esi, 1
                                                                                        jne   .Lx765_55
                        mov              r8, rax
                                                                                        jmp   .Lx765_40
.Lx765_55:
                        cmp              esi, 2
                                                                                        jne   .Lx765_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx765_41
                        mov              r8, rax
                                                                                        jmp   .Lx765_40
.Lx765_56:
                        cmp              eax, 13
                                                                                        jne   .Lx765_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_41
                        cmp              rax, r8
                                                                                        je    .Lx765_41
                        mov              r8, rax
                                                                                        jmp   .Lx765_40
.Lx765_41:
                        lea              r9, [rbp + 384]
.Lx765_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx765_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_43
                        cmp              esi, 1
                                                                                        jne   .Lx765_57
                        mov              r9, rax
                                                                                        jmp   .Lx765_42
.Lx765_57:
                        cmp              esi, 2
                                                                                        jne   .Lx765_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx765_43
                        mov              r9, rax
                                                                                        jmp   .Lx765_42
.Lx765_58:
                        cmp              eax, 13
                                                                                        jne   .Lx765_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_43
                        cmp              rax, r9
                                                                                        je    .Lx765_43
                        mov              r9, rax
                                                                                        jmp   .Lx765_42
.Lx765_43:
                        cmp              r8, r9
                                                                                        je    .Lx765_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx765_44
                        cmp              eax, 99
                                                                                        je    .Lx765_44
                        cmp              eax, 13
                                                                                        jne   .Lx765_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx765_44
                                                                                        jmp   .Lx765_45
.Lx765_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx765_53
                        cmp              eax, 99
                                                                                        je    .Lx765_53
                        cmp              eax, 13
                                                                                        jne   .Lx765_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx765_53
                                                                                        jmp   .Lx765_46
.Lx765_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx765_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx765_53
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
                                                                                        jmp   .Lx765_51
.Lx765_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx765_47
                        cmp              eax, 99
                                                                                        je    .Lx765_47
                        cmp              eax, 13
                                                                                        jne   .Lx765_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx765_47
                                                                                        jmp   .Lx765_48
.Lx765_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx765_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx765_53
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
                                                                                        jmp   .Lx765_51
.Lx765_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx765_49
                        cmp              edx, 14
                                                                                        je    .Lx765_53
                                                                                        jmp   .Lx765_52
.Lx765_49:
                        cmp              edx, 14
                                                                                        je    .Lx765_52
                        cmp              ecx, 7
                                                                                        je    .Lx765_53
                        cmp              edx, 7
                                                                                        je    .Lx765_53
                        cmp              ecx, 6
                                                                                        jne   .Lx765_50
                        cmp              edx, 6
                                                                                        jne   .Lx765_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx765_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx765_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx765_51
                                                                                        jmp   .Lx765_52
.Lx765_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx765_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx765_53
.Lx765_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx765_54
.Lx765_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx765_54
.Lx765_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx765_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n691_var_ref_α
                                                                                        jmp   n655_op11_α
n690_op11_β:
                                                                                        jmp   n691_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n692_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n692_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n693_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n693_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx770_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx770_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx770_41
                        cmp              esi, 1
                                                                                        jne   .Lx770_55
                        mov              r8, rax
                                                                                        jmp   .Lx770_40
.Lx770_55:
                        cmp              esi, 2
                                                                                        jne   .Lx770_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx770_41
                        mov              r8, rax
                                                                                        jmp   .Lx770_40
.Lx770_56:
                        cmp              eax, 13
                                                                                        jne   .Lx770_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx770_41
                        cmp              rax, r8
                                                                                        je    .Lx770_41
                        mov              r8, rax
                                                                                        jmp   .Lx770_40
.Lx770_41:
                        lea              r9, [rbp + 304]
.Lx770_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx770_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx770_43
                        cmp              esi, 1
                                                                                        jne   .Lx770_57
                        mov              r9, rax
                                                                                        jmp   .Lx770_42
.Lx770_57:
                        cmp              esi, 2
                                                                                        jne   .Lx770_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx770_43
                        mov              r9, rax
                                                                                        jmp   .Lx770_42
.Lx770_58:
                        cmp              eax, 13
                                                                                        jne   .Lx770_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx770_43
                        cmp              rax, r9
                                                                                        je    .Lx770_43
                        mov              r9, rax
                                                                                        jmp   .Lx770_42
.Lx770_43:
                        cmp              r8, r9
                                                                                        je    .Lx770_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx770_44
                        cmp              eax, 99
                                                                                        je    .Lx770_44
                        cmp              eax, 13
                                                                                        jne   .Lx770_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx770_44
                                                                                        jmp   .Lx770_45
.Lx770_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx770_53
                        cmp              eax, 99
                                                                                        je    .Lx770_53
                        cmp              eax, 13
                                                                                        jne   .Lx770_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx770_53
                                                                                        jmp   .Lx770_46
.Lx770_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx770_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx770_53
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
                                                                                        jmp   .Lx770_51
.Lx770_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx770_47
                        cmp              eax, 99
                                                                                        je    .Lx770_47
                        cmp              eax, 13
                                                                                        jne   .Lx770_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx770_47
                                                                                        jmp   .Lx770_48
.Lx770_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx770_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx770_53
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
                                                                                        jmp   .Lx770_51
.Lx770_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx770_49
                        cmp              edx, 14
                                                                                        je    .Lx770_53
                                                                                        jmp   .Lx770_52
.Lx770_49:
                        cmp              edx, 14
                                                                                        je    .Lx770_52
                        cmp              ecx, 7
                                                                                        je    .Lx770_53
                        cmp              edx, 7
                                                                                        je    .Lx770_53
                        cmp              ecx, 6
                                                                                        jne   .Lx770_50
                        cmp              edx, 6
                                                                                        jne   .Lx770_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx770_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx770_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx770_51
                                                                                        jmp   .Lx770_52
.Lx770_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx770_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx770_53
.Lx770_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx770_54
.Lx770_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx770_54
.Lx770_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx770_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n694_var_ref_α
                                                                                        jmp   n655_op11_α
n693_op11_β:
                                                                                        jmp   n694_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n694_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n695_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n695_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n696_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n696_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx775_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx775_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        cmp              esi, 1
                                                                                        jne   .Lx775_55
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_55:
                        cmp              esi, 2
                                                                                        jne   .Lx775_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_56:
                        cmp              eax, 13
                                                                                        jne   .Lx775_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        cmp              rax, r8
                                                                                        je    .Lx775_41
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_41:
                        lea              r9, [rbp + 224]
.Lx775_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx775_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        cmp              esi, 1
                                                                                        jne   .Lx775_57
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_57:
                        cmp              esi, 2
                                                                                        jne   .Lx775_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_58:
                        cmp              eax, 13
                                                                                        jne   .Lx775_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        cmp              rax, r9
                                                                                        je    .Lx775_43
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_43:
                        cmp              r8, r9
                                                                                        je    .Lx775_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_44
                        cmp              eax, 99
                                                                                        je    .Lx775_44
                        cmp              eax, 13
                                                                                        jne   .Lx775_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx775_44
                                                                                        jmp   .Lx775_45
.Lx775_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_53
                        cmp              eax, 99
                                                                                        je    .Lx775_53
                        cmp              eax, 13
                                                                                        jne   .Lx775_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx775_53
                                                                                        jmp   .Lx775_46
.Lx775_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx775_53
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
                                                                                        jmp   .Lx775_51
.Lx775_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_47
                        cmp              eax, 99
                                                                                        je    .Lx775_47
                        cmp              eax, 13
                                                                                        jne   .Lx775_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx775_47
                                                                                        jmp   .Lx775_48
.Lx775_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx775_53
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
                                                                                        jmp   .Lx775_51
.Lx775_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx775_49
                        cmp              edx, 14
                                                                                        je    .Lx775_53
                                                                                        jmp   .Lx775_52
.Lx775_49:
                        cmp              edx, 14
                                                                                        je    .Lx775_52
                        cmp              ecx, 7
                                                                                        je    .Lx775_53
                        cmp              edx, 7
                                                                                        je    .Lx775_53
                        cmp              ecx, 6
                                                                                        jne   .Lx775_50
                        cmp              edx, 6
                                                                                        jne   .Lx775_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx775_51
                                                                                        jmp   .Lx775_52
.Lx775_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx775_53
.Lx775_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx775_54
.Lx775_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx775_54
.Lx775_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx775_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n697_move_label_α
                                                                                        jmp   n655_op11_α
n696_op11_β:
                                                                                        jmp   n697_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n697_move_label_α:
                        lea              rax, [rip + n655_op11_α]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   proc_all_diff5$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n698_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n698_disjunction_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_β:
                                                                                        jmp   n698_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1480]
                        lea              rsp, [rbp + 1504]
                        mov              rbp, [rbp + 1496]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_ω:
                        mov              rax, [rbp + 1488]
                        lea              rsp, [rbp + 1504]
                        mov              rbp, [rbp + 1496]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clerk_cashier_opp$2F5_α
proc_clerk_cashier_opp$2F5_α:
                        .global          proc_clerk_cashier_opp$2F5_α
                        .global          proc_clerk_cashier_opp$2F5_β
                        .global          proc_clerk_cashier_opp$2F5_γ
                        .global          proc_clerk_cashier_opp$2F5_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1184
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_clerk_cashier_opp$2F5_α_body:
                        lea              rax, [rip + n816_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
#-----------------------------------------------------------------------------------------------------------------------
n780_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx817_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx817_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx817_101
.Lx817_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx817_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_clerk_cashier_opp$2F5_ω
                                                                                        jmp   n781_var_ref_α
n780_op11_β:
                                                                                        jmp   proc_clerk_cashier_opp$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n782_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n782_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n783_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n783_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx822_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx822_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx822_41
                        cmp              esi, 1
                                                                                        jne   .Lx822_55
                        mov              r8, rax
                                                                                        jmp   .Lx822_40
.Lx822_55:
                        cmp              esi, 2
                                                                                        jne   .Lx822_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx822_41
                        mov              r8, rax
                                                                                        jmp   .Lx822_40
.Lx822_56:
                        cmp              eax, 13
                                                                                        jne   .Lx822_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx822_41
                        cmp              rax, r8
                                                                                        je    .Lx822_41
                        mov              r8, rax
                                                                                        jmp   .Lx822_40
.Lx822_41:
                        lea              r9, [rbp + 1136]
.Lx822_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx822_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx822_43
                        cmp              esi, 1
                                                                                        jne   .Lx822_57
                        mov              r9, rax
                                                                                        jmp   .Lx822_42
.Lx822_57:
                        cmp              esi, 2
                                                                                        jne   .Lx822_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx822_43
                        mov              r9, rax
                                                                                        jmp   .Lx822_42
.Lx822_58:
                        cmp              eax, 13
                                                                                        jne   .Lx822_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx822_43
                        cmp              rax, r9
                                                                                        je    .Lx822_43
                        mov              r9, rax
                                                                                        jmp   .Lx822_42
.Lx822_43:
                        cmp              r8, r9
                                                                                        je    .Lx822_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx822_44
                        cmp              eax, 99
                                                                                        je    .Lx822_44
                        cmp              eax, 13
                                                                                        jne   .Lx822_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx822_44
                                                                                        jmp   .Lx822_45
.Lx822_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx822_53
                        cmp              eax, 99
                                                                                        je    .Lx822_53
                        cmp              eax, 13
                                                                                        jne   .Lx822_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx822_53
                                                                                        jmp   .Lx822_46
.Lx822_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx822_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx822_53
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
                                                                                        jmp   .Lx822_51
.Lx822_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx822_47
                        cmp              eax, 99
                                                                                        je    .Lx822_47
                        cmp              eax, 13
                                                                                        jne   .Lx822_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx822_47
                                                                                        jmp   .Lx822_48
.Lx822_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx822_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx822_53
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
                                                                                        jmp   .Lx822_51
.Lx822_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx822_49
                        cmp              edx, 14
                                                                                        je    .Lx822_53
                                                                                        jmp   .Lx822_52
.Lx822_49:
                        cmp              edx, 14
                                                                                        je    .Lx822_52
                        cmp              ecx, 7
                                                                                        je    .Lx822_53
                        cmp              edx, 7
                                                                                        je    .Lx822_53
                        cmp              ecx, 6
                                                                                        jne   .Lx822_50
                        cmp              edx, 6
                                                                                        jne   .Lx822_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx822_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx822_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx822_51
                                                                                        jmp   .Lx822_52
.Lx822_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx822_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx822_53
.Lx822_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx822_54
.Lx822_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx822_54
.Lx822_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx822_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n784_var_ref_α
n783_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n784_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n786_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n785_op11_α:
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
                                                                                        je    proc_clerk_cashier_opp$2F5_ω
                                                                                        jmp   proc_clerk_cashier_opp$2F5_ω
n785_op11_β:
                                                                                        jmp   proc_clerk_cashier_opp$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n786_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n787_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n787_op11_α:
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
.Lx828_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx828_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_41
                        cmp              esi, 1
                                                                                        jne   .Lx828_55
                        mov              r8, rax
                                                                                        jmp   .Lx828_40
.Lx828_55:
                        cmp              esi, 2
                                                                                        jne   .Lx828_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx828_41
                        mov              r8, rax
                                                                                        jmp   .Lx828_40
.Lx828_56:
                        cmp              eax, 13
                                                                                        jne   .Lx828_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_41
                        cmp              rax, r8
                                                                                        je    .Lx828_41
                        mov              r8, rax
                                                                                        jmp   .Lx828_40
.Lx828_41:
                        lea              r9, [rbp + 1056]
.Lx828_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx828_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_43
                        cmp              esi, 1
                                                                                        jne   .Lx828_57
                        mov              r9, rax
                                                                                        jmp   .Lx828_42
.Lx828_57:
                        cmp              esi, 2
                                                                                        jne   .Lx828_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx828_43
                        mov              r9, rax
                                                                                        jmp   .Lx828_42
.Lx828_58:
                        cmp              eax, 13
                                                                                        jne   .Lx828_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_43
                        cmp              rax, r9
                                                                                        je    .Lx828_43
                        mov              r9, rax
                                                                                        jmp   .Lx828_42
.Lx828_43:
                        cmp              r8, r9
                                                                                        je    .Lx828_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx828_44
                        cmp              eax, 99
                                                                                        je    .Lx828_44
                        cmp              eax, 13
                                                                                        jne   .Lx828_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx828_44
                                                                                        jmp   .Lx828_45
.Lx828_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx828_53
                        cmp              eax, 99
                                                                                        je    .Lx828_53
                        cmp              eax, 13
                                                                                        jne   .Lx828_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx828_53
                                                                                        jmp   .Lx828_46
.Lx828_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx828_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx828_53
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
                                                                                        jmp   .Lx828_51
.Lx828_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx828_47
                        cmp              eax, 99
                                                                                        je    .Lx828_47
                        cmp              eax, 13
                                                                                        jne   .Lx828_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx828_47
                                                                                        jmp   .Lx828_48
.Lx828_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx828_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx828_53
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
                                                                                        jmp   .Lx828_51
.Lx828_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx828_49
                        cmp              edx, 14
                                                                                        je    .Lx828_53
                                                                                        jmp   .Lx828_52
.Lx828_49:
                        cmp              edx, 14
                                                                                        je    .Lx828_52
                        cmp              ecx, 7
                                                                                        je    .Lx828_53
                        cmp              edx, 7
                                                                                        je    .Lx828_53
                        cmp              ecx, 6
                                                                                        jne   .Lx828_50
                        cmp              edx, 6
                                                                                        jne   .Lx828_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx828_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx828_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx828_51
                                                                                        jmp   .Lx828_52
.Lx828_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx828_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx828_53
.Lx828_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx828_54
.Lx828_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx828_54
.Lx828_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx828_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n788_var_ref_α
n787_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n789_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n789_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n790_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n790_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
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
                        lea              r9, [rbp + 976]
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
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n791_var_ref_α
n790_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n791_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n792_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n793_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n793_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        lea              r8, [rbp + 880]
.Lx838_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx838_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_41
                        cmp              esi, 1
                                                                                        jne   .Lx838_55
                        mov              r8, rax
                                                                                        jmp   .Lx838_40
.Lx838_55:
                        cmp              esi, 2
                                                                                        jne   .Lx838_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx838_41
                        mov              r8, rax
                                                                                        jmp   .Lx838_40
.Lx838_56:
                        cmp              eax, 13
                                                                                        jne   .Lx838_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_41
                        cmp              rax, r8
                                                                                        je    .Lx838_41
                        mov              r8, rax
                                                                                        jmp   .Lx838_40
.Lx838_41:
                        lea              r9, [rbp + 896]
.Lx838_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx838_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_43
                        cmp              esi, 1
                                                                                        jne   .Lx838_57
                        mov              r9, rax
                                                                                        jmp   .Lx838_42
.Lx838_57:
                        cmp              esi, 2
                                                                                        jne   .Lx838_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx838_43
                        mov              r9, rax
                                                                                        jmp   .Lx838_42
.Lx838_58:
                        cmp              eax, 13
                                                                                        jne   .Lx838_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_43
                        cmp              rax, r9
                                                                                        je    .Lx838_43
                        mov              r9, rax
                                                                                        jmp   .Lx838_42
.Lx838_43:
                        cmp              r8, r9
                                                                                        je    .Lx838_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx838_44
                        cmp              eax, 99
                                                                                        je    .Lx838_44
                        cmp              eax, 13
                                                                                        jne   .Lx838_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx838_44
                                                                                        jmp   .Lx838_45
.Lx838_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx838_53
                        cmp              eax, 99
                                                                                        je    .Lx838_53
                        cmp              eax, 13
                                                                                        jne   .Lx838_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx838_53
                                                                                        jmp   .Lx838_46
.Lx838_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx838_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx838_53
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
                                                                                        jmp   .Lx838_51
.Lx838_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx838_47
                        cmp              eax, 99
                                                                                        je    .Lx838_47
                        cmp              eax, 13
                                                                                        jne   .Lx838_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx838_47
                                                                                        jmp   .Lx838_48
.Lx838_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx838_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx838_53
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
                                                                                        jmp   .Lx838_51
.Lx838_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx838_49
                        cmp              edx, 14
                                                                                        je    .Lx838_53
                                                                                        jmp   .Lx838_52
.Lx838_49:
                        cmp              edx, 14
                                                                                        je    .Lx838_52
                        cmp              ecx, 7
                                                                                        je    .Lx838_53
                        cmp              edx, 7
                                                                                        je    .Lx838_53
                        cmp              ecx, 6
                                                                                        jne   .Lx838_50
                        cmp              edx, 6
                                                                                        jne   .Lx838_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx838_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx838_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx838_51
                                                                                        jmp   .Lx838_52
.Lx838_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx838_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx838_53
.Lx838_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx838_54
.Lx838_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx838_54
.Lx838_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx838_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n794_var_ref_α
n793_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n794_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n795_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n795_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n796_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n796_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
.Lx843_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx843_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx843_41
                        cmp              esi, 1
                                                                                        jne   .Lx843_55
                        mov              r8, rax
                                                                                        jmp   .Lx843_40
.Lx843_55:
                        cmp              esi, 2
                                                                                        jne   .Lx843_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx843_41
                        mov              r8, rax
                                                                                        jmp   .Lx843_40
.Lx843_56:
                        cmp              eax, 13
                                                                                        jne   .Lx843_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx843_41
                        cmp              rax, r8
                                                                                        je    .Lx843_41
                        mov              r8, rax
                                                                                        jmp   .Lx843_40
.Lx843_41:
                        lea              r9, [rbp + 816]
.Lx843_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx843_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx843_43
                        cmp              esi, 1
                                                                                        jne   .Lx843_57
                        mov              r9, rax
                                                                                        jmp   .Lx843_42
.Lx843_57:
                        cmp              esi, 2
                                                                                        jne   .Lx843_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx843_43
                        mov              r9, rax
                                                                                        jmp   .Lx843_42
.Lx843_58:
                        cmp              eax, 13
                                                                                        jne   .Lx843_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx843_43
                        cmp              rax, r9
                                                                                        je    .Lx843_43
                        mov              r9, rax
                                                                                        jmp   .Lx843_42
.Lx843_43:
                        cmp              r8, r9
                                                                                        je    .Lx843_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx843_44
                        cmp              eax, 99
                                                                                        je    .Lx843_44
                        cmp              eax, 13
                                                                                        jne   .Lx843_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx843_44
                                                                                        jmp   .Lx843_45
.Lx843_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx843_53
                        cmp              eax, 99
                                                                                        je    .Lx843_53
                        cmp              eax, 13
                                                                                        jne   .Lx843_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx843_53
                                                                                        jmp   .Lx843_46
.Lx843_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx843_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx843_53
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
                                                                                        jmp   .Lx843_51
.Lx843_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx843_47
                        cmp              eax, 99
                                                                                        je    .Lx843_47
                        cmp              eax, 13
                                                                                        jne   .Lx843_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx843_47
                                                                                        jmp   .Lx843_48
.Lx843_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx843_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx843_53
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
                                                                                        jmp   .Lx843_51
.Lx843_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx843_49
                        cmp              edx, 14
                                                                                        je    .Lx843_53
                                                                                        jmp   .Lx843_52
.Lx843_49:
                        cmp              edx, 14
                                                                                        je    .Lx843_52
                        cmp              ecx, 7
                                                                                        je    .Lx843_53
                        cmp              edx, 7
                                                                                        je    .Lx843_53
                        cmp              ecx, 6
                                                                                        jne   .Lx843_50
                        cmp              edx, 6
                                                                                        jne   .Lx843_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx843_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx843_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx843_51
                                                                                        jmp   .Lx843_52
.Lx843_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx843_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx843_53
.Lx843_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx843_54
.Lx843_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx843_54
.Lx843_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx843_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n797_lit_string_α
n796_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n798_var_ref_α
.Lx844_0:
                        .quad            .Lx844_0_s
.Lx844_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n799_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n800_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n800_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n801_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n802_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n803_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n804_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n804_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx858_21
.Lx858_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx858_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx858_23
.Lx858_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx858_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_24
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx858_25
.Lx858_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        call             rt_arg_stage@PLT
.Lx858_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_26
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx858_27
.Lx858_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx858_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_28
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx858_29
.Lx858_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx858_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_30
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx858_31
.Lx858_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx858_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx858_32
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx858_33
.Lx858_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx858_33:
                        mov              edi, 2
                        mov              esi, 7
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx858_1
                        lea              rcx, [rip + .Lx858_3]
                        lea              rdx, [rip + .Lx858_4]
                                                                                        jmp   rax
.Lx858_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx858_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx858_2
.Lx858_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx858_2
.Lx858_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx858_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx858_2
.Lx858_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx858_2
.Lx858_1:
                        call             rt_faildescr@PLT
.Lx858_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n805_lit_string_α
n804_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n806_var_ref_α
.Lx859_0:
                        .quad            .Lx859_0_s
.Lx859_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n806_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n807_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n808_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n808_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n809_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n809_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n810_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n810_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n811_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n811_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n812_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n812_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx873_21
.Lx873_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx873_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx873_23
.Lx873_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx873_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_24
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx873_25
.Lx873_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx873_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_26
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx873_27
.Lx873_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx873_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_28
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx873_29
.Lx873_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx873_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_30
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx873_31
.Lx873_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx873_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx873_32
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx873_33
.Lx873_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx873_33:
                        mov              edi, 2
                        mov              esi, 7
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx873_1
                        lea              rcx, [rip + .Lx873_3]
                        lea              rdx, [rip + .Lx873_4]
                                                                                        jmp   rax
.Lx873_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx873_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx873_2
.Lx873_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx873_2
.Lx873_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx873_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx873_2
.Lx873_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx873_2
.Lx873_1:
                        call             rt_faildescr@PLT
.Lx873_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n804_call_proc_staged_β
                                                                                        jmp   n813_var_ref_α
n812_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n813_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n814_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n814_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n815_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n815_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
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
                        lea              r9, [rbp + 192]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n816_suspend_α
                                                                                        jmp   n812_call_proc_staged_β
n815_op11_β:
                                                                                        jmp   n816_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n816_suspend_α:
                        lea              rax, [rip + n816_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_clerk_cashier_opp$2F5_γ
n816_suspend_β:
                                                                                        jmp   n812_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1184]
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_clerk_cashier_opp$2F5_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sex/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sex$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "position/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_position$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "holder_sex/7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_holder_sex$2F7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 7
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1856
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "puzzle/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_puzzle$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2672
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "cashier_manager_same_sex/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_cashier_manager_same_sex$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "all_diff5/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_all_diff5$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1472
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "clerk_cashier_opp/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_clerk_cashier_opp$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
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
                        sub              rsp, 152
                        mov              rdi, rsp
                        mov              ecx, 152
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 144], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n881_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx886_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n882_call_proc_staged_α
n881_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n882_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx888_1
                        lea              rcx, [rip + .Lx888_3]
                        lea              rdx, [rip + .Lx888_4]
                                                                                        jmp   rax
.Lx888_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx888_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx888_2
.Lx888_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx888_2
.Lx888_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx888_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx888_2
.Lx888_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx888_2
.Lx888_1:
                        call             rt_faildescr@PLT
.Lx888_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n884_op11_α
                                                                                        jmp   n883_move_label_α
n882_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n883_move_label_α:
                        lea              rax, [rip + n882_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n884_op11_α:
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
n884_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n885_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n885_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n885_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 144]
                        add              rsp, 152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 144]
                        add              rsp, 152
                        ret
                        .section         .note.GNU-stack,"",@progbits
