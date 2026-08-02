                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sex$2F2_α
proc_sex$2F2_α:
proc_sex$2F2_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx41_101
.Lx41_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx41_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx41_240
                        add              rsp, 112
                                                                                        jmp   proc_sex$2F2_ω
.Lx41_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 112
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
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 4
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n3_call_builtin_prolog_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "ames"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n8_call_builtin_prolog_α
                                                                                        jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n6_call_builtin_prolog_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx49_2]
                                                                                        jmp   .Lx49_3
.Lx49_2:
                        .quad            .Lx49_2_s
.Lx49_2_s:
                        .string          "f"
.Lx49_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n8_call_builtin_prolog_α
                                                                                        jmp   n7_suspend_α
n6_call_builtin_prolog_β:
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_sex$2F2_γ
n7_suspend_β:
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 5
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n11_call_builtin_prolog_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n14_call_builtin_prolog_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx60_2]
                                                                                        jmp   .Lx60_3
.Lx60_2:
                        .quad            .Lx60_2_s
.Lx60_2_s:
                        .string          "f"
.Lx60_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n15_suspend_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n19_call_builtin_prolog_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "conroy"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n24_call_builtin_prolog_α
                                                                                        jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx71_2]
                                                                                        jmp   .Lx71_3
.Lx71_2:
                        .quad            .Lx71_2_s
.Lx71_2_s:
                        .string          "m"
.Lx71_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n24_call_builtin_prolog_α
                                                                                        jmp   n23_suspend_α
n22_call_builtin_prolog_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n23_suspend_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 5
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n27_call_builtin_prolog_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "davis"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n32_call_builtin_prolog_α
                                                                                        jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n30_call_builtin_prolog_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx82_2]
                                                                                        jmp   .Lx82_3
.Lx82_2:
                        .quad            .Lx82_2_s
.Lx82_2_s:
                        .string          "m"
.Lx82_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n32_call_builtin_prolog_α
                                                                                        jmp   n31_suspend_α
n30_call_builtin_prolog_β:
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n31_suspend_β:
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   n33_var_ref_α
n32_call_builtin_prolog_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 5
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n35_call_builtin_prolog_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "evans"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n40_call_builtin_prolog_α
                                                                                        jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                                                                                        jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n38_call_builtin_prolog_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx93_2]
                                                                                        jmp   .Lx93_3
.Lx93_2:
                        .quad            .Lx93_2_s
.Lx93_2_s:
                        .string          "m"
.Lx93_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n40_call_builtin_prolog_α
                                                                                        jmp   n39_suspend_α
n38_call_builtin_prolog_β:
                                                                                        jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sex$2F2_γ
n39_suspend_β:
                                                                                        jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_sex$2F2_ω
                                                                                        jmp   proc_sex$2F2_ω
n40_call_builtin_prolog_β:
                                                                                        jmp   proc_sex$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_sex$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_position$2F1_α
proc_position$2F1_α:
proc_position$2F1_α_body:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx123_101
.Lx123_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx123_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx123_240
                        add              rsp, 32
                                                                                        jmp   proc_position$2F1_ω
.Lx123_240:
                                                                                        jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                        add              rsp, 32
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
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 5
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n100_call_builtin_prolog_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n102_call_builtin_prolog_α
                                                                                        jmp   n101_suspend_α
n100_call_builtin_prolog_β:
                                                                                        jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_suspend_α:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 32
                                                                                        jmp   proc_position$2F1_γ
n101_suspend_β:
                                                                                        jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n103_var_ref_α
n102_call_builtin_prolog_β:
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
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 7
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n105_call_builtin_prolog_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n107_call_builtin_prolog_α
                                                                                        jmp   n106_suspend_α
n105_call_builtin_prolog_β:
                                                                                        jmp   n107_call_builtin_prolog_α
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
                                                                                        jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n108_var_ref_α
n107_call_builtin_prolog_β:
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
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 5
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n110_call_builtin_prolog_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n112_call_builtin_prolog_α
                                                                                        jmp   n111_suspend_α
n110_call_builtin_prolog_β:
                                                                                        jmp   n112_call_builtin_prolog_α
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
                                                                                        jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n113_var_ref_α
n112_call_builtin_prolog_β:
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
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 11
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n115_call_builtin_prolog_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "floorwalker"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n117_call_builtin_prolog_α
                                                                                        jmp   n116_suspend_α
n115_call_builtin_prolog_β:
                                                                                        jmp   n117_call_builtin_prolog_α
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
                                                                                        jmp   n117_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n118_var_ref_α
n117_call_builtin_prolog_β:
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
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 7
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n120_call_builtin_prolog_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n122_call_builtin_prolog_α
                                                                                        jmp   n121_suspend_α
n120_call_builtin_prolog_β:
                                                                                        jmp   n122_call_builtin_prolog_α
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
                                                                                        jmp   n122_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   proc_position$2F1_ω
n122_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_holder_sex$2F7_α
proc_holder_sex$2F7_α:
proc_holder_sex$2F7_α_body:
                        lea              rax, [rip + n211_suspend_β]
                        mov              qword ptr [rbp + 1728], rax
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        sub              rsp, 1440
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx213_101
.Lx213_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx213_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx213_240
                        add              rsp, 1440
                                                                                        jmp   proc_holder_sex$2F7_ω
.Lx213_240:
                                                                                        jmp   n160_var_ref_α
n159_call_builtin_prolog_β:
                        add              rsp, 1440
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
                                                                                        jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx218_44
                        cmp              eax, 72
                                                                                        jne   .Lx218_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx218_44
                                                                                        jmp   .Lx218_45
.Lx218_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx218_53
                        cmp              eax, 104
                                                                                        je    .Lx218_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx218_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx218_49
                        cmp              edx, 80
                                                                                        je    .Lx218_53
                                                                                        jmp   .Lx218_52
.Lx218_49:
                        cmp              edx, 80
                                                                                        je    .Lx218_52
                        cmp              ecx, 5
                                                                                        je    .Lx218_53
                        cmp              edx, 5
                                                                                        je    .Lx218_53
                        cmp              ecx, 3
                                                                                        jne   .Lx218_50
                        cmp              edx, 3
                                                                                        jne   .Lx218_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx218_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx218_54
.Lx218_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx218_54:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n163_var_ref_α
n162_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n165_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_prolog_α:
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
.Lx223_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx223_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx223_41
                        cmp              esi, 1
                                                                                        jne   .Lx223_55
                        mov              r8, rax
                                                                                        jmp   .Lx223_40
.Lx223_55:
                        cmp              esi, 2
                                                                                        jne   .Lx223_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx223_41
                        mov              r8, rax
                                                                                        jmp   .Lx223_40
.Lx223_56:
                        cmp              eax, 72
                                                                                        jne   .Lx223_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx223_41
                        cmp              rax, r8
                                                                                        je    .Lx223_41
                        mov              r8, rax
                                                                                        jmp   .Lx223_40
.Lx223_41:
                        lea              r9, [rbp + 1600]
.Lx223_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx223_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx223_43
                        cmp              esi, 1
                                                                                        jne   .Lx223_57
                        mov              r9, rax
                                                                                        jmp   .Lx223_42
.Lx223_57:
                        cmp              esi, 2
                                                                                        jne   .Lx223_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx223_43
                        mov              r9, rax
                                                                                        jmp   .Lx223_42
.Lx223_58:
                        cmp              eax, 72
                                                                                        jne   .Lx223_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx223_43
                        cmp              rax, r9
                                                                                        je    .Lx223_43
                        mov              r9, rax
                                                                                        jmp   .Lx223_42
.Lx223_43:
                        cmp              r8, r9
                                                                                        je    .Lx223_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx223_44
                        cmp              eax, 104
                                                                                        je    .Lx223_44
                        cmp              eax, 72
                                                                                        jne   .Lx223_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx223_44
                                                                                        jmp   .Lx223_45
.Lx223_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx223_53
                        cmp              eax, 104
                                                                                        je    .Lx223_53
                        cmp              eax, 72
                                                                                        jne   .Lx223_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx223_53
                                                                                        jmp   .Lx223_46
.Lx223_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx223_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx223_53
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
                                                                                        jmp   .Lx223_51
.Lx223_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx223_47
                        cmp              eax, 104
                                                                                        je    .Lx223_47
                        cmp              eax, 72
                                                                                        jne   .Lx223_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx223_47
                                                                                        jmp   .Lx223_48
.Lx223_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx223_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx223_53
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
                                                                                        jmp   .Lx223_51
.Lx223_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx223_49
                        cmp              edx, 80
                                                                                        je    .Lx223_53
                                                                                        jmp   .Lx223_52
.Lx223_49:
                        cmp              edx, 80
                                                                                        je    .Lx223_52
                        cmp              ecx, 5
                                                                                        je    .Lx223_53
                        cmp              edx, 5
                                                                                        je    .Lx223_53
                        cmp              ecx, 3
                                                                                        jne   .Lx223_50
                        cmp              edx, 3
                                                                                        jne   .Lx223_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx223_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx223_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx223_51
                                                                                        jmp   .Lx223_52
.Lx223_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx223_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx223_53
.Lx223_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx223_54
.Lx223_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx223_54
.Lx223_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx223_54:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n166_var_ref_α
n165_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
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
.Lx228_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx228_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        cmp              esi, 1
                                                                                        jne   .Lx228_55
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_55:
                        cmp              esi, 2
                                                                                        jne   .Lx228_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_56:
                        cmp              eax, 72
                                                                                        jne   .Lx228_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        cmp              rax, r8
                                                                                        je    .Lx228_41
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_41:
                        lea              r9, [rbp + 1520]
.Lx228_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx228_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        cmp              esi, 1
                                                                                        jne   .Lx228_57
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_57:
                        cmp              esi, 2
                                                                                        jne   .Lx228_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_58:
                        cmp              eax, 72
                                                                                        jne   .Lx228_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        cmp              rax, r9
                                                                                        je    .Lx228_43
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_43:
                        cmp              r8, r9
                                                                                        je    .Lx228_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_44
                        cmp              eax, 104
                                                                                        je    .Lx228_44
                        cmp              eax, 72
                                                                                        jne   .Lx228_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx228_44
                                                                                        jmp   .Lx228_45
.Lx228_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_53
                        cmp              eax, 104
                                                                                        je    .Lx228_53
                        cmp              eax, 72
                                                                                        jne   .Lx228_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_46
.Lx228_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx228_53
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
                                                                                        jmp   .Lx228_51
.Lx228_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_47
                        cmp              eax, 104
                                                                                        je    .Lx228_47
                        cmp              eax, 72
                                                                                        jne   .Lx228_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx228_47
                                                                                        jmp   .Lx228_48
.Lx228_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx228_53
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
                                                                                        jmp   .Lx228_51
.Lx228_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx228_49
                        cmp              edx, 80
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_52
.Lx228_49:
                        cmp              edx, 80
                                                                                        je    .Lx228_52
                        cmp              ecx, 5
                                                                                        je    .Lx228_53
                        cmp              edx, 5
                                                                                        je    .Lx228_53
                        cmp              ecx, 3
                                                                                        jne   .Lx228_50
                        cmp              edx, 3
                                                                                        jne   .Lx228_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx228_51
                                                                                        jmp   .Lx228_52
.Lx228_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx228_53
.Lx228_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx228_54
.Lx228_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx228_54
.Lx228_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx228_54:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n169_var_ref_α
n168_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
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
.Lx233_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx233_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_41
                        cmp              esi, 1
                                                                                        jne   .Lx233_55
                        mov              r8, rax
                                                                                        jmp   .Lx233_40
.Lx233_55:
                        cmp              esi, 2
                                                                                        jne   .Lx233_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx233_41
                        mov              r8, rax
                                                                                        jmp   .Lx233_40
.Lx233_56:
                        cmp              eax, 72
                                                                                        jne   .Lx233_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_41
                        cmp              rax, r8
                                                                                        je    .Lx233_41
                        mov              r8, rax
                                                                                        jmp   .Lx233_40
.Lx233_41:
                        lea              r9, [rbp + 1440]
.Lx233_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx233_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_43
                        cmp              esi, 1
                                                                                        jne   .Lx233_57
                        mov              r9, rax
                                                                                        jmp   .Lx233_42
.Lx233_57:
                        cmp              esi, 2
                                                                                        jne   .Lx233_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx233_43
                        mov              r9, rax
                                                                                        jmp   .Lx233_42
.Lx233_58:
                        cmp              eax, 72
                                                                                        jne   .Lx233_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_43
                        cmp              rax, r9
                                                                                        je    .Lx233_43
                        mov              r9, rax
                                                                                        jmp   .Lx233_42
.Lx233_43:
                        cmp              r8, r9
                                                                                        je    .Lx233_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx233_44
                        cmp              eax, 104
                                                                                        je    .Lx233_44
                        cmp              eax, 72
                                                                                        jne   .Lx233_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx233_44
                                                                                        jmp   .Lx233_45
.Lx233_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx233_53
                        cmp              eax, 104
                                                                                        je    .Lx233_53
                        cmp              eax, 72
                                                                                        jne   .Lx233_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx233_53
                                                                                        jmp   .Lx233_46
.Lx233_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx233_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx233_53
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
                                                                                        jmp   .Lx233_51
.Lx233_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx233_47
                        cmp              eax, 104
                                                                                        je    .Lx233_47
                        cmp              eax, 72
                                                                                        jne   .Lx233_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx233_47
                                                                                        jmp   .Lx233_48
.Lx233_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx233_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx233_53
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
                                                                                        jmp   .Lx233_51
.Lx233_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx233_49
                        cmp              edx, 80
                                                                                        je    .Lx233_53
                                                                                        jmp   .Lx233_52
.Lx233_49:
                        cmp              edx, 80
                                                                                        je    .Lx233_52
                        cmp              ecx, 5
                                                                                        je    .Lx233_53
                        cmp              edx, 5
                                                                                        je    .Lx233_53
                        cmp              ecx, 3
                                                                                        jne   .Lx233_50
                        cmp              edx, 3
                                                                                        jne   .Lx233_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx233_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx233_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx233_51
                                                                                        jmp   .Lx233_52
.Lx233_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx233_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx233_53
.Lx233_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx233_54
.Lx233_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx233_54
.Lx233_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx233_54:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n172_var_ref_α
n171_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n174_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
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
.Lx238_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx238_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        cmp              esi, 1
                                                                                        jne   .Lx238_55
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_55:
                        cmp              esi, 2
                                                                                        jne   .Lx238_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_56:
                        cmp              eax, 72
                                                                                        jne   .Lx238_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        cmp              rax, r8
                                                                                        je    .Lx238_41
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_41:
                        lea              r9, [rbp + 1360]
.Lx238_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx238_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        cmp              esi, 1
                                                                                        jne   .Lx238_57
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_57:
                        cmp              esi, 2
                                                                                        jne   .Lx238_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_58:
                        cmp              eax, 72
                                                                                        jne   .Lx238_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        cmp              rax, r9
                                                                                        je    .Lx238_43
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_43:
                        cmp              r8, r9
                                                                                        je    .Lx238_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_44
                        cmp              eax, 104
                                                                                        je    .Lx238_44
                        cmp              eax, 72
                                                                                        jne   .Lx238_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx238_44
                                                                                        jmp   .Lx238_45
.Lx238_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_53
                        cmp              eax, 104
                                                                                        je    .Lx238_53
                        cmp              eax, 72
                                                                                        jne   .Lx238_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx238_53
                                                                                        jmp   .Lx238_46
.Lx238_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx238_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx238_53
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
                                                                                        jmp   .Lx238_51
.Lx238_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_47
                        cmp              eax, 104
                                                                                        je    .Lx238_47
                        cmp              eax, 72
                                                                                        jne   .Lx238_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx238_47
                                                                                        jmp   .Lx238_48
.Lx238_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx238_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx238_53
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
                                                                                        jmp   .Lx238_51
.Lx238_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx238_49
                        cmp              edx, 80
                                                                                        je    .Lx238_53
                                                                                        jmp   .Lx238_52
.Lx238_49:
                        cmp              edx, 80
                                                                                        je    .Lx238_52
                        cmp              ecx, 5
                                                                                        je    .Lx238_53
                        cmp              edx, 5
                                                                                        je    .Lx238_53
                        cmp              ecx, 3
                                                                                        jne   .Lx238_50
                        cmp              edx, 3
                                                                                        jne   .Lx238_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx238_51
                                                                                        jmp   .Lx238_52
.Lx238_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx238_53
.Lx238_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx238_54
.Lx238_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx238_54
.Lx238_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx238_54:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n175_var_ref_α
n174_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
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
.Lx243_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx243_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_41
                        cmp              esi, 1
                                                                                        jne   .Lx243_55
                        mov              r8, rax
                                                                                        jmp   .Lx243_40
.Lx243_55:
                        cmp              esi, 2
                                                                                        jne   .Lx243_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_41
                        mov              r8, rax
                                                                                        jmp   .Lx243_40
.Lx243_56:
                        cmp              eax, 72
                                                                                        jne   .Lx243_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_41
                        cmp              rax, r8
                                                                                        je    .Lx243_41
                        mov              r8, rax
                                                                                        jmp   .Lx243_40
.Lx243_41:
                        lea              r9, [rbp + 1280]
.Lx243_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx243_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_43
                        cmp              esi, 1
                                                                                        jne   .Lx243_57
                        mov              r9, rax
                                                                                        jmp   .Lx243_42
.Lx243_57:
                        cmp              esi, 2
                                                                                        jne   .Lx243_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_43
                        mov              r9, rax
                                                                                        jmp   .Lx243_42
.Lx243_58:
                        cmp              eax, 72
                                                                                        jne   .Lx243_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_43
                        cmp              rax, r9
                                                                                        je    .Lx243_43
                        mov              r9, rax
                                                                                        jmp   .Lx243_42
.Lx243_43:
                        cmp              r8, r9
                                                                                        je    .Lx243_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_44
                        cmp              eax, 104
                                                                                        je    .Lx243_44
                        cmp              eax, 72
                                                                                        jne   .Lx243_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx243_44
                                                                                        jmp   .Lx243_45
.Lx243_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_53
                        cmp              eax, 104
                                                                                        je    .Lx243_53
                        cmp              eax, 72
                                                                                        jne   .Lx243_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx243_53
                                                                                        jmp   .Lx243_46
.Lx243_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx243_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx243_53
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
                                                                                        jmp   .Lx243_51
.Lx243_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_47
                        cmp              eax, 104
                                                                                        je    .Lx243_47
                        cmp              eax, 72
                                                                                        jne   .Lx243_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx243_47
                                                                                        jmp   .Lx243_48
.Lx243_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx243_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx243_53
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
                                                                                        jmp   .Lx243_51
.Lx243_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx243_49
                        cmp              edx, 80
                                                                                        je    .Lx243_53
                                                                                        jmp   .Lx243_52
.Lx243_49:
                        cmp              edx, 80
                                                                                        je    .Lx243_52
                        cmp              ecx, 5
                                                                                        je    .Lx243_53
                        cmp              edx, 5
                                                                                        je    .Lx243_53
                        cmp              ecx, 3
                                                                                        jne   .Lx243_50
                        cmp              edx, 3
                                                                                        jne   .Lx243_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx243_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx243_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx243_51
                                                                                        jmp   .Lx243_52
.Lx243_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx243_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx243_53
.Lx243_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx243_54
.Lx243_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx243_54
.Lx243_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx243_54:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n178_var_ref_α
n177_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
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
.Lx248_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx248_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx248_41
                        cmp              esi, 1
                                                                                        jne   .Lx248_55
                        mov              r8, rax
                                                                                        jmp   .Lx248_40
.Lx248_55:
                        cmp              esi, 2
                                                                                        jne   .Lx248_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx248_41
                        mov              r8, rax
                                                                                        jmp   .Lx248_40
.Lx248_56:
                        cmp              eax, 72
                                                                                        jne   .Lx248_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx248_41
                        cmp              rax, r8
                                                                                        je    .Lx248_41
                        mov              r8, rax
                                                                                        jmp   .Lx248_40
.Lx248_41:
                        lea              r9, [rbp + 1200]
.Lx248_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx248_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx248_43
                        cmp              esi, 1
                                                                                        jne   .Lx248_57
                        mov              r9, rax
                                                                                        jmp   .Lx248_42
.Lx248_57:
                        cmp              esi, 2
                                                                                        jne   .Lx248_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx248_43
                        mov              r9, rax
                                                                                        jmp   .Lx248_42
.Lx248_58:
                        cmp              eax, 72
                                                                                        jne   .Lx248_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx248_43
                        cmp              rax, r9
                                                                                        je    .Lx248_43
                        mov              r9, rax
                                                                                        jmp   .Lx248_42
.Lx248_43:
                        cmp              r8, r9
                                                                                        je    .Lx248_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx248_44
                        cmp              eax, 104
                                                                                        je    .Lx248_44
                        cmp              eax, 72
                                                                                        jne   .Lx248_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx248_44
                                                                                        jmp   .Lx248_45
.Lx248_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx248_53
                        cmp              eax, 104
                                                                                        je    .Lx248_53
                        cmp              eax, 72
                                                                                        jne   .Lx248_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx248_53
                                                                                        jmp   .Lx248_46
.Lx248_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx248_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx248_53
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
                                                                                        jmp   .Lx248_51
.Lx248_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx248_47
                        cmp              eax, 104
                                                                                        je    .Lx248_47
                        cmp              eax, 72
                                                                                        jne   .Lx248_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx248_47
                                                                                        jmp   .Lx248_48
.Lx248_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx248_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx248_53
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
                                                                                        jmp   .Lx248_51
.Lx248_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx248_49
                        cmp              edx, 80
                                                                                        je    .Lx248_53
                                                                                        jmp   .Lx248_52
.Lx248_49:
                        cmp              edx, 80
                                                                                        je    .Lx248_52
                        cmp              ecx, 5
                                                                                        je    .Lx248_53
                        cmp              edx, 5
                                                                                        je    .Lx248_53
                        cmp              ecx, 3
                                                                                        jne   .Lx248_50
                        cmp              edx, 3
                                                                                        jne   .Lx248_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx248_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx248_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx248_51
                                                                                        jmp   .Lx248_52
.Lx248_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx248_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx248_53
.Lx248_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx248_54
.Lx248_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx248_54
.Lx248_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx248_54:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n181_var_ref_α
n180_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n183_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
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
.Lx253_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx253_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_41
                        cmp              esi, 1
                                                                                        jne   .Lx253_55
                        mov              r8, rax
                                                                                        jmp   .Lx253_40
.Lx253_55:
                        cmp              esi, 2
                                                                                        jne   .Lx253_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx253_41
                        mov              r8, rax
                                                                                        jmp   .Lx253_40
.Lx253_56:
                        cmp              eax, 72
                                                                                        jne   .Lx253_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_41
                        cmp              rax, r8
                                                                                        je    .Lx253_41
                        mov              r8, rax
                                                                                        jmp   .Lx253_40
.Lx253_41:
                        lea              r9, [rbp + 1120]
.Lx253_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx253_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_43
                        cmp              esi, 1
                                                                                        jne   .Lx253_57
                        mov              r9, rax
                                                                                        jmp   .Lx253_42
.Lx253_57:
                        cmp              esi, 2
                                                                                        jne   .Lx253_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx253_43
                        mov              r9, rax
                                                                                        jmp   .Lx253_42
.Lx253_58:
                        cmp              eax, 72
                                                                                        jne   .Lx253_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_43
                        cmp              rax, r9
                                                                                        je    .Lx253_43
                        mov              r9, rax
                                                                                        jmp   .Lx253_42
.Lx253_43:
                        cmp              r8, r9
                                                                                        je    .Lx253_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx253_44
                        cmp              eax, 104
                                                                                        je    .Lx253_44
                        cmp              eax, 72
                                                                                        jne   .Lx253_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx253_44
                                                                                        jmp   .Lx253_45
.Lx253_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx253_53
                        cmp              eax, 104
                                                                                        je    .Lx253_53
                        cmp              eax, 72
                                                                                        jne   .Lx253_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx253_53
                                                                                        jmp   .Lx253_46
.Lx253_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx253_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx253_53
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
                                                                                        jmp   .Lx253_51
.Lx253_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx253_47
                        cmp              eax, 104
                                                                                        je    .Lx253_47
                        cmp              eax, 72
                                                                                        jne   .Lx253_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx253_47
                                                                                        jmp   .Lx253_48
.Lx253_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx253_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx253_53
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
                                                                                        jmp   .Lx253_51
.Lx253_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx253_49
                        cmp              edx, 80
                                                                                        je    .Lx253_53
                                                                                        jmp   .Lx253_52
.Lx253_49:
                        cmp              edx, 80
                                                                                        je    .Lx253_52
                        cmp              ecx, 5
                                                                                        je    .Lx253_53
                        cmp              edx, 5
                                                                                        je    .Lx253_53
                        cmp              ecx, 3
                                                                                        jne   .Lx253_50
                        cmp              edx, 3
                                                                                        jne   .Lx253_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx253_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx253_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx253_51
                                                                                        jmp   .Lx253_52
.Lx253_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx253_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx253_53
.Lx253_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx253_54
.Lx253_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx253_54
.Lx253_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx253_54:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx253_240
                        add              rsp, 1440
                                                                                        jmp   n187_var_ref_α
.Lx253_240:
                                                                                        jmp   n184_lit_string_α
n183_call_builtin_prolog_β:
                        add              rsp, 1440
                                                                                        jmp   n187_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 4
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n185_var_ref_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "ames"
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n186_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx258_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx258_21
.Lx258_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 288]                     # v
                        mov              rdx, qword ptr [rbp + 296]                     # v
                        call             rt_arg_stage@PLT
.Lx258_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx258_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx258_23
.Lx258_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx258_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx258_1
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4]
                                                                                        jmp   rax
.Lx258_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx258_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx258_2
.Lx258_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx258_2
.Lx258_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx258_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx258_2
.Lx258_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx258_2
.Lx258_1:
                        call             rt_faildescr@PLT
.Lx258_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n211_suspend_α
n186_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n189_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
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
.Lx263_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx263_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx263_41
                        cmp              esi, 1
                                                                                        jne   .Lx263_55
                        mov              r8, rax
                                                                                        jmp   .Lx263_40
.Lx263_55:
                        cmp              esi, 2
                                                                                        jne   .Lx263_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx263_41
                        mov              r8, rax
                                                                                        jmp   .Lx263_40
.Lx263_56:
                        cmp              eax, 72
                                                                                        jne   .Lx263_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx263_41
                        cmp              rax, r8
                                                                                        je    .Lx263_41
                        mov              r8, rax
                                                                                        jmp   .Lx263_40
.Lx263_41:
                        lea              r9, [rbp + 1040]
.Lx263_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx263_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx263_43
                        cmp              esi, 1
                                                                                        jne   .Lx263_57
                        mov              r9, rax
                                                                                        jmp   .Lx263_42
.Lx263_57:
                        cmp              esi, 2
                                                                                        jne   .Lx263_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx263_43
                        mov              r9, rax
                                                                                        jmp   .Lx263_42
.Lx263_58:
                        cmp              eax, 72
                                                                                        jne   .Lx263_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx263_43
                        cmp              rax, r9
                                                                                        je    .Lx263_43
                        mov              r9, rax
                                                                                        jmp   .Lx263_42
.Lx263_43:
                        cmp              r8, r9
                                                                                        je    .Lx263_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx263_44
                        cmp              eax, 104
                                                                                        je    .Lx263_44
                        cmp              eax, 72
                                                                                        jne   .Lx263_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx263_44
                                                                                        jmp   .Lx263_45
.Lx263_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx263_53
                        cmp              eax, 104
                                                                                        je    .Lx263_53
                        cmp              eax, 72
                                                                                        jne   .Lx263_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx263_53
                                                                                        jmp   .Lx263_46
.Lx263_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx263_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx263_53
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
                                                                                        jmp   .Lx263_51
.Lx263_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx263_47
                        cmp              eax, 104
                                                                                        je    .Lx263_47
                        cmp              eax, 72
                                                                                        jne   .Lx263_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx263_47
                                                                                        jmp   .Lx263_48
.Lx263_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx263_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx263_53
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
                                                                                        jmp   .Lx263_51
.Lx263_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx263_49
                        cmp              edx, 80
                                                                                        je    .Lx263_53
                                                                                        jmp   .Lx263_52
.Lx263_49:
                        cmp              edx, 80
                                                                                        je    .Lx263_52
                        cmp              ecx, 5
                                                                                        je    .Lx263_53
                        cmp              edx, 5
                                                                                        je    .Lx263_53
                        cmp              ecx, 3
                                                                                        jne   .Lx263_50
                        cmp              edx, 3
                                                                                        jne   .Lx263_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx263_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx263_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx263_51
                                                                                        jmp   .Lx263_52
.Lx263_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx263_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx263_53
.Lx263_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx263_54
.Lx263_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx263_54
.Lx263_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx263_54:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n193_var_ref_α
                                                                                        jmp   n190_lit_string_α
n189_call_builtin_prolog_β:
                                                                                        jmp   n193_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 5
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n191_var_ref_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n192_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx268_21
.Lx268_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 400]                     # v
                        mov              rdx, qword ptr [rbp + 408]                     # v
                        call             rt_arg_stage@PLT
.Lx268_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx268_23
.Lx268_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 416]                     # v
                        mov              rdx, qword ptr [rbp + 424]                     # v
                        call             rt_arg_stage@PLT
.Lx268_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx268_1
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx268_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx268_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_1:
                        call             rt_faildescr@PLT
.Lx268_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n211_suspend_α
n192_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
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
.Lx273_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx273_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx273_41
                        cmp              esi, 1
                                                                                        jne   .Lx273_55
                        mov              r8, rax
                                                                                        jmp   .Lx273_40
.Lx273_55:
                        cmp              esi, 2
                                                                                        jne   .Lx273_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx273_41
                        mov              r8, rax
                                                                                        jmp   .Lx273_40
.Lx273_56:
                        cmp              eax, 72
                                                                                        jne   .Lx273_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx273_41
                        cmp              rax, r8
                                                                                        je    .Lx273_41
                        mov              r8, rax
                                                                                        jmp   .Lx273_40
.Lx273_41:
                        lea              r9, [rbp + 960]
.Lx273_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx273_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx273_43
                        cmp              esi, 1
                                                                                        jne   .Lx273_57
                        mov              r9, rax
                                                                                        jmp   .Lx273_42
.Lx273_57:
                        cmp              esi, 2
                                                                                        jne   .Lx273_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx273_43
                        mov              r9, rax
                                                                                        jmp   .Lx273_42
.Lx273_58:
                        cmp              eax, 72
                                                                                        jne   .Lx273_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx273_43
                        cmp              rax, r9
                                                                                        je    .Lx273_43
                        mov              r9, rax
                                                                                        jmp   .Lx273_42
.Lx273_43:
                        cmp              r8, r9
                                                                                        je    .Lx273_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx273_44
                        cmp              eax, 104
                                                                                        je    .Lx273_44
                        cmp              eax, 72
                                                                                        jne   .Lx273_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx273_44
                                                                                        jmp   .Lx273_45
.Lx273_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx273_53
                        cmp              eax, 104
                                                                                        je    .Lx273_53
                        cmp              eax, 72
                                                                                        jne   .Lx273_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx273_53
                                                                                        jmp   .Lx273_46
.Lx273_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx273_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx273_53
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
                                                                                        jmp   .Lx273_51
.Lx273_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx273_47
                        cmp              eax, 104
                                                                                        je    .Lx273_47
                        cmp              eax, 72
                                                                                        jne   .Lx273_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx273_47
                                                                                        jmp   .Lx273_48
.Lx273_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx273_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx273_53
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
                                                                                        jmp   .Lx273_51
.Lx273_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx273_49
                        cmp              edx, 80
                                                                                        je    .Lx273_53
                                                                                        jmp   .Lx273_52
.Lx273_49:
                        cmp              edx, 80
                                                                                        je    .Lx273_52
                        cmp              ecx, 5
                                                                                        je    .Lx273_53
                        cmp              edx, 5
                                                                                        je    .Lx273_53
                        cmp              ecx, 3
                                                                                        jne   .Lx273_50
                        cmp              edx, 3
                                                                                        jne   .Lx273_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx273_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx273_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx273_51
                                                                                        jmp   .Lx273_52
.Lx273_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx273_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx273_53
.Lx273_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx273_54
.Lx273_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx273_54
.Lx273_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx273_54:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n199_var_ref_α
                                                                                        jmp   n196_lit_string_α
n195_call_builtin_prolog_β:
                                                                                        jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n197_var_ref_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "conroy"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n198_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        mov              qword ptr [rbp + 480], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx278_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx278_21
.Lx278_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 512]                     # v
                        mov              rdx, qword ptr [rbp + 520]                     # v
                        call             rt_arg_stage@PLT
.Lx278_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx278_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx278_23
.Lx278_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 528]                     # v
                        mov              rdx, qword ptr [rbp + 536]                     # v
                        call             rt_arg_stage@PLT
.Lx278_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx278_1
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4]
                                                                                        jmp   rax
.Lx278_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx278_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx278_2
.Lx278_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx278_2
.Lx278_4:
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx278_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx278_2
.Lx278_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx278_2
.Lx278_1:
                        call             rt_faildescr@PLT
.Lx278_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n211_suspend_α
n198_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
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
.Lx283_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx283_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        cmp              esi, 1
                                                                                        jne   .Lx283_55
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_55:
                        cmp              esi, 2
                                                                                        jne   .Lx283_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_56:
                        cmp              eax, 72
                                                                                        jne   .Lx283_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        cmp              rax, r8
                                                                                        je    .Lx283_41
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_41:
                        lea              r9, [rbp + 880]
.Lx283_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx283_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        cmp              esi, 1
                                                                                        jne   .Lx283_57
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_57:
                        cmp              esi, 2
                                                                                        jne   .Lx283_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_58:
                        cmp              eax, 72
                                                                                        jne   .Lx283_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        cmp              rax, r9
                                                                                        je    .Lx283_43
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_43:
                        cmp              r8, r9
                                                                                        je    .Lx283_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_44
                        cmp              eax, 104
                                                                                        je    .Lx283_44
                        cmp              eax, 72
                                                                                        jne   .Lx283_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx283_44
                                                                                        jmp   .Lx283_45
.Lx283_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_53
                        cmp              eax, 104
                                                                                        je    .Lx283_53
                        cmp              eax, 72
                                                                                        jne   .Lx283_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx283_53
                                                                                        jmp   .Lx283_46
.Lx283_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx283_53
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
                                                                                        jmp   .Lx283_51
.Lx283_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_47
                        cmp              eax, 104
                                                                                        je    .Lx283_47
                        cmp              eax, 72
                                                                                        jne   .Lx283_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx283_47
                                                                                        jmp   .Lx283_48
.Lx283_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx283_53
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
                                                                                        jmp   .Lx283_51
.Lx283_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx283_49
                        cmp              edx, 80
                                                                                        je    .Lx283_53
                                                                                        jmp   .Lx283_52
.Lx283_49:
                        cmp              edx, 80
                                                                                        je    .Lx283_52
                        cmp              ecx, 5
                                                                                        je    .Lx283_53
                        cmp              edx, 5
                                                                                        je    .Lx283_53
                        cmp              ecx, 3
                                                                                        jne   .Lx283_50
                        cmp              edx, 3
                                                                                        jne   .Lx283_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx283_51
                                                                                        jmp   .Lx283_52
.Lx283_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx283_53
.Lx283_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx283_54
.Lx283_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx283_54
.Lx283_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx283_54:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n205_var_ref_α
                                                                                        jmp   n202_lit_string_α
n201_call_builtin_prolog_β:
                                                                                        jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 5
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n203_var_ref_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "davis"
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n204_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx288_21
.Lx288_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 624]                     # v
                        mov              rdx, qword ptr [rbp + 632]                     # v
                        call             rt_arg_stage@PLT
.Lx288_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx288_23
.Lx288_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 640]                     # v
                        mov              rdx, qword ptr [rbp + 648]                     # v
                        call             rt_arg_stage@PLT
.Lx288_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx288_1
                        lea              rcx, [rip + .Lx288_3]
                        lea              rdx, [rip + .Lx288_4]
                                                                                        jmp   rax
.Lx288_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx288_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx288_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_1:
                        call             rt_faildescr@PLT
.Lx288_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n211_suspend_α
n204_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_prolog_α:
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
.Lx293_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx293_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        cmp              esi, 1
                                                                                        jne   .Lx293_55
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_55:
                        cmp              esi, 2
                                                                                        jne   .Lx293_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_56:
                        cmp              eax, 72
                                                                                        jne   .Lx293_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        cmp              rax, r8
                                                                                        je    .Lx293_41
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_41:
                        lea              r9, [rbp + 800]
.Lx293_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx293_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        cmp              esi, 1
                                                                                        jne   .Lx293_57
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_57:
                        cmp              esi, 2
                                                                                        jne   .Lx293_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_58:
                        cmp              eax, 72
                                                                                        jne   .Lx293_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        cmp              rax, r9
                                                                                        je    .Lx293_43
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_43:
                        cmp              r8, r9
                                                                                        je    .Lx293_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_44
                        cmp              eax, 104
                                                                                        je    .Lx293_44
                        cmp              eax, 72
                                                                                        jne   .Lx293_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx293_44
                                                                                        jmp   .Lx293_45
.Lx293_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_53
                        cmp              eax, 104
                                                                                        je    .Lx293_53
                        cmp              eax, 72
                                                                                        jne   .Lx293_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx293_53
                                                                                        jmp   .Lx293_46
.Lx293_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx293_53
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
                                                                                        jmp   .Lx293_51
.Lx293_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_47
                        cmp              eax, 104
                                                                                        je    .Lx293_47
                        cmp              eax, 72
                                                                                        jne   .Lx293_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx293_47
                                                                                        jmp   .Lx293_48
.Lx293_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx293_53
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
                                                                                        jmp   .Lx293_51
.Lx293_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx293_49
                        cmp              edx, 80
                                                                                        je    .Lx293_53
                                                                                        jmp   .Lx293_52
.Lx293_49:
                        cmp              edx, 80
                                                                                        je    .Lx293_52
                        cmp              ecx, 5
                                                                                        je    .Lx293_53
                        cmp              edx, 5
                                                                                        je    .Lx293_53
                        cmp              ecx, 3
                                                                                        jne   .Lx293_50
                        cmp              edx, 3
                                                                                        jne   .Lx293_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx293_51
                                                                                        jmp   .Lx293_52
.Lx293_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx293_53
.Lx293_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx293_54
.Lx293_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx293_54
.Lx293_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx293_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n208_lit_string_α
n207_call_builtin_prolog_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 5
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n209_var_ref_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "evans"
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n210_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_proc_staged_α:
                        mov              qword ptr [rbp + 704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx298_21
.Lx298_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 736]                     # v
                        mov              rdx, qword ptr [rbp + 744]                     # v
                        call             rt_arg_stage@PLT
.Lx298_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_22
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx298_23
.Lx298_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 752]                     # v
                        mov              rdx, qword ptr [rbp + 760]                     # v
                        call             rt_arg_stage@PLT
.Lx298_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx298_1
                        lea              rcx, [rip + .Lx298_3]
                        lea              rdx, [rip + .Lx298_4]
                                                                                        jmp   rax
.Lx298_3:
                        mov              qword ptr [rbp + 712], rsp
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx298_5
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx298_2
.Lx298_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx298_2
.Lx298_4:
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx298_6
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx298_2
.Lx298_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx298_2
.Lx298_1:
                        call             rt_faildescr@PLT
.Lx298_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_builtin_prolog_α
                                                                                        jmp   n211_suspend_α
n210_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 712]
                                                                                        jmp   qword ptr [rsp]
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "sex/2"
#-----------------------------------------------------------------------------------------------------------------------
n211_suspend_α:
                        lea              rax, [rip + n211_suspend_β]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 1440
                                                                                        jmp   proc_holder_sex$2F7_γ
n211_suspend_β:
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    proc_holder_sex$2F7_ω
                                                                                        jmp   proc_holder_sex$2F7_ω
n212_call_builtin_prolog_β:
                                                                                        jmp   proc_holder_sex$2F7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_β:
                                                                                        jmp   qword ptr [rbp + 1728]
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_holder_sex$2F7_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_prolog_α:
                        sub              rsp, 624
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx390_101
.Lx390_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx390_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx390_240
                        add              rsp, 624
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx390_240:
                                                                                        jmp   n303_var_ref_α
n302_call_builtin_prolog_β:
                        add              rsp, 624
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2560]                    # v
                        mov              rdx, qword ptr [rbp + 2568]                    # v
                        call             rt_arg_stage@PLT
.Lx394_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 624
                                                                                        jmp   n389_call_builtin_prolog_α
.Lx394_240:
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
                                                                                        jmp   n306_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n306_call_proc_staged_α:
                        mov              qword ptr [rbp + 2448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx398_20
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx398_21
.Lx398_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2480]                    # v
                        mov              rdx, qword ptr [rbp + 2488]                    # v
                        call             rt_arg_stage@PLT
.Lx398_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx398_1
                        lea              rcx, [rip + .Lx398_3]
                        lea              rdx, [rip + .Lx398_4]
                                                                                        jmp   rax
.Lx398_3:
                        mov              qword ptr [rbp + 2456], rsp
                        mov              rax, qword ptr [rbp + 2448]
                        test             rax, rax
                                                                                        jne   .Lx398_5
                        mov              qword ptr [rbp + 2448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx398_2
.Lx398_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx398_2
.Lx398_4:
                        mov              rax, qword ptr [rbp + 2448]
                        test             rax, rax
                                                                                        jne   .Lx398_6
                        mov              qword ptr [rbp + 2448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx398_2
.Lx398_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx398_2
.Lx398_1:
                        call             rt_faildescr@PLT
.Lx398_2:
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 104
                                                                                        je    n304_call_proc_staged_β
                                                                                        jmp   n307_var_ref_α
n306_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2456]
                                                                                        jmp   qword ptr [rsp]
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n308_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_proc_staged_α:
                        mov              qword ptr [rbp + 2368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx402_20
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx402_21
.Lx402_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2400]                    # v
                        mov              rdx, qword ptr [rbp + 2408]                    # v
                        call             rt_arg_stage@PLT
.Lx402_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx402_1
                        lea              rcx, [rip + .Lx402_3]
                        lea              rdx, [rip + .Lx402_4]
                                                                                        jmp   rax
.Lx402_3:
                        mov              qword ptr [rbp + 2376], rsp
                        mov              rax, qword ptr [rbp + 2368]
                        test             rax, rax
                                                                                        jne   .Lx402_5
                        mov              qword ptr [rbp + 2368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx402_2
.Lx402_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx402_2
.Lx402_4:
                        mov              rax, qword ptr [rbp + 2368]
                        test             rax, rax
                                                                                        jne   .Lx402_6
                        mov              qword ptr [rbp + 2368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx402_2
.Lx402_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx402_2
.Lx402_1:
                        call             rt_faildescr@PLT
.Lx402_2:
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n306_call_proc_staged_β
                                                                                        jmp   n309_var_ref_α
n308_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2376]
                                                                                        jmp   qword ptr [rsp]
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        mov              qword ptr [rbp + 2288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx406_20
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx406_21
.Lx406_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2320]                    # v
                        mov              rdx, qword ptr [rbp + 2328]                    # v
                        call             rt_arg_stage@PLT
.Lx406_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx406_1
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4]
                                                                                        jmp   rax
.Lx406_3:
                        mov              qword ptr [rbp + 2296], rsp
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx406_5
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_4:
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx406_6
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_1:
                        call             rt_faildescr@PLT
.Lx406_2:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    n308_call_proc_staged_β
                                                                                        jmp   n311_var_ref_α
n310_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2296]
                                                                                        jmp   qword ptr [rsp]
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n312_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        mov              qword ptr [rbp + 2208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx410_20
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx410_21
.Lx410_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2240]                    # v
                        mov              rdx, qword ptr [rbp + 2248]                    # v
                        call             rt_arg_stage@PLT
.Lx410_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx410_1
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        mov              qword ptr [rbp + 2216], rsp
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx410_5
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_4:
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx410_6
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_1:
                        call             rt_faildescr@PLT
.Lx410_2:
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 104
                                                                                        je    n310_call_proc_staged_β
                                                                                        jmp   n313_var_ref_α
n312_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2216]
                                                                                        jmp   qword ptr [rsp]
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n318_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n318_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx422_20
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx422_21
.Lx422_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2096]                    # v
                        mov              rdx, qword ptr [rbp + 2104]                    # v
                        call             rt_arg_stage@PLT
.Lx422_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx422_22
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx422_23
.Lx422_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2112]                    # v
                        mov              rdx, qword ptr [rbp + 2120]                    # v
                        call             rt_arg_stage@PLT
.Lx422_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx422_24
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx422_25
.Lx422_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 2128]                    # v
                        mov              rdx, qword ptr [rbp + 2136]                    # v
                        call             rt_arg_stage@PLT
.Lx422_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx422_26
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx422_27
.Lx422_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 2144]                    # v
                        mov              rdx, qword ptr [rbp + 2152]                    # v
                        call             rt_arg_stage@PLT
.Lx422_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx422_28
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx422_29
.Lx422_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 2160]                    # v
                        mov              rdx, qword ptr [rbp + 2168]                    # v
                        call             rt_arg_stage@PLT
.Lx422_29:
                        mov              edi, 6                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx422_1
                        lea              rcx, [rip + .Lx422_3]
                        lea              rdx, [rip + .Lx422_4]
                                                                                        jmp   rax
.Lx422_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx422_2
.Lx422_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx422_2
.Lx422_1:
                        call             rt_faildescr@PLT
.Lx422_2:
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 104
                                                                                        je    n312_call_proc_staged_β
                                                                                        jmp   n319_var_ref_α
n318_call_proc_staged_β:
                                                                                        jmp   n312_call_proc_staged_β
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "all_diff5/5"
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 1968], 2                      # result
                        mov              dword ptr [rbp + 1972], 5
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n321_call_builtin_prolog_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              rsi, qword ptr [rip + .Lx426_2]
                                                                                        jmp   .Lx426_3
.Lx426_2:
                        .quad            .Lx426_2_s
.Lx426_2_s:
                        .string          "buyer"
.Lx426_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx426_240
                        add              rsp, 624
                                                                                        jmp   n322_var_ref_α
.Lx426_240:
                                                                                        jmp   n318_call_proc_staged_β
n321_call_builtin_prolog_β:
                        add              rsp, 624
                                                                                        jmp   n322_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n323_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 5
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n324_call_builtin_prolog_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              rsi, qword ptr [rip + .Lx430_2]
                                                                                        jmp   .Lx430_3
.Lx430_2:
                        .quad            .Lx430_2_s
.Lx430_2_s:
                        .string          "buyer"
.Lx430_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n325_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n324_call_builtin_prolog_β:
                                                                                        jmp   n325_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:
                        mov              qword ptr [rbp + 1808], 2                      # result
                        mov              dword ptr [rbp + 1812], 5
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n327_call_builtin_prolog_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              rsi, qword ptr [rip + .Lx434_2]
                                                                                        jmp   .Lx434_3
.Lx434_2:
                        .quad            .Lx434_2_s
.Lx434_2_s:
                        .string          "buyer"
.Lx434_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n328_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n327_call_builtin_prolog_β:
                                                                                        jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 7
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n330_call_builtin_prolog_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx438_2]
                                                                                        jmp   .Lx438_3
.Lx438_2:
                        .quad            .Lx438_2_s
.Lx438_2_s:
                        .string          "cashier"
.Lx438_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n331_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n330_call_builtin_prolog_β:
                                                                                        jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 5
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n333_call_builtin_prolog_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n333_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx442_2]
                                                                                        jmp   .Lx442_3
.Lx442_2:
                        .quad            .Lx442_2_s
.Lx442_2_s:
                        .string          "clerk"
.Lx442_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n334_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n333_call_builtin_prolog_β:
                                                                                        jmp   n334_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n335_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 7
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n336_call_builtin_prolog_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              rsi, qword ptr [rip + .Lx446_2]
                                                                                        jmp   .Lx446_3
.Lx446_2:
                        .quad            .Lx446_2_s
.Lx446_2_s:
                        .string          "manager"
.Lx446_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n337_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n336_call_builtin_prolog_β:
                                                                                        jmp   n337_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n338_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n339_call_builtin_prolog_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n339_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              rsi, qword ptr [rip + .Lx450_2]
                                                                                        jmp   .Lx450_3
.Lx450_2:
                        .quad            .Lx450_2_s
.Lx450_2_s:
                        .string          "clerk"
.Lx450_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n340_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n339_call_builtin_prolog_β:
                                                                                        jmp   n340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 7
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n342_call_builtin_prolog_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lx454_2]
                                                                                        jmp   .Lx454_3
.Lx454_2:
                        .quad            .Lx454_2_s
.Lx454_2_s:
                        .string          "cashier"
.Lx454_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n343_var_ref_α
                                                                                        jmp   n318_call_proc_staged_β
n342_call_builtin_prolog_β:
                                                                                        jmp   n343_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n348_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx466_21
.Lx466_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1264]                    # v
                        mov              rdx, qword ptr [rbp + 1272]                    # v
                        call             rt_arg_stage@PLT
.Lx466_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_22
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx466_23
.Lx466_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1280]                    # v
                        mov              rdx, qword ptr [rbp + 1288]                    # v
                        call             rt_arg_stage@PLT
.Lx466_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_24
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx466_25
.Lx466_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1296]                    # v
                        mov              rdx, qword ptr [rbp + 1304]                    # v
                        call             rt_arg_stage@PLT
.Lx466_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_26
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx466_27
.Lx466_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1312]                    # v
                        mov              rdx, qword ptr [rbp + 1320]                    # v
                        call             rt_arg_stage@PLT
.Lx466_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_28
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx466_29
.Lx466_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 1328]                    # v
                        mov              rdx, qword ptr [rbp + 1336]                    # v
                        call             rt_arg_stage@PLT
.Lx466_29:
                        mov              edi, 5                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx466_1
                        lea              rcx, [rip + .Lx466_3]
                        lea              rdx, [rip + .Lx466_4]
                                                                                        jmp   rax
.Lx466_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx466_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx466_2
.Lx466_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx466_2
.Lx466_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx466_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx466_2
.Lx466_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx466_2
.Lx466_1:
                        call             rt_faildescr@PLT
.Lx466_2:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n318_call_proc_staged_β
                                                                                        jmp   n349_var_ref_α
n348_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "cashier_manager_same_sex/5"
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n352_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n354_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_proc_staged_α:
                        mov              qword ptr [rbp + 1024], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx478_21
.Lx478_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1056]                    # v
                        mov              rdx, qword ptr [rbp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx478_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx478_23
.Lx478_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1072]                    # v
                        mov              rdx, qword ptr [rbp + 1080]                    # v
                        call             rt_arg_stage@PLT
.Lx478_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_24
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx478_25
.Lx478_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1088]                    # v
                        mov              rdx, qword ptr [rbp + 1096]                    # v
                        call             rt_arg_stage@PLT
.Lx478_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_26
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx478_27
.Lx478_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1104]                    # v
                        mov              rdx, qword ptr [rbp + 1112]                    # v
                        call             rt_arg_stage@PLT
.Lx478_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_28
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx478_29
.Lx478_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 1120]                    # v
                        mov              rdx, qword ptr [rbp + 1128]                    # v
                        call             rt_arg_stage@PLT
.Lx478_29:
                        mov              edi, 7                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx478_1
                        lea              rcx, [rip + .Lx478_3]
                        lea              rdx, [rip + .Lx478_4]
                                                                                        jmp   rax
.Lx478_3:
                        mov              qword ptr [rbp + 1032], rsp
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx478_5
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx478_2
.Lx478_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx478_2
.Lx478_4:
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx478_6
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx478_2
.Lx478_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx478_2
.Lx478_1:
                        call             rt_faildescr@PLT
.Lx478_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n348_call_proc_staged_β
                                                                                        jmp   n355_var_ref_α
n354_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1032]
                                                                                        jmp   qword ptr [rsp]
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "clerk_cashier_opp/5"
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 5
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n357_call_builtin_prolog_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              rsi, qword ptr [rip + .Lx482_2]
                                                                                        jmp   .Lx482_3
.Lx482_2:
                        .quad            .Lx482_2_s
.Lx482_2_s:
                        .string          "clerk"
.Lx482_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n361_var_ref_α
                                                                                        jmp   n358_var_ref_α
n357_call_builtin_prolog_β:
                                                                                        jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n359_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 7
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n360_call_builtin_prolog_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx486_2]
                                                                                        jmp   .Lx486_3
.Lx486_2:
                        .quad            .Lx486_2_s
.Lx486_2_s:
                        .string          "cashier"
.Lx486_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n361_var_ref_α
                                                                                        jmp   n354_call_proc_staged_β
n360_call_builtin_prolog_β:
                                                                                        jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n363_call_builtin_prolog_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx490_2]
                                                                                        jmp   .Lx490_3
.Lx490_2:
                        .quad            .Lx490_2_s
.Lx490_2_s:
                        .string          "clerk"
.Lx490_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n367_lit_string_α
                                                                                        jmp   n364_var_ref_α
n363_call_builtin_prolog_β:
                                                                                        jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n365_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 7
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n366_call_builtin_prolog_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx494_2]
                                                                                        jmp   .Lx494_3
.Lx494_2:
                        .quad            .Lx494_2_s
.Lx494_2_s:
                        .string          "cashier"
.Lx494_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n367_lit_string_α
                                                                                        jmp   n354_call_proc_staged_β
n366_call_builtin_prolog_β:
                                                                                        jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 5
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n368_call_builtin_prolog_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "Ames="
#-----------------------------------------------------------------------------------------------------------------------
n368_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn497:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn497]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n369_var_α
n368_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n370_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn501:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn501]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n371_lit_string_α
n370_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 7
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n372_call_builtin_prolog_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          " Brown="
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn504:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n373_var_α
n372_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn508:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n375_lit_string_α
n374_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 8
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n376_call_builtin_prolog_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          " Conroy="
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn511:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n377_var_α
n376_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n378_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n378_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn515:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n379_lit_string_α
n378_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 7
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n380_call_builtin_prolog_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          " Davis="
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn518:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n381_var_α
n380_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n382_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn522:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n383_lit_string_α
n382_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 7
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n384_call_builtin_prolog_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          " Evans="
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn525:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn525]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n385_var_α
n384_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n386_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn529:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n387_lit_string_α
n386_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n388_call_builtin_prolog_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn532:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn532]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_β
                                                                                        jmp   n354_call_proc_staged_β
n388_call_builtin_prolog_β:
                                                                                        jmp   n354_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   proc_puzzle$2F0_ω
n389_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n536_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_prolog_α:
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
                        mov              eax, 3
                                                                                        jmp   .Lx540_101
.Lx540_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx540_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n535_call_proc_staged_α
n534_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 3                                         # idx
                        mov              esi, 0                                         # nargs
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
                        cmp              eax, 104
                                                                                        je    n537_call_builtin_prolog_α
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
n537_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n538_suspend_α
n537_call_builtin_prolog_β:
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
                                                                                        jmp   n539_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   proc_$disj0$2F0_ω
n539_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cashier_manager_same_sex$2F5_α
proc_cashier_manager_same_sex$2F5_α:
proc_cashier_manager_same_sex$2F5_α_body:
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
#-----------------------------------------------------------------------------------------------------------------------
n549_call_builtin_prolog_α:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx586_101
.Lx586_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx586_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx586_240
                        add              rsp, 976
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_ω
.Lx586_240:
                                                                                        jmp   n550_var_ref_α
n549_call_builtin_prolog_β:
                        add              rsp, 976
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
                                                                                        jmp   n552_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n552_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx591_44
                        cmp              eax, 72
                                                                                        jne   .Lx591_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx591_44
                                                                                        jmp   .Lx591_45
.Lx591_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_53
                        cmp              eax, 104
                                                                                        je    .Lx591_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx591_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx591_49
                        cmp              edx, 80
                                                                                        je    .Lx591_53
                                                                                        jmp   .Lx591_52
.Lx591_49:
                        cmp              edx, 80
                                                                                        je    .Lx591_52
                        cmp              ecx, 5
                                                                                        je    .Lx591_53
                        cmp              edx, 5
                                                                                        je    .Lx591_53
                        cmp              ecx, 3
                                                                                        jne   .Lx591_50
                        cmp              edx, 3
                                                                                        jne   .Lx591_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx591_54
.Lx591_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx591_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx591_240
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
.Lx591_240:
                                                                                        jmp   n553_var_ref_α
n552_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n554_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n555_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_call_builtin_prolog_α:
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
.Lx596_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx596_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx596_41
                        cmp              esi, 1
                                                                                        jne   .Lx596_55
                        mov              r8, rax
                                                                                        jmp   .Lx596_40
.Lx596_55:
                        cmp              esi, 2
                                                                                        jne   .Lx596_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx596_41
                        mov              r8, rax
                                                                                        jmp   .Lx596_40
.Lx596_56:
                        cmp              eax, 72
                                                                                        jne   .Lx596_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx596_41
                        cmp              rax, r8
                                                                                        je    .Lx596_41
                        mov              r8, rax
                                                                                        jmp   .Lx596_40
.Lx596_41:
                        lea              r9, [rbp + 1056]
.Lx596_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx596_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx596_43
                        cmp              esi, 1
                                                                                        jne   .Lx596_57
                        mov              r9, rax
                                                                                        jmp   .Lx596_42
.Lx596_57:
                        cmp              esi, 2
                                                                                        jne   .Lx596_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx596_43
                        mov              r9, rax
                                                                                        jmp   .Lx596_42
.Lx596_58:
                        cmp              eax, 72
                                                                                        jne   .Lx596_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx596_43
                        cmp              rax, r9
                                                                                        je    .Lx596_43
                        mov              r9, rax
                                                                                        jmp   .Lx596_42
.Lx596_43:
                        cmp              r8, r9
                                                                                        je    .Lx596_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx596_44
                        cmp              eax, 104
                                                                                        je    .Lx596_44
                        cmp              eax, 72
                                                                                        jne   .Lx596_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx596_44
                                                                                        jmp   .Lx596_45
.Lx596_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx596_53
                        cmp              eax, 104
                                                                                        je    .Lx596_53
                        cmp              eax, 72
                                                                                        jne   .Lx596_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx596_53
                                                                                        jmp   .Lx596_46
.Lx596_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx596_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx596_53
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
                                                                                        jmp   .Lx596_51
.Lx596_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx596_47
                        cmp              eax, 104
                                                                                        je    .Lx596_47
                        cmp              eax, 72
                                                                                        jne   .Lx596_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx596_47
                                                                                        jmp   .Lx596_48
.Lx596_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx596_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx596_53
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
                                                                                        jmp   .Lx596_51
.Lx596_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx596_49
                        cmp              edx, 80
                                                                                        je    .Lx596_53
                                                                                        jmp   .Lx596_52
.Lx596_49:
                        cmp              edx, 80
                                                                                        je    .Lx596_52
                        cmp              ecx, 5
                                                                                        je    .Lx596_53
                        cmp              edx, 5
                                                                                        je    .Lx596_53
                        cmp              ecx, 3
                                                                                        jne   .Lx596_50
                        cmp              edx, 3
                                                                                        jne   .Lx596_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx596_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx596_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx596_51
                                                                                        jmp   .Lx596_52
.Lx596_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx596_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx596_53
.Lx596_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx596_54
.Lx596_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx596_54
.Lx596_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx596_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx596_240
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
.Lx596_240:
                                                                                        jmp   n556_var_ref_α
n555_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n557_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n558_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_prolog_α:
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
.Lx601_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx601_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_41
                        cmp              esi, 1
                                                                                        jne   .Lx601_55
                        mov              r8, rax
                                                                                        jmp   .Lx601_40
.Lx601_55:
                        cmp              esi, 2
                                                                                        jne   .Lx601_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx601_41
                        mov              r8, rax
                                                                                        jmp   .Lx601_40
.Lx601_56:
                        cmp              eax, 72
                                                                                        jne   .Lx601_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_41
                        cmp              rax, r8
                                                                                        je    .Lx601_41
                        mov              r8, rax
                                                                                        jmp   .Lx601_40
.Lx601_41:
                        lea              r9, [rbp + 976]
.Lx601_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx601_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_43
                        cmp              esi, 1
                                                                                        jne   .Lx601_57
                        mov              r9, rax
                                                                                        jmp   .Lx601_42
.Lx601_57:
                        cmp              esi, 2
                                                                                        jne   .Lx601_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx601_43
                        mov              r9, rax
                                                                                        jmp   .Lx601_42
.Lx601_58:
                        cmp              eax, 72
                                                                                        jne   .Lx601_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_43
                        cmp              rax, r9
                                                                                        je    .Lx601_43
                        mov              r9, rax
                                                                                        jmp   .Lx601_42
.Lx601_43:
                        cmp              r8, r9
                                                                                        je    .Lx601_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx601_44
                        cmp              eax, 104
                                                                                        je    .Lx601_44
                        cmp              eax, 72
                                                                                        jne   .Lx601_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx601_44
                                                                                        jmp   .Lx601_45
.Lx601_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx601_53
                        cmp              eax, 104
                                                                                        je    .Lx601_53
                        cmp              eax, 72
                                                                                        jne   .Lx601_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx601_53
                                                                                        jmp   .Lx601_46
.Lx601_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx601_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx601_53
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
                                                                                        jmp   .Lx601_51
.Lx601_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx601_47
                        cmp              eax, 104
                                                                                        je    .Lx601_47
                        cmp              eax, 72
                                                                                        jne   .Lx601_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx601_47
                                                                                        jmp   .Lx601_48
.Lx601_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx601_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx601_53
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
                                                                                        jmp   .Lx601_51
.Lx601_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx601_49
                        cmp              edx, 80
                                                                                        je    .Lx601_53
                                                                                        jmp   .Lx601_52
.Lx601_49:
                        cmp              edx, 80
                                                                                        je    .Lx601_52
                        cmp              ecx, 5
                                                                                        je    .Lx601_53
                        cmp              edx, 5
                                                                                        je    .Lx601_53
                        cmp              ecx, 3
                                                                                        jne   .Lx601_50
                        cmp              edx, 3
                                                                                        jne   .Lx601_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx601_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx601_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx601_51
                                                                                        jmp   .Lx601_52
.Lx601_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx601_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx601_53
.Lx601_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx601_54
.Lx601_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx601_54
.Lx601_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx601_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx601_240
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
.Lx601_240:
                                                                                        jmp   n559_var_ref_α
n558_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n560_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n561_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n561_call_builtin_prolog_α:
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
.Lx606_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx606_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx606_41
                        cmp              esi, 1
                                                                                        jne   .Lx606_55
                        mov              r8, rax
                                                                                        jmp   .Lx606_40
.Lx606_55:
                        cmp              esi, 2
                                                                                        jne   .Lx606_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx606_41
                        mov              r8, rax
                                                                                        jmp   .Lx606_40
.Lx606_56:
                        cmp              eax, 72
                                                                                        jne   .Lx606_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx606_41
                        cmp              rax, r8
                                                                                        je    .Lx606_41
                        mov              r8, rax
                                                                                        jmp   .Lx606_40
.Lx606_41:
                        lea              r9, [rbp + 896]
.Lx606_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx606_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx606_43
                        cmp              esi, 1
                                                                                        jne   .Lx606_57
                        mov              r9, rax
                                                                                        jmp   .Lx606_42
.Lx606_57:
                        cmp              esi, 2
                                                                                        jne   .Lx606_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx606_43
                        mov              r9, rax
                                                                                        jmp   .Lx606_42
.Lx606_58:
                        cmp              eax, 72
                                                                                        jne   .Lx606_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx606_43
                        cmp              rax, r9
                                                                                        je    .Lx606_43
                        mov              r9, rax
                                                                                        jmp   .Lx606_42
.Lx606_43:
                        cmp              r8, r9
                                                                                        je    .Lx606_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx606_44
                        cmp              eax, 104
                                                                                        je    .Lx606_44
                        cmp              eax, 72
                                                                                        jne   .Lx606_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx606_44
                                                                                        jmp   .Lx606_45
.Lx606_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx606_53
                        cmp              eax, 104
                                                                                        je    .Lx606_53
                        cmp              eax, 72
                                                                                        jne   .Lx606_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx606_53
                                                                                        jmp   .Lx606_46
.Lx606_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx606_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx606_53
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
                                                                                        jmp   .Lx606_51
.Lx606_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx606_47
                        cmp              eax, 104
                                                                                        je    .Lx606_47
                        cmp              eax, 72
                                                                                        jne   .Lx606_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx606_47
                                                                                        jmp   .Lx606_48
.Lx606_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx606_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx606_53
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
                                                                                        jmp   .Lx606_51
.Lx606_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx606_49
                        cmp              edx, 80
                                                                                        je    .Lx606_53
                                                                                        jmp   .Lx606_52
.Lx606_49:
                        cmp              edx, 80
                                                                                        je    .Lx606_52
                        cmp              ecx, 5
                                                                                        je    .Lx606_53
                        cmp              edx, 5
                                                                                        je    .Lx606_53
                        cmp              ecx, 3
                                                                                        jne   .Lx606_50
                        cmp              edx, 3
                                                                                        jne   .Lx606_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx606_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx606_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx606_51
                                                                                        jmp   .Lx606_52
.Lx606_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx606_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx606_53
.Lx606_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx606_54
.Lx606_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx606_54
.Lx606_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx606_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx606_240
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
.Lx606_240:
                                                                                        jmp   n562_var_ref_α
n561_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n563_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n564_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n564_call_builtin_prolog_α:
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
.Lx611_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx611_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx611_41
                        cmp              esi, 1
                                                                                        jne   .Lx611_55
                        mov              r8, rax
                                                                                        jmp   .Lx611_40
.Lx611_55:
                        cmp              esi, 2
                                                                                        jne   .Lx611_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx611_41
                        mov              r8, rax
                                                                                        jmp   .Lx611_40
.Lx611_56:
                        cmp              eax, 72
                                                                                        jne   .Lx611_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx611_41
                        cmp              rax, r8
                                                                                        je    .Lx611_41
                        mov              r8, rax
                                                                                        jmp   .Lx611_40
.Lx611_41:
                        lea              r9, [rbp + 816]
.Lx611_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx611_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx611_43
                        cmp              esi, 1
                                                                                        jne   .Lx611_57
                        mov              r9, rax
                                                                                        jmp   .Lx611_42
.Lx611_57:
                        cmp              esi, 2
                                                                                        jne   .Lx611_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx611_43
                        mov              r9, rax
                                                                                        jmp   .Lx611_42
.Lx611_58:
                        cmp              eax, 72
                                                                                        jne   .Lx611_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx611_43
                        cmp              rax, r9
                                                                                        je    .Lx611_43
                        mov              r9, rax
                                                                                        jmp   .Lx611_42
.Lx611_43:
                        cmp              r8, r9
                                                                                        je    .Lx611_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx611_44
                        cmp              eax, 104
                                                                                        je    .Lx611_44
                        cmp              eax, 72
                                                                                        jne   .Lx611_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx611_44
                                                                                        jmp   .Lx611_45
.Lx611_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx611_53
                        cmp              eax, 104
                                                                                        je    .Lx611_53
                        cmp              eax, 72
                                                                                        jne   .Lx611_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx611_53
                                                                                        jmp   .Lx611_46
.Lx611_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx611_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx611_53
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
                                                                                        jmp   .Lx611_51
.Lx611_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx611_47
                        cmp              eax, 104
                                                                                        je    .Lx611_47
                        cmp              eax, 72
                                                                                        jne   .Lx611_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx611_47
                                                                                        jmp   .Lx611_48
.Lx611_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx611_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx611_53
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
                                                                                        jmp   .Lx611_51
.Lx611_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx611_49
                        cmp              edx, 80
                                                                                        je    .Lx611_53
                                                                                        jmp   .Lx611_52
.Lx611_49:
                        cmp              edx, 80
                                                                                        je    .Lx611_52
                        cmp              ecx, 5
                                                                                        je    .Lx611_53
                        cmp              edx, 5
                                                                                        je    .Lx611_53
                        cmp              ecx, 3
                                                                                        jne   .Lx611_50
                        cmp              edx, 3
                                                                                        jne   .Lx611_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx611_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx611_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx611_51
                                                                                        jmp   .Lx611_52
.Lx611_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx611_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx611_53
.Lx611_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx611_54
.Lx611_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx611_54
.Lx611_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx611_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx611_240
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
.Lx611_240:
                                                                                        jmp   n565_lit_string_α
n564_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 7
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n566_var_ref_α
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n567_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n569_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n570_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n572_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n572_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx626_21
.Lx626_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 672]                     # v
                        mov              rdx, qword ptr [rbp + 680]                     # v
                        call             rt_arg_stage@PLT
.Lx626_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx626_23
.Lx626_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 688]                     # v
                        mov              rdx, qword ptr [rbp + 696]                     # v
                        call             rt_arg_stage@PLT
.Lx626_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_24
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx626_25
.Lx626_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 704]                     # v
                        mov              rdx, qword ptr [rbp + 712]                     # v
                        call             rt_arg_stage@PLT
.Lx626_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_26
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx626_27
.Lx626_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 720]                     # v
                        mov              rdx, qword ptr [rbp + 728]                     # v
                        call             rt_arg_stage@PLT
.Lx626_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_28
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx626_29
.Lx626_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 736]                     # v
                        mov              rdx, qword ptr [rbp + 744]                     # v
                        call             rt_arg_stage@PLT
.Lx626_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_30
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx626_31
.Lx626_30:
                        mov              edi, 5                                         # idx
                        mov              rsi, qword ptr [rbp + 752]                     # v
                        mov              rdx, qword ptr [rbp + 760]                     # v
                        call             rt_arg_stage@PLT
.Lx626_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_32
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx626_33
.Lx626_32:
                        mov              edi, 6                                         # idx
                        mov              rsi, qword ptr [rbp + 768]                     # v
                        mov              rdx, qword ptr [rbp + 776]                     # v
                        call             rt_arg_stage@PLT
.Lx626_33:
                        mov              edi, 2                                         # idx
                        mov              esi, 7                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx626_1
                        lea              rcx, [rip + .Lx626_3]
                        lea              rdx, [rip + .Lx626_4]
                                                                                        jmp   rax
.Lx626_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx626_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx626_2
.Lx626_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx626_2
.Lx626_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx626_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx626_2
.Lx626_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx626_2
.Lx626_1:
                        call             rt_faildescr@PLT
.Lx626_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx626_240
                        add              rsp, 976
                                                                                        jmp   n585_call_builtin_prolog_α
.Lx626_240:
                                                                                        jmp   n573_lit_string_α
n572_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 7
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n574_var_ref_α
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n576_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n577_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n579_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n580_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n580_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx641_21
.Lx641_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 400]                     # v
                        mov              rdx, qword ptr [rbp + 408]                     # v
                        call             rt_arg_stage@PLT
.Lx641_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx641_23
.Lx641_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 416]                     # v
                        mov              rdx, qword ptr [rbp + 424]                     # v
                        call             rt_arg_stage@PLT
.Lx641_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_24
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx641_25
.Lx641_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 432]                     # v
                        mov              rdx, qword ptr [rbp + 440]                     # v
                        call             rt_arg_stage@PLT
.Lx641_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_26
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx641_27
.Lx641_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx641_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_28
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx641_29
.Lx641_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx641_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_30
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx641_31
.Lx641_30:
                        mov              edi, 5                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx641_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_32
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx641_33
.Lx641_32:
                        mov              edi, 6                                         # idx
                        mov              rsi, qword ptr [rbp + 496]                     # v
                        mov              rdx, qword ptr [rbp + 504]                     # v
                        call             rt_arg_stage@PLT
.Lx641_33:
                        mov              edi, 2                                         # idx
                        mov              esi, 7                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx641_1
                        lea              rcx, [rip + .Lx641_3]
                        lea              rdx, [rip + .Lx641_4]
                                                                                        jmp   rax
.Lx641_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx641_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx641_2
.Lx641_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx641_2
.Lx641_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx641_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx641_2
.Lx641_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx641_2
.Lx641_1:
                        call             rt_faildescr@PLT
.Lx641_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n572_call_proc_staged_β
                                                                                        jmp   n581_var_ref_α
n580_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n582_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n583_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_prolog_α:
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
.Lx646_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx646_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_41
                        cmp              esi, 1
                                                                                        jne   .Lx646_55
                        mov              r8, rax
                                                                                        jmp   .Lx646_40
.Lx646_55:
                        cmp              esi, 2
                                                                                        jne   .Lx646_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx646_41
                        mov              r8, rax
                                                                                        jmp   .Lx646_40
.Lx646_56:
                        cmp              eax, 72
                                                                                        jne   .Lx646_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_41
                        cmp              rax, r8
                                                                                        je    .Lx646_41
                        mov              r8, rax
                                                                                        jmp   .Lx646_40
.Lx646_41:
                        lea              r9, [rbp + 192]
.Lx646_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx646_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_43
                        cmp              esi, 1
                                                                                        jne   .Lx646_57
                        mov              r9, rax
                                                                                        jmp   .Lx646_42
.Lx646_57:
                        cmp              esi, 2
                                                                                        jne   .Lx646_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx646_43
                        mov              r9, rax
                                                                                        jmp   .Lx646_42
.Lx646_58:
                        cmp              eax, 72
                                                                                        jne   .Lx646_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_43
                        cmp              rax, r9
                                                                                        je    .Lx646_43
                        mov              r9, rax
                                                                                        jmp   .Lx646_42
.Lx646_43:
                        cmp              r8, r9
                                                                                        je    .Lx646_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_44
                        cmp              eax, 104
                                                                                        je    .Lx646_44
                        cmp              eax, 72
                                                                                        jne   .Lx646_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx646_44
                                                                                        jmp   .Lx646_45
.Lx646_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_53
                        cmp              eax, 104
                                                                                        je    .Lx646_53
                        cmp              eax, 72
                                                                                        jne   .Lx646_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx646_53
                                                                                        jmp   .Lx646_46
.Lx646_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx646_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx646_53
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
                                                                                        jmp   .Lx646_51
.Lx646_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_47
                        cmp              eax, 104
                                                                                        je    .Lx646_47
                        cmp              eax, 72
                                                                                        jne   .Lx646_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx646_47
                                                                                        jmp   .Lx646_48
.Lx646_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx646_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx646_53
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
                                                                                        jmp   .Lx646_51
.Lx646_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx646_49
                        cmp              edx, 80
                                                                                        je    .Lx646_53
                                                                                        jmp   .Lx646_52
.Lx646_49:
                        cmp              edx, 80
                                                                                        je    .Lx646_52
                        cmp              ecx, 5
                                                                                        je    .Lx646_53
                        cmp              edx, 5
                                                                                        je    .Lx646_53
                        cmp              ecx, 3
                                                                                        jne   .Lx646_50
                        cmp              edx, 3
                                                                                        jne   .Lx646_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx646_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx646_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx646_51
                                                                                        jmp   .Lx646_52
.Lx646_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx646_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx646_53
.Lx646_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx646_54
.Lx646_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx646_54
.Lx646_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx646_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n580_call_proc_staged_β
                                                                                        jmp   n584_suspend_α
n583_call_builtin_prolog_β:
                                                                                        jmp   n580_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n584_suspend_α:
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 976
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_γ
n584_suspend_β:
                                                                                        jmp   n580_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n585_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    proc_cashier_manager_same_sex$2F5_ω
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_ω
n585_call_builtin_prolog_β:
                                                                                        jmp   proc_cashier_manager_same_sex$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1184]
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cashier_manager_same_sex$2F5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_all_diff5$2F5_α
proc_all_diff5$2F5_α:
proc_all_diff5$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_prolog_α:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx699_101
.Lx699_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx699_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx699_240
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
.Lx699_240:
                                                                                        jmp   n651_var_ref_α
n650_call_builtin_prolog_β:
                        add              rsp, 432
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
                                                                                        jmp   n653_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n653_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx704_44
                        cmp              eax, 72
                                                                                        jne   .Lx704_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx704_44
                                                                                        jmp   .Lx704_45
.Lx704_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_53
                        cmp              eax, 104
                                                                                        je    .Lx704_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx704_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx704_49
                        cmp              edx, 80
                                                                                        je    .Lx704_53
                                                                                        jmp   .Lx704_52
.Lx704_49:
                        cmp              edx, 80
                                                                                        je    .Lx704_52
                        cmp              ecx, 5
                                                                                        je    .Lx704_53
                        cmp              edx, 5
                                                                                        je    .Lx704_53
                        cmp              ecx, 3
                                                                                        jne   .Lx704_50
                        cmp              edx, 3
                                                                                        jne   .Lx704_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx704_54
.Lx704_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx704_54:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n654_var_ref_α
n653_call_builtin_prolog_β:
                                                                                        jmp   n698_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n655_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n655_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n656_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n656_call_builtin_prolog_α:
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
.Lx709_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx709_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx709_41
                        cmp              esi, 1
                                                                                        jne   .Lx709_55
                        mov              r8, rax
                                                                                        jmp   .Lx709_40
.Lx709_55:
                        cmp              esi, 2
                                                                                        jne   .Lx709_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx709_41
                        mov              r8, rax
                                                                                        jmp   .Lx709_40
.Lx709_56:
                        cmp              eax, 72
                                                                                        jne   .Lx709_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx709_41
                        cmp              rax, r8
                                                                                        je    .Lx709_41
                        mov              r8, rax
                                                                                        jmp   .Lx709_40
.Lx709_41:
                        lea              r9, [rbp + 1264]
.Lx709_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx709_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx709_43
                        cmp              esi, 1
                                                                                        jne   .Lx709_57
                        mov              r9, rax
                                                                                        jmp   .Lx709_42
.Lx709_57:
                        cmp              esi, 2
                                                                                        jne   .Lx709_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx709_43
                        mov              r9, rax
                                                                                        jmp   .Lx709_42
.Lx709_58:
                        cmp              eax, 72
                                                                                        jne   .Lx709_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx709_43
                        cmp              rax, r9
                                                                                        je    .Lx709_43
                        mov              r9, rax
                                                                                        jmp   .Lx709_42
.Lx709_43:
                        cmp              r8, r9
                                                                                        je    .Lx709_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx709_44
                        cmp              eax, 104
                                                                                        je    .Lx709_44
                        cmp              eax, 72
                                                                                        jne   .Lx709_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx709_44
                                                                                        jmp   .Lx709_45
.Lx709_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx709_53
                        cmp              eax, 104
                                                                                        je    .Lx709_53
                        cmp              eax, 72
                                                                                        jne   .Lx709_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx709_53
                                                                                        jmp   .Lx709_46
.Lx709_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx709_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx709_53
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
                                                                                        jmp   .Lx709_51
.Lx709_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx709_47
                        cmp              eax, 104
                                                                                        je    .Lx709_47
                        cmp              eax, 72
                                                                                        jne   .Lx709_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx709_47
                                                                                        jmp   .Lx709_48
.Lx709_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx709_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx709_53
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
                                                                                        jmp   .Lx709_51
.Lx709_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx709_49
                        cmp              edx, 80
                                                                                        je    .Lx709_53
                                                                                        jmp   .Lx709_52
.Lx709_49:
                        cmp              edx, 80
                                                                                        je    .Lx709_52
                        cmp              ecx, 5
                                                                                        je    .Lx709_53
                        cmp              edx, 5
                                                                                        je    .Lx709_53
                        cmp              ecx, 3
                                                                                        jne   .Lx709_50
                        cmp              edx, 3
                                                                                        jne   .Lx709_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx709_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx709_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx709_51
                                                                                        jmp   .Lx709_52
.Lx709_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx709_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx709_53
.Lx709_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx709_54
.Lx709_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx709_54
.Lx709_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx709_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n657_var_ref_α
n656_call_builtin_prolog_β:
                                                                                        jmp   n698_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n657_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n658_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n658_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n659_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n659_call_builtin_prolog_α:
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
.Lx714_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx714_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx714_41
                        cmp              esi, 1
                                                                                        jne   .Lx714_55
                        mov              r8, rax
                                                                                        jmp   .Lx714_40
.Lx714_55:
                        cmp              esi, 2
                                                                                        jne   .Lx714_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx714_41
                        mov              r8, rax
                                                                                        jmp   .Lx714_40
.Lx714_56:
                        cmp              eax, 72
                                                                                        jne   .Lx714_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx714_41
                        cmp              rax, r8
                                                                                        je    .Lx714_41
                        mov              r8, rax
                                                                                        jmp   .Lx714_40
.Lx714_41:
                        lea              r9, [rbp + 1184]
.Lx714_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx714_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx714_43
                        cmp              esi, 1
                                                                                        jne   .Lx714_57
                        mov              r9, rax
                                                                                        jmp   .Lx714_42
.Lx714_57:
                        cmp              esi, 2
                                                                                        jne   .Lx714_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx714_43
                        mov              r9, rax
                                                                                        jmp   .Lx714_42
.Lx714_58:
                        cmp              eax, 72
                                                                                        jne   .Lx714_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx714_43
                        cmp              rax, r9
                                                                                        je    .Lx714_43
                        mov              r9, rax
                                                                                        jmp   .Lx714_42
.Lx714_43:
                        cmp              r8, r9
                                                                                        je    .Lx714_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx714_44
                        cmp              eax, 104
                                                                                        je    .Lx714_44
                        cmp              eax, 72
                                                                                        jne   .Lx714_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx714_44
                                                                                        jmp   .Lx714_45
.Lx714_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx714_53
                        cmp              eax, 104
                                                                                        je    .Lx714_53
                        cmp              eax, 72
                                                                                        jne   .Lx714_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx714_53
                                                                                        jmp   .Lx714_46
.Lx714_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx714_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx714_53
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
                                                                                        jmp   .Lx714_51
.Lx714_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx714_47
                        cmp              eax, 104
                                                                                        je    .Lx714_47
                        cmp              eax, 72
                                                                                        jne   .Lx714_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx714_47
                                                                                        jmp   .Lx714_48
.Lx714_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx714_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx714_53
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
                                                                                        jmp   .Lx714_51
.Lx714_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx714_49
                        cmp              edx, 80
                                                                                        je    .Lx714_53
                                                                                        jmp   .Lx714_52
.Lx714_49:
                        cmp              edx, 80
                                                                                        je    .Lx714_52
                        cmp              ecx, 5
                                                                                        je    .Lx714_53
                        cmp              edx, 5
                                                                                        je    .Lx714_53
                        cmp              ecx, 3
                                                                                        jne   .Lx714_50
                        cmp              edx, 3
                                                                                        jne   .Lx714_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx714_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx714_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx714_51
                                                                                        jmp   .Lx714_52
.Lx714_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx714_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx714_53
.Lx714_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx714_54
.Lx714_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx714_54
.Lx714_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx714_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n660_var_ref_α
n659_call_builtin_prolog_β:
                                                                                        jmp   n698_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n660_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n661_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n661_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n662_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n662_call_builtin_prolog_α:
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
.Lx719_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx719_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx719_41
                        cmp              esi, 1
                                                                                        jne   .Lx719_55
                        mov              r8, rax
                                                                                        jmp   .Lx719_40
.Lx719_55:
                        cmp              esi, 2
                                                                                        jne   .Lx719_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx719_41
                        mov              r8, rax
                                                                                        jmp   .Lx719_40
.Lx719_56:
                        cmp              eax, 72
                                                                                        jne   .Lx719_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx719_41
                        cmp              rax, r8
                                                                                        je    .Lx719_41
                        mov              r8, rax
                                                                                        jmp   .Lx719_40
.Lx719_41:
                        lea              r9, [rbp + 1104]
.Lx719_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx719_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx719_43
                        cmp              esi, 1
                                                                                        jne   .Lx719_57
                        mov              r9, rax
                                                                                        jmp   .Lx719_42
.Lx719_57:
                        cmp              esi, 2
                                                                                        jne   .Lx719_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx719_43
                        mov              r9, rax
                                                                                        jmp   .Lx719_42
.Lx719_58:
                        cmp              eax, 72
                                                                                        jne   .Lx719_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx719_43
                        cmp              rax, r9
                                                                                        je    .Lx719_43
                        mov              r9, rax
                                                                                        jmp   .Lx719_42
.Lx719_43:
                        cmp              r8, r9
                                                                                        je    .Lx719_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx719_44
                        cmp              eax, 104
                                                                                        je    .Lx719_44
                        cmp              eax, 72
                                                                                        jne   .Lx719_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx719_44
                                                                                        jmp   .Lx719_45
.Lx719_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx719_53
                        cmp              eax, 104
                                                                                        je    .Lx719_53
                        cmp              eax, 72
                                                                                        jne   .Lx719_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx719_53
                                                                                        jmp   .Lx719_46
.Lx719_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx719_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx719_53
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
                                                                                        jmp   .Lx719_51
.Lx719_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx719_47
                        cmp              eax, 104
                                                                                        je    .Lx719_47
                        cmp              eax, 72
                                                                                        jne   .Lx719_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx719_47
                                                                                        jmp   .Lx719_48
.Lx719_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx719_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx719_53
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
                                                                                        jmp   .Lx719_51
.Lx719_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx719_49
                        cmp              edx, 80
                                                                                        je    .Lx719_53
                                                                                        jmp   .Lx719_52
.Lx719_49:
                        cmp              edx, 80
                                                                                        je    .Lx719_52
                        cmp              ecx, 5
                                                                                        je    .Lx719_53
                        cmp              edx, 5
                                                                                        je    .Lx719_53
                        cmp              ecx, 3
                                                                                        jne   .Lx719_50
                        cmp              edx, 3
                                                                                        jne   .Lx719_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx719_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx719_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx719_51
                                                                                        jmp   .Lx719_52
.Lx719_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx719_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx719_53
.Lx719_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx719_54
.Lx719_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx719_54
.Lx719_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx719_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n663_var_ref_α
n662_call_builtin_prolog_β:
                                                                                        jmp   n698_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n663_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n664_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n664_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n665_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n665_call_builtin_prolog_α:
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
.Lx724_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx724_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx724_41
                        cmp              esi, 1
                                                                                        jne   .Lx724_55
                        mov              r8, rax
                                                                                        jmp   .Lx724_40
.Lx724_55:
                        cmp              esi, 2
                                                                                        jne   .Lx724_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx724_41
                        mov              r8, rax
                                                                                        jmp   .Lx724_40
.Lx724_56:
                        cmp              eax, 72
                                                                                        jne   .Lx724_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx724_41
                        cmp              rax, r8
                                                                                        je    .Lx724_41
                        mov              r8, rax
                                                                                        jmp   .Lx724_40
.Lx724_41:
                        lea              r9, [rbp + 1024]
.Lx724_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx724_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx724_43
                        cmp              esi, 1
                                                                                        jne   .Lx724_57
                        mov              r9, rax
                                                                                        jmp   .Lx724_42
.Lx724_57:
                        cmp              esi, 2
                                                                                        jne   .Lx724_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx724_43
                        mov              r9, rax
                                                                                        jmp   .Lx724_42
.Lx724_58:
                        cmp              eax, 72
                                                                                        jne   .Lx724_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx724_43
                        cmp              rax, r9
                                                                                        je    .Lx724_43
                        mov              r9, rax
                                                                                        jmp   .Lx724_42
.Lx724_43:
                        cmp              r8, r9
                                                                                        je    .Lx724_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx724_44
                        cmp              eax, 104
                                                                                        je    .Lx724_44
                        cmp              eax, 72
                                                                                        jne   .Lx724_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx724_44
                                                                                        jmp   .Lx724_45
.Lx724_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx724_53
                        cmp              eax, 104
                                                                                        je    .Lx724_53
                        cmp              eax, 72
                                                                                        jne   .Lx724_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx724_53
                                                                                        jmp   .Lx724_46
.Lx724_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx724_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx724_53
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
                                                                                        jmp   .Lx724_51
.Lx724_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx724_47
                        cmp              eax, 104
                                                                                        je    .Lx724_47
                        cmp              eax, 72
                                                                                        jne   .Lx724_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx724_47
                                                                                        jmp   .Lx724_48
.Lx724_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx724_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx724_53
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
                                                                                        jmp   .Lx724_51
.Lx724_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx724_49
                        cmp              edx, 80
                                                                                        je    .Lx724_53
                                                                                        jmp   .Lx724_52
.Lx724_49:
                        cmp              edx, 80
                                                                                        je    .Lx724_52
                        cmp              ecx, 5
                                                                                        je    .Lx724_53
                        cmp              edx, 5
                                                                                        je    .Lx724_53
                        cmp              ecx, 3
                                                                                        jne   .Lx724_50
                        cmp              edx, 3
                                                                                        jne   .Lx724_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx724_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx724_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx724_51
                                                                                        jmp   .Lx724_52
.Lx724_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx724_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx724_53
.Lx724_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx724_54
.Lx724_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx724_54
.Lx724_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx724_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n666_var_ref_α
n665_call_builtin_prolog_β:
                                                                                        jmp   n698_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n667_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n667_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n668_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n668_call_builtin_prolog_α:
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
.Lx729_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        cmp              esi, 1
                                                                                        jne   .Lx729_55
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_55:
                        cmp              esi, 2
                                                                                        jne   .Lx729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_56:
                        cmp              eax, 72
                                                                                        jne   .Lx729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        cmp              rax, r8
                                                                                        je    .Lx729_41
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_41:
                        lea              r9, [rbp + 944]
.Lx729_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        cmp              esi, 1
                                                                                        jne   .Lx729_57
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_57:
                        cmp              esi, 2
                                                                                        jne   .Lx729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_58:
                        cmp              eax, 72
                                                                                        jne   .Lx729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        cmp              rax, r9
                                                                                        je    .Lx729_43
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_43:
                        cmp              r8, r9
                                                                                        je    .Lx729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_44
                        cmp              eax, 104
                                                                                        je    .Lx729_44
                        cmp              eax, 72
                                                                                        jne   .Lx729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx729_44
                                                                                        jmp   .Lx729_45
.Lx729_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_53
                        cmp              eax, 104
                                                                                        je    .Lx729_53
                        cmp              eax, 72
                                                                                        jne   .Lx729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx729_53
                                                                                        jmp   .Lx729_46
.Lx729_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx729_53
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
                                                                                        jmp   .Lx729_51
.Lx729_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_47
                        cmp              eax, 104
                                                                                        je    .Lx729_47
                        cmp              eax, 72
                                                                                        jne   .Lx729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx729_47
                                                                                        jmp   .Lx729_48
.Lx729_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx729_53
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
                                                                                        jmp   .Lx729_51
.Lx729_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx729_49
                        cmp              edx, 80
                                                                                        je    .Lx729_53
                                                                                        jmp   .Lx729_52
.Lx729_49:
                        cmp              edx, 80
                                                                                        je    .Lx729_52
                        cmp              ecx, 5
                                                                                        je    .Lx729_53
                        cmp              edx, 5
                                                                                        je    .Lx729_53
                        cmp              ecx, 3
                                                                                        jne   .Lx729_50
                        cmp              edx, 3
                                                                                        jne   .Lx729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx729_51
                                                                                        jmp   .Lx729_52
.Lx729_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx729_53
.Lx729_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx729_54
.Lx729_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx729_54
.Lx729_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx729_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx729_240
                        add              rsp, 432
                                                                                        jmp   n669_var_ref_α
.Lx729_240:
                                                                                        jmp   n698_call_builtin_prolog_α
n668_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n669_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n669_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n670_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n670_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n671_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n671_call_builtin_prolog_α:
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
.Lx734_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_41
                        cmp              esi, 1
                                                                                        jne   .Lx734_55
                        mov              r8, rax
                                                                                        jmp   .Lx734_40
.Lx734_55:
                        cmp              esi, 2
                                                                                        jne   .Lx734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx734_41
                        mov              r8, rax
                                                                                        jmp   .Lx734_40
.Lx734_56:
                        cmp              eax, 72
                                                                                        jne   .Lx734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_41
                        cmp              rax, r8
                                                                                        je    .Lx734_41
                        mov              r8, rax
                                                                                        jmp   .Lx734_40
.Lx734_41:
                        lea              r9, [rbp + 864]
.Lx734_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_43
                        cmp              esi, 1
                                                                                        jne   .Lx734_57
                        mov              r9, rax
                                                                                        jmp   .Lx734_42
.Lx734_57:
                        cmp              esi, 2
                                                                                        jne   .Lx734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx734_43
                        mov              r9, rax
                                                                                        jmp   .Lx734_42
.Lx734_58:
                        cmp              eax, 72
                                                                                        jne   .Lx734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_43
                        cmp              rax, r9
                                                                                        je    .Lx734_43
                        mov              r9, rax
                                                                                        jmp   .Lx734_42
.Lx734_43:
                        cmp              r8, r9
                                                                                        je    .Lx734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx734_44
                        cmp              eax, 104
                                                                                        je    .Lx734_44
                        cmp              eax, 72
                                                                                        jne   .Lx734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx734_44
                                                                                        jmp   .Lx734_45
.Lx734_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx734_53
                        cmp              eax, 104
                                                                                        je    .Lx734_53
                        cmp              eax, 72
                                                                                        jne   .Lx734_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx734_53
                                                                                        jmp   .Lx734_46
.Lx734_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx734_53
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
                                                                                        jmp   .Lx734_51
.Lx734_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx734_47
                        cmp              eax, 104
                                                                                        je    .Lx734_47
                        cmp              eax, 72
                                                                                        jne   .Lx734_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx734_47
                                                                                        jmp   .Lx734_48
.Lx734_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx734_53
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
                                                                                        jmp   .Lx734_51
.Lx734_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx734_49
                        cmp              edx, 80
                                                                                        je    .Lx734_53
                                                                                        jmp   .Lx734_52
.Lx734_49:
                        cmp              edx, 80
                                                                                        je    .Lx734_52
                        cmp              ecx, 5
                                                                                        je    .Lx734_53
                        cmp              edx, 5
                                                                                        je    .Lx734_53
                        cmp              ecx, 3
                                                                                        jne   .Lx734_50
                        cmp              edx, 3
                                                                                        jne   .Lx734_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx734_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx734_51
                                                                                        jmp   .Lx734_52
.Lx734_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx734_53
.Lx734_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx734_54
.Lx734_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx734_54
.Lx734_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx734_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n672_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n671_call_builtin_prolog_β:
                                                                                        jmp   n672_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n672_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n673_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n673_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n674_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n674_call_builtin_prolog_α:
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
.Lx739_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx739_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_41
                        cmp              esi, 1
                                                                                        jne   .Lx739_55
                        mov              r8, rax
                                                                                        jmp   .Lx739_40
.Lx739_55:
                        cmp              esi, 2
                                                                                        jne   .Lx739_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx739_41
                        mov              r8, rax
                                                                                        jmp   .Lx739_40
.Lx739_56:
                        cmp              eax, 72
                                                                                        jne   .Lx739_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_41
                        cmp              rax, r8
                                                                                        je    .Lx739_41
                        mov              r8, rax
                                                                                        jmp   .Lx739_40
.Lx739_41:
                        lea              r9, [rbp + 784]
.Lx739_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx739_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_43
                        cmp              esi, 1
                                                                                        jne   .Lx739_57
                        mov              r9, rax
                                                                                        jmp   .Lx739_42
.Lx739_57:
                        cmp              esi, 2
                                                                                        jne   .Lx739_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx739_43
                        mov              r9, rax
                                                                                        jmp   .Lx739_42
.Lx739_58:
                        cmp              eax, 72
                                                                                        jne   .Lx739_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_43
                        cmp              rax, r9
                                                                                        je    .Lx739_43
                        mov              r9, rax
                                                                                        jmp   .Lx739_42
.Lx739_43:
                        cmp              r8, r9
                                                                                        je    .Lx739_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx739_44
                        cmp              eax, 104
                                                                                        je    .Lx739_44
                        cmp              eax, 72
                                                                                        jne   .Lx739_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx739_44
                                                                                        jmp   .Lx739_45
.Lx739_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx739_53
                        cmp              eax, 104
                                                                                        je    .Lx739_53
                        cmp              eax, 72
                                                                                        jne   .Lx739_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx739_53
                                                                                        jmp   .Lx739_46
.Lx739_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx739_53
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
                                                                                        jmp   .Lx739_51
.Lx739_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx739_47
                        cmp              eax, 104
                                                                                        je    .Lx739_47
                        cmp              eax, 72
                                                                                        jne   .Lx739_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx739_47
                                                                                        jmp   .Lx739_48
.Lx739_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx739_53
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
                                                                                        jmp   .Lx739_51
.Lx739_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx739_49
                        cmp              edx, 80
                                                                                        je    .Lx739_53
                                                                                        jmp   .Lx739_52
.Lx739_49:
                        cmp              edx, 80
                                                                                        je    .Lx739_52
                        cmp              ecx, 5
                                                                                        je    .Lx739_53
                        cmp              edx, 5
                                                                                        je    .Lx739_53
                        cmp              ecx, 3
                                                                                        jne   .Lx739_50
                        cmp              edx, 3
                                                                                        jne   .Lx739_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx739_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx739_51
                                                                                        jmp   .Lx739_52
.Lx739_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx739_53
.Lx739_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx739_54
.Lx739_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx739_54
.Lx739_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx739_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n675_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n674_call_builtin_prolog_β:
                                                                                        jmp   n675_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n675_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n676_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n676_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n677_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n677_call_builtin_prolog_α:
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
.Lx744_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx744_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx744_41
                        cmp              esi, 1
                                                                                        jne   .Lx744_55
                        mov              r8, rax
                                                                                        jmp   .Lx744_40
.Lx744_55:
                        cmp              esi, 2
                                                                                        jne   .Lx744_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx744_41
                        mov              r8, rax
                                                                                        jmp   .Lx744_40
.Lx744_56:
                        cmp              eax, 72
                                                                                        jne   .Lx744_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx744_41
                        cmp              rax, r8
                                                                                        je    .Lx744_41
                        mov              r8, rax
                                                                                        jmp   .Lx744_40
.Lx744_41:
                        lea              r9, [rbp + 704]
.Lx744_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx744_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx744_43
                        cmp              esi, 1
                                                                                        jne   .Lx744_57
                        mov              r9, rax
                                                                                        jmp   .Lx744_42
.Lx744_57:
                        cmp              esi, 2
                                                                                        jne   .Lx744_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx744_43
                        mov              r9, rax
                                                                                        jmp   .Lx744_42
.Lx744_58:
                        cmp              eax, 72
                                                                                        jne   .Lx744_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx744_43
                        cmp              rax, r9
                                                                                        je    .Lx744_43
                        mov              r9, rax
                                                                                        jmp   .Lx744_42
.Lx744_43:
                        cmp              r8, r9
                                                                                        je    .Lx744_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx744_44
                        cmp              eax, 104
                                                                                        je    .Lx744_44
                        cmp              eax, 72
                                                                                        jne   .Lx744_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx744_44
                                                                                        jmp   .Lx744_45
.Lx744_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx744_53
                        cmp              eax, 104
                                                                                        je    .Lx744_53
                        cmp              eax, 72
                                                                                        jne   .Lx744_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx744_53
                                                                                        jmp   .Lx744_46
.Lx744_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx744_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx744_53
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
                                                                                        jmp   .Lx744_51
.Lx744_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx744_47
                        cmp              eax, 104
                                                                                        je    .Lx744_47
                        cmp              eax, 72
                                                                                        jne   .Lx744_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx744_47
                                                                                        jmp   .Lx744_48
.Lx744_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx744_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx744_53
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
                                                                                        jmp   .Lx744_51
.Lx744_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx744_49
                        cmp              edx, 80
                                                                                        je    .Lx744_53
                                                                                        jmp   .Lx744_52
.Lx744_49:
                        cmp              edx, 80
                                                                                        je    .Lx744_52
                        cmp              ecx, 5
                                                                                        je    .Lx744_53
                        cmp              edx, 5
                                                                                        je    .Lx744_53
                        cmp              ecx, 3
                                                                                        jne   .Lx744_50
                        cmp              edx, 3
                                                                                        jne   .Lx744_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx744_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx744_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx744_51
                                                                                        jmp   .Lx744_52
.Lx744_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx744_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx744_53
.Lx744_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx744_54
.Lx744_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx744_54
.Lx744_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx744_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n678_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n677_call_builtin_prolog_β:
                                                                                        jmp   n678_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n678_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n679_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n679_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n680_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_builtin_prolog_α:
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
.Lx749_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx749_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx749_41
                        cmp              esi, 1
                                                                                        jne   .Lx749_55
                        mov              r8, rax
                                                                                        jmp   .Lx749_40
.Lx749_55:
                        cmp              esi, 2
                                                                                        jne   .Lx749_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx749_41
                        mov              r8, rax
                                                                                        jmp   .Lx749_40
.Lx749_56:
                        cmp              eax, 72
                                                                                        jne   .Lx749_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx749_41
                        cmp              rax, r8
                                                                                        je    .Lx749_41
                        mov              r8, rax
                                                                                        jmp   .Lx749_40
.Lx749_41:
                        lea              r9, [rbp + 624]
.Lx749_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx749_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx749_43
                        cmp              esi, 1
                                                                                        jne   .Lx749_57
                        mov              r9, rax
                                                                                        jmp   .Lx749_42
.Lx749_57:
                        cmp              esi, 2
                                                                                        jne   .Lx749_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx749_43
                        mov              r9, rax
                                                                                        jmp   .Lx749_42
.Lx749_58:
                        cmp              eax, 72
                                                                                        jne   .Lx749_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx749_43
                        cmp              rax, r9
                                                                                        je    .Lx749_43
                        mov              r9, rax
                                                                                        jmp   .Lx749_42
.Lx749_43:
                        cmp              r8, r9
                                                                                        je    .Lx749_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx749_44
                        cmp              eax, 104
                                                                                        je    .Lx749_44
                        cmp              eax, 72
                                                                                        jne   .Lx749_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx749_44
                                                                                        jmp   .Lx749_45
.Lx749_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx749_53
                        cmp              eax, 104
                                                                                        je    .Lx749_53
                        cmp              eax, 72
                                                                                        jne   .Lx749_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx749_53
                                                                                        jmp   .Lx749_46
.Lx749_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx749_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx749_53
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
                                                                                        jmp   .Lx749_51
.Lx749_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx749_47
                        cmp              eax, 104
                                                                                        je    .Lx749_47
                        cmp              eax, 72
                                                                                        jne   .Lx749_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx749_47
                                                                                        jmp   .Lx749_48
.Lx749_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx749_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx749_53
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
                                                                                        jmp   .Lx749_51
.Lx749_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx749_49
                        cmp              edx, 80
                                                                                        je    .Lx749_53
                                                                                        jmp   .Lx749_52
.Lx749_49:
                        cmp              edx, 80
                                                                                        je    .Lx749_52
                        cmp              ecx, 5
                                                                                        je    .Lx749_53
                        cmp              edx, 5
                                                                                        je    .Lx749_53
                        cmp              ecx, 3
                                                                                        jne   .Lx749_50
                        cmp              edx, 3
                                                                                        jne   .Lx749_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx749_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx749_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx749_51
                                                                                        jmp   .Lx749_52
.Lx749_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx749_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx749_53
.Lx749_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx749_54
.Lx749_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx749_54
.Lx749_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx749_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n681_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n680_call_builtin_prolog_β:
                                                                                        jmp   n681_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n681_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n682_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n683_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n683_call_builtin_prolog_α:
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
.Lx754_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx754_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx754_41
                        cmp              esi, 1
                                                                                        jne   .Lx754_55
                        mov              r8, rax
                                                                                        jmp   .Lx754_40
.Lx754_55:
                        cmp              esi, 2
                                                                                        jne   .Lx754_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx754_41
                        mov              r8, rax
                                                                                        jmp   .Lx754_40
.Lx754_56:
                        cmp              eax, 72
                                                                                        jne   .Lx754_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx754_41
                        cmp              rax, r8
                                                                                        je    .Lx754_41
                        mov              r8, rax
                                                                                        jmp   .Lx754_40
.Lx754_41:
                        lea              r9, [rbp + 544]
.Lx754_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx754_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx754_43
                        cmp              esi, 1
                                                                                        jne   .Lx754_57
                        mov              r9, rax
                                                                                        jmp   .Lx754_42
.Lx754_57:
                        cmp              esi, 2
                                                                                        jne   .Lx754_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx754_43
                        mov              r9, rax
                                                                                        jmp   .Lx754_42
.Lx754_58:
                        cmp              eax, 72
                                                                                        jne   .Lx754_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx754_43
                        cmp              rax, r9
                                                                                        je    .Lx754_43
                        mov              r9, rax
                                                                                        jmp   .Lx754_42
.Lx754_43:
                        cmp              r8, r9
                                                                                        je    .Lx754_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx754_44
                        cmp              eax, 104
                                                                                        je    .Lx754_44
                        cmp              eax, 72
                                                                                        jne   .Lx754_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx754_44
                                                                                        jmp   .Lx754_45
.Lx754_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx754_53
                        cmp              eax, 104
                                                                                        je    .Lx754_53
                        cmp              eax, 72
                                                                                        jne   .Lx754_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx754_53
                                                                                        jmp   .Lx754_46
.Lx754_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx754_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx754_53
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
                                                                                        jmp   .Lx754_51
.Lx754_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx754_47
                        cmp              eax, 104
                                                                                        je    .Lx754_47
                        cmp              eax, 72
                                                                                        jne   .Lx754_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx754_47
                                                                                        jmp   .Lx754_48
.Lx754_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx754_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx754_53
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
                                                                                        jmp   .Lx754_51
.Lx754_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx754_49
                        cmp              edx, 80
                                                                                        je    .Lx754_53
                                                                                        jmp   .Lx754_52
.Lx754_49:
                        cmp              edx, 80
                                                                                        je    .Lx754_52
                        cmp              ecx, 5
                                                                                        je    .Lx754_53
                        cmp              edx, 5
                                                                                        je    .Lx754_53
                        cmp              ecx, 3
                                                                                        jne   .Lx754_50
                        cmp              edx, 3
                                                                                        jne   .Lx754_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx754_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx754_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx754_51
                                                                                        jmp   .Lx754_52
.Lx754_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx754_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx754_53
.Lx754_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx754_54
.Lx754_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx754_54
.Lx754_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx754_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n684_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n683_call_builtin_prolog_β:
                                                                                        jmp   n684_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n684_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n685_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n686_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n686_call_builtin_prolog_α:
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
.Lx759_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx759_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx759_41
                        cmp              esi, 1
                                                                                        jne   .Lx759_55
                        mov              r8, rax
                                                                                        jmp   .Lx759_40
.Lx759_55:
                        cmp              esi, 2
                                                                                        jne   .Lx759_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx759_41
                        mov              r8, rax
                                                                                        jmp   .Lx759_40
.Lx759_56:
                        cmp              eax, 72
                                                                                        jne   .Lx759_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx759_41
                        cmp              rax, r8
                                                                                        je    .Lx759_41
                        mov              r8, rax
                                                                                        jmp   .Lx759_40
.Lx759_41:
                        lea              r9, [rbp + 464]
.Lx759_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx759_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx759_43
                        cmp              esi, 1
                                                                                        jne   .Lx759_57
                        mov              r9, rax
                                                                                        jmp   .Lx759_42
.Lx759_57:
                        cmp              esi, 2
                                                                                        jne   .Lx759_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx759_43
                        mov              r9, rax
                                                                                        jmp   .Lx759_42
.Lx759_58:
                        cmp              eax, 72
                                                                                        jne   .Lx759_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx759_43
                        cmp              rax, r9
                                                                                        je    .Lx759_43
                        mov              r9, rax
                                                                                        jmp   .Lx759_42
.Lx759_43:
                        cmp              r8, r9
                                                                                        je    .Lx759_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx759_44
                        cmp              eax, 104
                                                                                        je    .Lx759_44
                        cmp              eax, 72
                                                                                        jne   .Lx759_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx759_44
                                                                                        jmp   .Lx759_45
.Lx759_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx759_53
                        cmp              eax, 104
                                                                                        je    .Lx759_53
                        cmp              eax, 72
                                                                                        jne   .Lx759_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx759_53
                                                                                        jmp   .Lx759_46
.Lx759_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx759_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx759_53
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
                                                                                        jmp   .Lx759_51
.Lx759_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx759_47
                        cmp              eax, 104
                                                                                        je    .Lx759_47
                        cmp              eax, 72
                                                                                        jne   .Lx759_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx759_47
                                                                                        jmp   .Lx759_48
.Lx759_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx759_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx759_53
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
                                                                                        jmp   .Lx759_51
.Lx759_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx759_49
                        cmp              edx, 80
                                                                                        je    .Lx759_53
                                                                                        jmp   .Lx759_52
.Lx759_49:
                        cmp              edx, 80
                                                                                        je    .Lx759_52
                        cmp              ecx, 5
                                                                                        je    .Lx759_53
                        cmp              edx, 5
                                                                                        je    .Lx759_53
                        cmp              ecx, 3
                                                                                        jne   .Lx759_50
                        cmp              edx, 3
                                                                                        jne   .Lx759_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx759_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx759_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx759_51
                                                                                        jmp   .Lx759_52
.Lx759_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx759_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx759_53
.Lx759_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx759_54
.Lx759_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx759_54
.Lx759_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx759_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n687_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n686_call_builtin_prolog_β:
                                                                                        jmp   n687_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n687_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n688_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n689_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n689_call_builtin_prolog_α:
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
.Lx764_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx764_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_41
                        cmp              esi, 1
                                                                                        jne   .Lx764_55
                        mov              r8, rax
                                                                                        jmp   .Lx764_40
.Lx764_55:
                        cmp              esi, 2
                                                                                        jne   .Lx764_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx764_41
                        mov              r8, rax
                                                                                        jmp   .Lx764_40
.Lx764_56:
                        cmp              eax, 72
                                                                                        jne   .Lx764_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_41
                        cmp              rax, r8
                                                                                        je    .Lx764_41
                        mov              r8, rax
                                                                                        jmp   .Lx764_40
.Lx764_41:
                        lea              r9, [rbp + 384]
.Lx764_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx764_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_43
                        cmp              esi, 1
                                                                                        jne   .Lx764_57
                        mov              r9, rax
                                                                                        jmp   .Lx764_42
.Lx764_57:
                        cmp              esi, 2
                                                                                        jne   .Lx764_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx764_43
                        mov              r9, rax
                                                                                        jmp   .Lx764_42
.Lx764_58:
                        cmp              eax, 72
                                                                                        jne   .Lx764_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_43
                        cmp              rax, r9
                                                                                        je    .Lx764_43
                        mov              r9, rax
                                                                                        jmp   .Lx764_42
.Lx764_43:
                        cmp              r8, r9
                                                                                        je    .Lx764_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx764_44
                        cmp              eax, 104
                                                                                        je    .Lx764_44
                        cmp              eax, 72
                                                                                        jne   .Lx764_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx764_44
                                                                                        jmp   .Lx764_45
.Lx764_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx764_53
                        cmp              eax, 104
                                                                                        je    .Lx764_53
                        cmp              eax, 72
                                                                                        jne   .Lx764_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx764_53
                                                                                        jmp   .Lx764_46
.Lx764_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx764_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx764_53
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
                                                                                        jmp   .Lx764_51
.Lx764_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx764_47
                        cmp              eax, 104
                                                                                        je    .Lx764_47
                        cmp              eax, 72
                                                                                        jne   .Lx764_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx764_47
                                                                                        jmp   .Lx764_48
.Lx764_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx764_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx764_53
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
                                                                                        jmp   .Lx764_51
.Lx764_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx764_49
                        cmp              edx, 80
                                                                                        je    .Lx764_53
                                                                                        jmp   .Lx764_52
.Lx764_49:
                        cmp              edx, 80
                                                                                        je    .Lx764_52
                        cmp              ecx, 5
                                                                                        je    .Lx764_53
                        cmp              edx, 5
                                                                                        je    .Lx764_53
                        cmp              ecx, 3
                                                                                        jne   .Lx764_50
                        cmp              edx, 3
                                                                                        jne   .Lx764_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx764_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx764_51
                                                                                        jmp   .Lx764_52
.Lx764_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx764_53
.Lx764_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx764_54
.Lx764_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx764_54
.Lx764_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx764_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n690_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n689_call_builtin_prolog_β:
                                                                                        jmp   n690_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n690_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n691_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n692_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n692_call_builtin_prolog_α:
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
.Lx769_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx769_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_41
                        cmp              esi, 1
                                                                                        jne   .Lx769_55
                        mov              r8, rax
                                                                                        jmp   .Lx769_40
.Lx769_55:
                        cmp              esi, 2
                                                                                        jne   .Lx769_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_41
                        mov              r8, rax
                                                                                        jmp   .Lx769_40
.Lx769_56:
                        cmp              eax, 72
                                                                                        jne   .Lx769_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_41
                        cmp              rax, r8
                                                                                        je    .Lx769_41
                        mov              r8, rax
                                                                                        jmp   .Lx769_40
.Lx769_41:
                        lea              r9, [rbp + 304]
.Lx769_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx769_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_43
                        cmp              esi, 1
                                                                                        jne   .Lx769_57
                        mov              r9, rax
                                                                                        jmp   .Lx769_42
.Lx769_57:
                        cmp              esi, 2
                                                                                        jne   .Lx769_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_43
                        mov              r9, rax
                                                                                        jmp   .Lx769_42
.Lx769_58:
                        cmp              eax, 72
                                                                                        jne   .Lx769_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_43
                        cmp              rax, r9
                                                                                        je    .Lx769_43
                        mov              r9, rax
                                                                                        jmp   .Lx769_42
.Lx769_43:
                        cmp              r8, r9
                                                                                        je    .Lx769_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_44
                        cmp              eax, 104
                                                                                        je    .Lx769_44
                        cmp              eax, 72
                                                                                        jne   .Lx769_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx769_44
                                                                                        jmp   .Lx769_45
.Lx769_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_53
                        cmp              eax, 104
                                                                                        je    .Lx769_53
                        cmp              eax, 72
                                                                                        jne   .Lx769_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx769_53
                                                                                        jmp   .Lx769_46
.Lx769_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx769_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx769_53
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
                                                                                        jmp   .Lx769_51
.Lx769_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_47
                        cmp              eax, 104
                                                                                        je    .Lx769_47
                        cmp              eax, 72
                                                                                        jne   .Lx769_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx769_47
                                                                                        jmp   .Lx769_48
.Lx769_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx769_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx769_53
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
                                                                                        jmp   .Lx769_51
.Lx769_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx769_49
                        cmp              edx, 80
                                                                                        je    .Lx769_53
                                                                                        jmp   .Lx769_52
.Lx769_49:
                        cmp              edx, 80
                                                                                        je    .Lx769_52
                        cmp              ecx, 5
                                                                                        je    .Lx769_53
                        cmp              edx, 5
                                                                                        je    .Lx769_53
                        cmp              ecx, 3
                                                                                        jne   .Lx769_50
                        cmp              edx, 3
                                                                                        jne   .Lx769_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx769_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx769_51
                                                                                        jmp   .Lx769_52
.Lx769_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx769_53
.Lx769_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx769_54
.Lx769_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx769_54
.Lx769_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx769_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n693_var_ref_α
                                                                                        jmp   n698_call_builtin_prolog_α
n692_call_builtin_prolog_β:
                                                                                        jmp   n693_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n694_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n694_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n695_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n695_call_builtin_prolog_α:
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
.Lx774_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx774_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx774_41
                        cmp              esi, 1
                                                                                        jne   .Lx774_55
                        mov              r8, rax
                                                                                        jmp   .Lx774_40
.Lx774_55:
                        cmp              esi, 2
                                                                                        jne   .Lx774_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx774_41
                        mov              r8, rax
                                                                                        jmp   .Lx774_40
.Lx774_56:
                        cmp              eax, 72
                                                                                        jne   .Lx774_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx774_41
                        cmp              rax, r8
                                                                                        je    .Lx774_41
                        mov              r8, rax
                                                                                        jmp   .Lx774_40
.Lx774_41:
                        lea              r9, [rbp + 224]
.Lx774_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx774_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx774_43
                        cmp              esi, 1
                                                                                        jne   .Lx774_57
                        mov              r9, rax
                                                                                        jmp   .Lx774_42
.Lx774_57:
                        cmp              esi, 2
                                                                                        jne   .Lx774_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx774_43
                        mov              r9, rax
                                                                                        jmp   .Lx774_42
.Lx774_58:
                        cmp              eax, 72
                                                                                        jne   .Lx774_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx774_43
                        cmp              rax, r9
                                                                                        je    .Lx774_43
                        mov              r9, rax
                                                                                        jmp   .Lx774_42
.Lx774_43:
                        cmp              r8, r9
                                                                                        je    .Lx774_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx774_44
                        cmp              eax, 104
                                                                                        je    .Lx774_44
                        cmp              eax, 72
                                                                                        jne   .Lx774_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx774_44
                                                                                        jmp   .Lx774_45
.Lx774_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx774_53
                        cmp              eax, 104
                                                                                        je    .Lx774_53
                        cmp              eax, 72
                                                                                        jne   .Lx774_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx774_53
                                                                                        jmp   .Lx774_46
.Lx774_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx774_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx774_53
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
                                                                                        jmp   .Lx774_51
.Lx774_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx774_47
                        cmp              eax, 104
                                                                                        je    .Lx774_47
                        cmp              eax, 72
                                                                                        jne   .Lx774_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx774_47
                                                                                        jmp   .Lx774_48
.Lx774_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx774_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx774_53
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
                                                                                        jmp   .Lx774_51
.Lx774_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx774_49
                        cmp              edx, 80
                                                                                        je    .Lx774_53
                                                                                        jmp   .Lx774_52
.Lx774_49:
                        cmp              edx, 80
                                                                                        je    .Lx774_52
                        cmp              ecx, 5
                                                                                        je    .Lx774_53
                        cmp              edx, 5
                                                                                        je    .Lx774_53
                        cmp              ecx, 3
                                                                                        jne   .Lx774_50
                        cmp              edx, 3
                                                                                        jne   .Lx774_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx774_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx774_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx774_51
                                                                                        jmp   .Lx774_52
.Lx774_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx774_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx774_53
.Lx774_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx774_54
.Lx774_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx774_54
.Lx774_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx774_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n696_move_label_α
                                                                                        jmp   n698_call_builtin_prolog_α
n695_call_builtin_prolog_β:
                                                                                        jmp   n696_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n696_move_label_α:
                        lea              rax, [rip + n698_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   proc_all_diff5$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n697_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n697_disjunction_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n698_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx779_240
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
.Lx779_240:
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
n698_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_β:
                                                                                        jmp   n697_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clerk_cashier_opp$2F5_α
proc_clerk_cashier_opp$2F5_α:
proc_clerk_cashier_opp$2F5_α_body:
                        lea              rax, [rip + n815_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
#-----------------------------------------------------------------------------------------------------------------------
n780_call_builtin_prolog_α:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx817_101
.Lx817_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx817_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx817_240
                        add              rsp, 976
                                                                                        jmp   proc_clerk_cashier_opp$2F5_ω
.Lx817_240:
                                                                                        jmp   n781_var_ref_α
n780_call_builtin_prolog_β:
                        add              rsp, 976
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
                                                                                        jmp   n783_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx822_44
                        cmp              eax, 72
                                                                                        jne   .Lx822_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx822_44
                                                                                        jmp   .Lx822_45
.Lx822_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx822_53
                        cmp              eax, 104
                                                                                        je    .Lx822_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx822_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx822_49
                        cmp              edx, 80
                                                                                        je    .Lx822_53
                                                                                        jmp   .Lx822_52
.Lx822_49:
                        cmp              edx, 80
                                                                                        je    .Lx822_52
                        cmp              ecx, 5
                                                                                        je    .Lx822_53
                        cmp              edx, 5
                                                                                        je    .Lx822_53
                        cmp              ecx, 3
                                                                                        jne   .Lx822_50
                        cmp              edx, 3
                                                                                        jne   .Lx822_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx822_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx822_54
.Lx822_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx822_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx822_240
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx822_240:
                                                                                        jmp   n784_var_ref_α
n783_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n784_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n785_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n786_call_builtin_prolog_α:
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
.Lx827_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx827_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx827_41
                        cmp              esi, 1
                                                                                        jne   .Lx827_55
                        mov              r8, rax
                                                                                        jmp   .Lx827_40
.Lx827_55:
                        cmp              esi, 2
                                                                                        jne   .Lx827_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx827_41
                        mov              r8, rax
                                                                                        jmp   .Lx827_40
.Lx827_56:
                        cmp              eax, 72
                                                                                        jne   .Lx827_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx827_41
                        cmp              rax, r8
                                                                                        je    .Lx827_41
                        mov              r8, rax
                                                                                        jmp   .Lx827_40
.Lx827_41:
                        lea              r9, [rbp + 1056]
.Lx827_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx827_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx827_43
                        cmp              esi, 1
                                                                                        jne   .Lx827_57
                        mov              r9, rax
                                                                                        jmp   .Lx827_42
.Lx827_57:
                        cmp              esi, 2
                                                                                        jne   .Lx827_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx827_43
                        mov              r9, rax
                                                                                        jmp   .Lx827_42
.Lx827_58:
                        cmp              eax, 72
                                                                                        jne   .Lx827_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx827_43
                        cmp              rax, r9
                                                                                        je    .Lx827_43
                        mov              r9, rax
                                                                                        jmp   .Lx827_42
.Lx827_43:
                        cmp              r8, r9
                                                                                        je    .Lx827_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx827_44
                        cmp              eax, 104
                                                                                        je    .Lx827_44
                        cmp              eax, 72
                                                                                        jne   .Lx827_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx827_44
                                                                                        jmp   .Lx827_45
.Lx827_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx827_53
                        cmp              eax, 104
                                                                                        je    .Lx827_53
                        cmp              eax, 72
                                                                                        jne   .Lx827_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx827_53
                                                                                        jmp   .Lx827_46
.Lx827_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx827_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx827_53
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
                                                                                        jmp   .Lx827_51
.Lx827_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx827_47
                        cmp              eax, 104
                                                                                        je    .Lx827_47
                        cmp              eax, 72
                                                                                        jne   .Lx827_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx827_47
                                                                                        jmp   .Lx827_48
.Lx827_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx827_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx827_53
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
                                                                                        jmp   .Lx827_51
.Lx827_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx827_49
                        cmp              edx, 80
                                                                                        je    .Lx827_53
                                                                                        jmp   .Lx827_52
.Lx827_49:
                        cmp              edx, 80
                                                                                        je    .Lx827_52
                        cmp              ecx, 5
                                                                                        je    .Lx827_53
                        cmp              edx, 5
                                                                                        je    .Lx827_53
                        cmp              ecx, 3
                                                                                        jne   .Lx827_50
                        cmp              edx, 3
                                                                                        jne   .Lx827_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx827_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx827_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx827_51
                                                                                        jmp   .Lx827_52
.Lx827_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx827_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx827_53
.Lx827_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx827_54
.Lx827_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx827_54
.Lx827_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx827_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx827_240
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx827_240:
                                                                                        jmp   n787_var_ref_α
n786_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n788_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n789_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n789_call_builtin_prolog_α:
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
.Lx832_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx832_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_41
                        cmp              esi, 1
                                                                                        jne   .Lx832_55
                        mov              r8, rax
                                                                                        jmp   .Lx832_40
.Lx832_55:
                        cmp              esi, 2
                                                                                        jne   .Lx832_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx832_41
                        mov              r8, rax
                                                                                        jmp   .Lx832_40
.Lx832_56:
                        cmp              eax, 72
                                                                                        jne   .Lx832_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_41
                        cmp              rax, r8
                                                                                        je    .Lx832_41
                        mov              r8, rax
                                                                                        jmp   .Lx832_40
.Lx832_41:
                        lea              r9, [rbp + 976]
.Lx832_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx832_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_43
                        cmp              esi, 1
                                                                                        jne   .Lx832_57
                        mov              r9, rax
                                                                                        jmp   .Lx832_42
.Lx832_57:
                        cmp              esi, 2
                                                                                        jne   .Lx832_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx832_43
                        mov              r9, rax
                                                                                        jmp   .Lx832_42
.Lx832_58:
                        cmp              eax, 72
                                                                                        jne   .Lx832_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_43
                        cmp              rax, r9
                                                                                        je    .Lx832_43
                        mov              r9, rax
                                                                                        jmp   .Lx832_42
.Lx832_43:
                        cmp              r8, r9
                                                                                        je    .Lx832_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx832_44
                        cmp              eax, 104
                                                                                        je    .Lx832_44
                        cmp              eax, 72
                                                                                        jne   .Lx832_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx832_44
                                                                                        jmp   .Lx832_45
.Lx832_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx832_53
                        cmp              eax, 104
                                                                                        je    .Lx832_53
                        cmp              eax, 72
                                                                                        jne   .Lx832_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx832_53
                                                                                        jmp   .Lx832_46
.Lx832_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx832_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx832_53
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
                                                                                        jmp   .Lx832_51
.Lx832_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx832_47
                        cmp              eax, 104
                                                                                        je    .Lx832_47
                        cmp              eax, 72
                                                                                        jne   .Lx832_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx832_47
                                                                                        jmp   .Lx832_48
.Lx832_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx832_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx832_53
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
                                                                                        jmp   .Lx832_51
.Lx832_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx832_49
                        cmp              edx, 80
                                                                                        je    .Lx832_53
                                                                                        jmp   .Lx832_52
.Lx832_49:
                        cmp              edx, 80
                                                                                        je    .Lx832_52
                        cmp              ecx, 5
                                                                                        je    .Lx832_53
                        cmp              edx, 5
                                                                                        je    .Lx832_53
                        cmp              ecx, 3
                                                                                        jne   .Lx832_50
                        cmp              edx, 3
                                                                                        jne   .Lx832_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx832_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx832_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx832_51
                                                                                        jmp   .Lx832_52
.Lx832_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx832_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx832_53
.Lx832_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx832_54
.Lx832_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx832_54
.Lx832_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx832_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx832_240
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx832_240:
                                                                                        jmp   n790_var_ref_α
n789_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n791_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n791_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n792_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_prolog_α:
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
.Lx837_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx837_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx837_41
                        cmp              esi, 1
                                                                                        jne   .Lx837_55
                        mov              r8, rax
                                                                                        jmp   .Lx837_40
.Lx837_55:
                        cmp              esi, 2
                                                                                        jne   .Lx837_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx837_41
                        mov              r8, rax
                                                                                        jmp   .Lx837_40
.Lx837_56:
                        cmp              eax, 72
                                                                                        jne   .Lx837_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx837_41
                        cmp              rax, r8
                                                                                        je    .Lx837_41
                        mov              r8, rax
                                                                                        jmp   .Lx837_40
.Lx837_41:
                        lea              r9, [rbp + 896]
.Lx837_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx837_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx837_43
                        cmp              esi, 1
                                                                                        jne   .Lx837_57
                        mov              r9, rax
                                                                                        jmp   .Lx837_42
.Lx837_57:
                        cmp              esi, 2
                                                                                        jne   .Lx837_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx837_43
                        mov              r9, rax
                                                                                        jmp   .Lx837_42
.Lx837_58:
                        cmp              eax, 72
                                                                                        jne   .Lx837_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx837_43
                        cmp              rax, r9
                                                                                        je    .Lx837_43
                        mov              r9, rax
                                                                                        jmp   .Lx837_42
.Lx837_43:
                        cmp              r8, r9
                                                                                        je    .Lx837_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx837_44
                        cmp              eax, 104
                                                                                        je    .Lx837_44
                        cmp              eax, 72
                                                                                        jne   .Lx837_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx837_44
                                                                                        jmp   .Lx837_45
.Lx837_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx837_53
                        cmp              eax, 104
                                                                                        je    .Lx837_53
                        cmp              eax, 72
                                                                                        jne   .Lx837_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx837_53
                                                                                        jmp   .Lx837_46
.Lx837_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx837_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx837_53
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
                                                                                        jmp   .Lx837_51
.Lx837_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx837_47
                        cmp              eax, 104
                                                                                        je    .Lx837_47
                        cmp              eax, 72
                                                                                        jne   .Lx837_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx837_47
                                                                                        jmp   .Lx837_48
.Lx837_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx837_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx837_53
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
                                                                                        jmp   .Lx837_51
.Lx837_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx837_49
                        cmp              edx, 80
                                                                                        je    .Lx837_53
                                                                                        jmp   .Lx837_52
.Lx837_49:
                        cmp              edx, 80
                                                                                        je    .Lx837_52
                        cmp              ecx, 5
                                                                                        je    .Lx837_53
                        cmp              edx, 5
                                                                                        je    .Lx837_53
                        cmp              ecx, 3
                                                                                        jne   .Lx837_50
                        cmp              edx, 3
                                                                                        jne   .Lx837_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx837_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx837_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx837_51
                                                                                        jmp   .Lx837_52
.Lx837_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx837_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx837_53
.Lx837_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx837_54
.Lx837_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx837_54
.Lx837_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx837_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx837_240
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx837_240:
                                                                                        jmp   n793_var_ref_α
n792_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n794_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n794_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n795_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
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
.Lx842_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx842_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx842_41
                        cmp              esi, 1
                                                                                        jne   .Lx842_55
                        mov              r8, rax
                                                                                        jmp   .Lx842_40
.Lx842_55:
                        cmp              esi, 2
                                                                                        jne   .Lx842_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx842_41
                        mov              r8, rax
                                                                                        jmp   .Lx842_40
.Lx842_56:
                        cmp              eax, 72
                                                                                        jne   .Lx842_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx842_41
                        cmp              rax, r8
                                                                                        je    .Lx842_41
                        mov              r8, rax
                                                                                        jmp   .Lx842_40
.Lx842_41:
                        lea              r9, [rbp + 816]
.Lx842_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx842_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx842_43
                        cmp              esi, 1
                                                                                        jne   .Lx842_57
                        mov              r9, rax
                                                                                        jmp   .Lx842_42
.Lx842_57:
                        cmp              esi, 2
                                                                                        jne   .Lx842_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx842_43
                        mov              r9, rax
                                                                                        jmp   .Lx842_42
.Lx842_58:
                        cmp              eax, 72
                                                                                        jne   .Lx842_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx842_43
                        cmp              rax, r9
                                                                                        je    .Lx842_43
                        mov              r9, rax
                                                                                        jmp   .Lx842_42
.Lx842_43:
                        cmp              r8, r9
                                                                                        je    .Lx842_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx842_44
                        cmp              eax, 104
                                                                                        je    .Lx842_44
                        cmp              eax, 72
                                                                                        jne   .Lx842_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx842_44
                                                                                        jmp   .Lx842_45
.Lx842_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx842_53
                        cmp              eax, 104
                                                                                        je    .Lx842_53
                        cmp              eax, 72
                                                                                        jne   .Lx842_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx842_53
                                                                                        jmp   .Lx842_46
.Lx842_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx842_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx842_53
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
                                                                                        jmp   .Lx842_51
.Lx842_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx842_47
                        cmp              eax, 104
                                                                                        je    .Lx842_47
                        cmp              eax, 72
                                                                                        jne   .Lx842_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx842_47
                                                                                        jmp   .Lx842_48
.Lx842_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx842_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx842_53
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
                                                                                        jmp   .Lx842_51
.Lx842_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx842_49
                        cmp              edx, 80
                                                                                        je    .Lx842_53
                                                                                        jmp   .Lx842_52
.Lx842_49:
                        cmp              edx, 80
                                                                                        je    .Lx842_52
                        cmp              ecx, 5
                                                                                        je    .Lx842_53
                        cmp              edx, 5
                                                                                        je    .Lx842_53
                        cmp              ecx, 3
                                                                                        jne   .Lx842_50
                        cmp              edx, 3
                                                                                        jne   .Lx842_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx842_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx842_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx842_51
                                                                                        jmp   .Lx842_52
.Lx842_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx842_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx842_53
.Lx842_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx842_54
.Lx842_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx842_54
.Lx842_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx842_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx842_240
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx842_240:
                                                                                        jmp   n796_lit_string_α
n795_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 5
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n797_var_ref_α
.Lx843_0:
                        .quad            .Lx843_0_s
.Lx843_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n798_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n799_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n800_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n800_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n801_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n802_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n803_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n803_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx857_21
.Lx857_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 672]                     # v
                        mov              rdx, qword ptr [rbp + 680]                     # v
                        call             rt_arg_stage@PLT
.Lx857_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx857_23
.Lx857_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 688]                     # v
                        mov              rdx, qword ptr [rbp + 696]                     # v
                        call             rt_arg_stage@PLT
.Lx857_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_24
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx857_25
.Lx857_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 704]                     # v
                        mov              rdx, qword ptr [rbp + 712]                     # v
                        call             rt_arg_stage@PLT
.Lx857_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_26
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx857_27
.Lx857_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 720]                     # v
                        mov              rdx, qword ptr [rbp + 728]                     # v
                        call             rt_arg_stage@PLT
.Lx857_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_28
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx857_29
.Lx857_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 736]                     # v
                        mov              rdx, qword ptr [rbp + 744]                     # v
                        call             rt_arg_stage@PLT
.Lx857_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_30
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx857_31
.Lx857_30:
                        mov              edi, 5                                         # idx
                        mov              rsi, qword ptr [rbp + 752]                     # v
                        mov              rdx, qword ptr [rbp + 760]                     # v
                        call             rt_arg_stage@PLT
.Lx857_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_32
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx857_33
.Lx857_32:
                        mov              edi, 6                                         # idx
                        mov              rsi, qword ptr [rbp + 768]                     # v
                        mov              rdx, qword ptr [rbp + 776]                     # v
                        call             rt_arg_stage@PLT
.Lx857_33:
                        mov              edi, 2                                         # idx
                        mov              esi, 7                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx857_1
                        lea              rcx, [rip + .Lx857_3]
                        lea              rdx, [rip + .Lx857_4]
                                                                                        jmp   rax
.Lx857_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx857_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx857_2
.Lx857_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx857_2
.Lx857_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx857_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx857_2
.Lx857_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx857_2
.Lx857_1:
                        call             rt_faildescr@PLT
.Lx857_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx857_240
                        add              rsp, 976
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx857_240:
                                                                                        jmp   n804_lit_string_α
n803_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 7
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n805_var_ref_α
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n805_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n806_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n806_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n807_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n808_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n808_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n809_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n809_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n810_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n810_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n811_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n811_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx872_21
.Lx872_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 400]                     # v
                        mov              rdx, qword ptr [rbp + 408]                     # v
                        call             rt_arg_stage@PLT
.Lx872_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx872_23
.Lx872_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 416]                     # v
                        mov              rdx, qword ptr [rbp + 424]                     # v
                        call             rt_arg_stage@PLT
.Lx872_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_24
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx872_25
.Lx872_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 432]                     # v
                        mov              rdx, qword ptr [rbp + 440]                     # v
                        call             rt_arg_stage@PLT
.Lx872_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_26
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx872_27
.Lx872_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx872_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_28
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx872_29
.Lx872_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx872_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_30
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx872_31
.Lx872_30:
                        mov              edi, 5                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx872_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_32
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx872_33
.Lx872_32:
                        mov              edi, 6                                         # idx
                        mov              rsi, qword ptr [rbp + 496]                     # v
                        mov              rdx, qword ptr [rbp + 504]                     # v
                        call             rt_arg_stage@PLT
.Lx872_33:
                        mov              edi, 2                                         # idx
                        mov              esi, 7                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx872_1
                        lea              rcx, [rip + .Lx872_3]
                        lea              rdx, [rip + .Lx872_4]
                                                                                        jmp   rax
.Lx872_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx872_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx872_2
.Lx872_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx872_2
.Lx872_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx872_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx872_2
.Lx872_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx872_2
.Lx872_1:
                        call             rt_faildescr@PLT
.Lx872_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n803_call_proc_staged_β
                                                                                        jmp   n812_var_ref_α
n811_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "holder_sex/7"
#-----------------------------------------------------------------------------------------------------------------------
n812_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n813_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n813_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n814_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n814_call_builtin_prolog_α:
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
.Lx877_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx877_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx877_41
                        cmp              esi, 1
                                                                                        jne   .Lx877_55
                        mov              r8, rax
                                                                                        jmp   .Lx877_40
.Lx877_55:
                        cmp              esi, 2
                                                                                        jne   .Lx877_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx877_41
                        mov              r8, rax
                                                                                        jmp   .Lx877_40
.Lx877_56:
                        cmp              eax, 72
                                                                                        jne   .Lx877_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx877_41
                        cmp              rax, r8
                                                                                        je    .Lx877_41
                        mov              r8, rax
                                                                                        jmp   .Lx877_40
.Lx877_41:
                        lea              r9, [rbp + 192]
.Lx877_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx877_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx877_43
                        cmp              esi, 1
                                                                                        jne   .Lx877_57
                        mov              r9, rax
                                                                                        jmp   .Lx877_42
.Lx877_57:
                        cmp              esi, 2
                                                                                        jne   .Lx877_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx877_43
                        mov              r9, rax
                                                                                        jmp   .Lx877_42
.Lx877_58:
                        cmp              eax, 72
                                                                                        jne   .Lx877_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx877_43
                        cmp              rax, r9
                                                                                        je    .Lx877_43
                        mov              r9, rax
                                                                                        jmp   .Lx877_42
.Lx877_43:
                        cmp              r8, r9
                                                                                        je    .Lx877_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx877_44
                        cmp              eax, 104
                                                                                        je    .Lx877_44
                        cmp              eax, 72
                                                                                        jne   .Lx877_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx877_44
                                                                                        jmp   .Lx877_45
.Lx877_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx877_53
                        cmp              eax, 104
                                                                                        je    .Lx877_53
                        cmp              eax, 72
                                                                                        jne   .Lx877_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx877_53
                                                                                        jmp   .Lx877_46
.Lx877_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx877_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx877_53
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
                                                                                        jmp   .Lx877_51
.Lx877_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx877_47
                        cmp              eax, 104
                                                                                        je    .Lx877_47
                        cmp              eax, 72
                                                                                        jne   .Lx877_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx877_47
                                                                                        jmp   .Lx877_48
.Lx877_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx877_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx877_53
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
                                                                                        jmp   .Lx877_51
.Lx877_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx877_49
                        cmp              edx, 80
                                                                                        je    .Lx877_53
                                                                                        jmp   .Lx877_52
.Lx877_49:
                        cmp              edx, 80
                                                                                        je    .Lx877_52
                        cmp              ecx, 5
                                                                                        je    .Lx877_53
                        cmp              edx, 5
                                                                                        je    .Lx877_53
                        cmp              ecx, 3
                                                                                        jne   .Lx877_50
                        cmp              edx, 3
                                                                                        jne   .Lx877_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx877_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx877_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx877_51
                                                                                        jmp   .Lx877_52
.Lx877_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx877_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx877_53
.Lx877_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx877_54
.Lx877_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx877_54
.Lx877_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx877_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx877_240
                        add              rsp, 976
                                                                                        jmp   n815_suspend_α
.Lx877_240:
                                                                                        jmp   n811_call_proc_staged_β
n814_call_builtin_prolog_β:
                        add              rsp, 976
                                                                                        jmp   n815_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n815_suspend_α:
                        lea              rax, [rip + n815_suspend_β]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_clerk_cashier_opp$2F5_γ
n815_suspend_β:
                                                                                        jmp   n811_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n816_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    proc_clerk_cashier_opp$2F5_ω
                                                                                        jmp   proc_clerk_cashier_opp$2F5_ω
n816_call_builtin_prolog_β:
                                                                                        jmp   proc_clerk_cashier_opp$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1184]
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_clerk_cashier_opp$2F5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n881_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx886_101
.Lx886_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx886_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx886_240
                        add              rsp, 32
                                                                                        jmp   main_ω
.Lx886_240:
                                                                                        jmp   n882_call_proc_staged_α
n881_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n882_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 4                                         # idx
                        mov              esi, 0                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx888_240
                        add              rsp, 32
                                                                                        jmp   n885_call_builtin_prolog_α
.Lx888_240:
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
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n884_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n884_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n885_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n885_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n884_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
